# cordova-plugin-tesseract-ocr

OCR plugin for Apache Cordova using tesseract 

This plugin uses [Tesseract-OCR-iOS](https://github.com/gali8/Tesseract-OCR-iOS)

Usage
=====

```
Tesseract.recognise(imagePath,successCallback,errorCallback);

function nativePluginResultHandler (result) {
    console.log(result);
}
        
function nativePluginErrorHandler (error) {
    console.log(error);
}
```