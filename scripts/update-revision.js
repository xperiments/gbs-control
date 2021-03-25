const fs = require("fs");
const { version } = require("../version.json");
let [major, minor, patch, revision] = version
  .split(".")
  .map((n) => parseInt(n, 10));

const {
  argv: [, , target],
} = require("process");

fs.writeFileSync(
  "../version.json",
  JSON.stringify({ version: `${major}.${minor}.${patch}.${++revision}` })
);

const arduinoCode = fs
  .readFileSync("../gbs-control.ino", "utf8")
  .replace(
    /String gbsVersionString = ".+?"/g,
    `String gbsVersionString = "${version}.${target}"`
  );
fs.writeFileSync("../gbs-control.ino", arduinoCode, "utf8");
const gbsVersionString = "0.0.0";
