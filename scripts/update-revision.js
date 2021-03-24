const fs = require("fs");
const { version } = require("../version.json");
let [major, minor, patch, revision] = version
  .split(".")
  .map((n) => parseInt(n, 10));

fs.writeFileSync(
  "../version.json",
  JSON.stringify({ version: `${major}.${minor}.${patch}.${++revision}` })
);

const arduinoCode = fs
  .readFileSync("../gbs-control.ino", "utf8")
  .replace(/\#define GBS_VERSION ".+?"/g, `#define GBS_VERSION "${version}"`);
fs.writeFileSync("../gbs-control.ino", arduinoCode, "utf8");
