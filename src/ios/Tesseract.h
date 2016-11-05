//
//  Tesseract.h
//
//  Created by Julio Cesar Sanchez Hernandez on 3/11/16.
//
//

#import <Cordova/CDVPlugin.h>
#import <TesseractOCR/TesseractOCR.h>

@interface Tesseract : CDVPlugin

- (void) recognise:(CDVInvokedUrlCommand*)command;


@end