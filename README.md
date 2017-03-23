# cordova-plugin-tesseract-ocr

OCR plugin for Apache Cordova using tesseract 

This plugin uses [Tesseract-OCR-iOS](https://github.com/gali8/Tesseract-OCR-iOS)

Installation
============

	cordova plugin add cordova-plugin-tesseract-ocr

Usage
=====

```
Tesseract.recognise(imagePath,successCallback,errorCallback);

function successCallback (result) {
    console.log(result);
}
        
function errorCallback (error) {
    console.log(error);
}
```
