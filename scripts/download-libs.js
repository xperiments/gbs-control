const https = require("https");
const fs = require("fs");

function get(url, file, resolve, reject) {
  https.get(url, (res) => {
    if (res.statusCode === 301 || res.statusCode === 302) {
      get(res.headers.location, file, resolve, reject);
      return;
    }
    res.pipe(file);
    resolve();
  });
}

function download(filename, url) {
  return new Promise((resolve, reject) => {
    const file = fs.createWriteStream(filename);
    get(url, file, resolve, reject);
  });
}

download(
  "ESPAsyncTCP.zip",
  "https://github.com/me-no-dev/ESPAsyncTCP/archive/master.zip"
).then(() => {
  download(
    "ESPAsyncWebServer.zip",
    "https://github.com/me-no-dev/ESPAsyncWebServer/archive/master.zip"
  );
});
