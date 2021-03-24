const fetch = require("node-fetch");
const FormData = require("form-data");
const crypto = require("crypto");
const { createReadStream, ReadStream, readFileSync } = require("fs");
const md5sum = crypto.createHash("md5");

const {
  argv: [, , target],
} = require("process");

console.log("Uploading Firmware");
console.log("");

const firmwarePath = `../build/esp8266.esp8266.${target}/gbs-control.ino.bin`;
const s = ReadStream(firmwarePath);
s.on("data", (data) => {
  md5sum.update(data);
});

s.on("end", () => {
  doUpload(md5sum.digest("hex"));
});

const doUpload = (md5Result) => {
  const form = new FormData();
  form.append("MD5", md5Result);
  form.append("firmware", readFileSync(firmwarePath), "firmware");

  fetch("http://192.168.4.1/update/", {
    method: "POST",
    body: form,

    headers: {
      accept: "*/*",
      "accept-language":
        "en-US,en;q=0.9,es-ES;q=0.8,es;q=0.7,ca-ES;q=0.6,ca;q=0.5,de;q=0.4,fr;q=0.3",
      "cache-control": "no-cache",
      pragma: "no-cache",
    },
    referrer: "http://192.168.4.1/",
    referrerPolicy: "strict-origin-when-cross-origin",
    method: "POST",
    mode: "cors",
    credentials: "omit",
  })
    .then((res) => res.text())
    .then((json) => console.log(json));
};
