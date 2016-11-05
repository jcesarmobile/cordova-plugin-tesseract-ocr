//
//  Tesseract.m
//
//  Created by Julio Cesar Sanchez Hernandez on 3/11/16.
//
//

#import "Tesseract.h"

@implementation Tesseract

- (void) recognise:(CDVInvokedUrlCommand *)command {
    
    NSString * image_url = [command argumentAtIndex:0];
    
    NSURL *url = [NSURL URLWithString:image_url];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *image = [[UIImage alloc] initWithData:data];
    
    G8RecognitionOperation *operation = [[G8RecognitionOperation alloc] initWithLanguage:@"eng"];
    
    operation.tesseract.image = [image g8_blackAndWhite];
    
    operation.recognitionCompleteBlock = ^(G8Tesseract *recognizedTesseract) {
        CDVPluginResult * result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:[recognizedTesseract recognizedText]];
        [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
    };

    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    [queue addOperation:operation];
}

@end