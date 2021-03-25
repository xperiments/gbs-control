const fs = require("fs");
const AdmZip = require("adm-zip");
const { version } = require("../version.json");

const [major, minor, patch, revision] = version
  .split(".")
  .map((n) => parseInt(n, 10));
const buildPath = "../build";
const binPath = "../compiler/";
const fwTargets = ["d1_mini", "nodemcuv2"];
const osTargets = ["win", "osx", "linux"];

const createDir = (dir) => {
  if (!fs.existsSync(dir)) {
    fs.mkdirSync(dir);
  }
};

const removeDir = function (path) {
  if (fs.existsSync(path)) {
    const files = fs.readdirSync(path);

    if (files.length > 0) {
      files.forEach(function (filename) {
        if (fs.statSync(path + "/" + filename).isDirectory()) {
          removeDir(path + "/" + filename);
        } else {
          fs.unlinkSync(path + "/" + filename);
        }
      });
      fs.rmdirSync(path);
    } else {
      fs.rmdirSync(path);
    }
  } else {
    console.log(`Directory ${path} not found.`);
  }
};

const installScript = {
  win: `%~dp0arduino-cli.{bits}.exe config init
%~dp0arduino-cli.{bits}.exe core update-index --additional-urls https://arduino.esp8266.com/stable/package_esp8266com_index.json
%~dp0arduino-cli.{bits}.exe core install esp8266:esp8266 --additional-urls https://arduino.esp8266.com/stable/package_esp8266com_index.json`,
  osx: `#!/bin/bash
cd -- "$(dirname "$BASH_SOURCE")"
echo "  ___  ____  ____        ___ "
echo " / __)(  _ \\/ ___) ___  / __)"
echo "( (_ \\ ) _ (\\___ \\(___)( (__ "
echo " \\___/(____/(____/      \\___)"
echo ""
echo "Installing Base System"
echo ""
./arduino-cli config init
./arduino-cli core update-index --additional-urls https://arduino.esp8266.com/stable/package_esp8266com_index.json
./arduino-cli core install esp8266:esp8266 --additional-urls https://arduino.esp8266.com/stable/package_esp8266com_index.json`,
  linux: `#!/bin/bash
./arduino-cli-{bits} config init
./arduino-cli-{bits} core update-index --additional-urls https://arduino.esp8266.com/stable/package_esp8266com_index.json
./arduino-cli-{bits} core install esp8266:esp8266 --additional-urls https://arduino.esp8266.com/stable/package_esp8266com_index.json`,
};

const installTargetScript = {
  win: `%~dp0arduino-cli.{bits}.exe board list

@echo off
set /p port="Enter COM portNumber from the listed below: "
@echo on

%~dp0arduino-cli.{bits}.exe upload --input-file %~dp0./fw/flash.{fwTarget}.bin --port COM%port% --fqbn esp8266:esp8266:d1_mini:xtal=160,vt=flash,exception=legacy,ssl=all,eesz=4M1M,ip=lm2f,dbg=Disabled,lvl=None____,wipe=none,baud=921600

pause`,
  osx: `#!/bin/bash
cd -- "$(dirname "$BASH_SOURCE")"
echo ""
echo "  ___  ____  ____        ___ "
echo " / __)(  _ \/ ___) ___  / __)"
echo "( (_ \ ) _ (\___ \(___)( (__ "
echo " \___/(____/(____/      \___)"
echo ""
echo "Listing avaliable Board Ports"
echo ""

./arduino-cli board list --format json | sed -n 's/.*"address": "\\(.*\\)",/\\1/p' > boards.json
boardPorts=($(awk -F= '{print $1}' boards.json))
boardPortsCount=\${#boardPorts[@]}

for ((i=0; i<$boardPortsCount; i++)); do
    echo $i")" \${boardPorts[$i]}
done

let "boardPortsCount=boardPortsCount-1"

echo ""
echo ""
echo "Enter port number (0-$boardPortsCount):"
read port
echo ""
echo ""
echo "Flashing firmware on port \${boardPorts[$port]}"
echo ""
echo "Please WAIT!!!"
echo ""
./arduino-cli upload --input-file ./fw/flash.{fwTarget}.bin --port \${boardPorts[$port]} --fqbn esp8266:esp8266:d1_mini:xtal=160,vt=flash,exception=legacy,ssl=all,eesz=4M1M,ip=lm2f,dbg=Disabled,lvl=None____,wipe=none,baud=921600
echo ""
echo "Press any key to continue..."
read key
`,
  linux: `#!/bin/bash
echo ""
echo "  ___  ____  ____        ___ "
echo " / __)(  _ \/ ___) ___  / __)"
echo "( (_ \ ) _ (\___ \(___)( (__ "
echo " \___/(____/(____/      \___)"
echo ""
echo "Listing avaliable Board Ports"
echo ""

./arduino-cli-{bits} board list --format json | sed -n 's/.*"address": "\\(.*\\)",/\\1/p' > boards.json
boardPorts=($(awk -F= '{print $1}' boards.json))
boardPortsCount=\${#boardPorts[@]}

for ((i=0; i<$boardPortsCount; i++)); do
    echo $i")" \${boardPorts[$i]}
done

let "boardPortsCount=boardPortsCount-1"

echo ""
echo ""
echo "Enter port number (0-$boardPortsCount):"
read port
echo ""
echo ""
echo "Flashing firmware on port \${boardPorts[$port]}"
echo ""
echo "Please WAIT!!!"
echo ""

./arduino-cli-{bits} upload --input-file ./fw/flash.{fwTarget}.bin --port $port --fqbn esp8266:esp8266:d1_mini:xtal=160,vt=flash,exception=legacy,ssl=all,eesz=4M1M,ip=lm2f,dbg=Disabled,lvl=None____,wipe=none,baud=921600

echo ""
echo "Press any key to continue..."
read key
`,
};

const GBSHeader = Buffer.from([71, 66, 83, 67]);

const generateZips = (index) => {
  const zip = new AdmZip();
  zip.addLocalFolder(`./package/${osTargets[index]}`);
  zip.writeZip(
    `../release-files/gbs-control.v${major}.${minor}.${patch}-${osTargets[index]}.zip`
  );
  index++;
  if (osTargets[index]) {
    generateZips(index);
  } else {
    removeDir("./package");
  }
};

const main = () => {
  removeDir("../release-files");
  createDir("./package");
  createDir("../release-files");
  osTargets.forEach((target) => {
    const script = installScript[target];
    const targetScript = installTargetScript[target];
    let targetPath;
    switch (target) {
      case "win":
        targetPath = `./package/${target}`;
        createDir(targetPath);
        createDir(`${targetPath}/fw`);
        fs.writeFileSync(
          `${targetPath}/install.32bits.bat`,
          script.replace(/{bits}/g, "32"),
          "utf8"
        );
        fs.writeFileSync(
          `${targetPath}/install.64bits.bat`,
          script.replace(/{bits}/g, "64"),
          "utf8"
        );
        fwTargets.forEach((fwTarget) => {
          fs.writeFileSync(
            `${targetPath}/install.${fwTarget}.32bits.bat`,
            targetScript
              .replace("{fwTarget}", fwTarget)
              .replace(/{bits}/g, "32"),
            "utf8"
          );
          fs.writeFileSync(
            `${targetPath}/install.${fwTarget}.64bits.bat`,
            targetScript
              .replace("{fwTarget}", fwTarget)
              .replace(/{bits}/g, "64"),
            "utf8"
          );
          fs.copyFileSync(
            `${buildPath}/esp8266.esp8266.${fwTarget}/gbs-control.ino.bin`,
            `${targetPath}/fw/flash.${fwTarget}.bin`
          );
          const otaBytes = fs.readFileSync(
            `${buildPath}/esp8266.esp8266.${fwTarget}/gbs-control.ino.bin`
          );

          const otaBytesOutput = Buffer.concat([
            GBSHeader,
            Buffer.from([fwTarget.length]),
            Buffer.from(fwTarget),
            Buffer.from(
              new Uint16Array([major, minor, patch, revision]).buffer
            ),
            otaBytes,
          ]);

          fs.writeFileSync(
            `${targetPath}/fw/flash.${fwTarget}.ota`,
            otaBytesOutput
          );
        });
        fs.copyFileSync(
          `${binPath}/win/arduino-cli.32.exe`,
          `${targetPath}/arduino-cli.32.exe`
        );
        fs.copyFileSync(
          `${binPath}/win/arduino-cli.64.exe`,
          `${targetPath}/arduino-cli.64.exe`
        );
        break;
      case "linux":
        targetPath = `./package/${target}`;
        createDir(targetPath);
        createDir(`${targetPath}/fw`);
        fs.writeFileSync(
          `${targetPath}/install.32bits.sh`,
          script.replace(/{bits}/g, "32"),
          "utf8"
        );
        fs.writeFileSync(
          `${targetPath}/install.64bits.sh`,
          script.replace(/{bits}/g, "64"),
          "utf8"
        );
        fs.chmodSync(`${targetPath}/install.32bits.sh`, 0o755);
        fs.chmodSync(`${targetPath}/install.64bits.sh`, 0o755);

        fwTargets.forEach((fwTarget) => {
          fs.writeFileSync(
            `${targetPath}/install.${fwTarget}.32bits.sh`,
            targetScript
              .replace("{fwTarget}", fwTarget)
              .replace(/{bits}/g, "32"),
            "utf8"
          );
          fs.writeFileSync(
            `${targetPath}/install.${fwTarget}.64bits.sh`,
            targetScript
              .replace("{fwTarget}", fwTarget)
              .replace(/{bits}/g, "64"),
            "utf8"
          );
          fs.chmodSync(`${targetPath}/install.${fwTarget}.32bits.sh`, 0o755);
          fs.chmodSync(`${targetPath}/install.${fwTarget}.64bits.sh`, 0o755);

          fs.copyFileSync(
            `${buildPath}/esp8266.esp8266.${fwTarget}/gbs-control.ino.bin`,
            `${targetPath}/fw/flash.${fwTarget}.bin`
          );

          const otaBytes = fs.readFileSync(
            `${buildPath}/esp8266.esp8266.${fwTarget}/gbs-control.ino.bin`
          );

          const otaBytesOutput = Buffer.concat([
            GBSHeader,
            Buffer.from([fwTarget.length]),
            Buffer.from(fwTarget),
            Buffer.from(
              new Uint16Array([major, minor, patch, revision]).buffer
            ),
            otaBytes,
          ]);

          fs.writeFileSync(
            `${targetPath}/fw/flash.${fwTarget}.ota`,
            otaBytesOutput
          );
        });
        fs.copyFileSync(
          `${binPath}/linux/arduino-cli-32`,
          `${targetPath}/arduino-cli-32`
        );
        fs.copyFileSync(
          `${binPath}/linux/arduino-cli-64`,
          `${targetPath}/arduino-cli-64`
        );
        break;
      case "osx":
        targetPath = `./package/${target}`;
        createDir(targetPath);
        createDir(`${targetPath}/fw`);
        fs.writeFileSync(`${targetPath}/install.sh`, script, "utf8");
        fs.chmodSync(`${targetPath}/install.sh`, 0o755);
        fwTargets.forEach((fwTarget) => {
          fs.writeFileSync(
            `${targetPath}/install.${fwTarget}.sh`,
            targetScript.replace("{fwTarget}", fwTarget),
            "utf8"
          );
          fs.chmodSync(`${targetPath}/install.${fwTarget}.sh`, 0o755);
          fs.copyFileSync(
            `${buildPath}/esp8266.esp8266.${fwTarget}/gbs-control.ino.bin`,
            `${targetPath}/fw/flash.${fwTarget}.bin`
          );

          const otaBytes = fs.readFileSync(
            `${buildPath}/esp8266.esp8266.${fwTarget}/gbs-control.ino.bin`
          );

          const otaBytesOutput = Buffer.concat([
            GBSHeader,
            Buffer.from([fwTarget.length]),
            Buffer.from(fwTarget),
            Buffer.from(
              new Uint16Array([major, minor, patch, revision]).buffer
            ),
            otaBytes,
          ]);

          fs.writeFileSync(
            `${targetPath}/fw/flash.${fwTarget}.ota`,
            otaBytesOutput
          );
        });
        fs.copyFileSync(
          `${binPath}/osx/arduino-cli`,
          `${targetPath}/arduino-cli`
        );
        break;
    }
  });
  generateZips(0);
};

main();
