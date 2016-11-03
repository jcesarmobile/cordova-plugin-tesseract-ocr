var exec = require("cordova/exec");

var Tesseract = function () {};

Tesseract.prototype.recognise = function (path, onSuccess, onFail) {
  exec(onSuccess, onFail, "Tesseract", "recognise", [path]);
};

module.exports = new Tesseract();