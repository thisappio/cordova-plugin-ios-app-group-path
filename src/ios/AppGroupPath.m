#import <Cordova/CDV.h>

@interface AppGroupPath : CDVPlugin

- (void)getPath:(CDVInvokedUrlCommand*)command;

@end

@implementation AppGroupPath

- (void)getPath:(CDVInvokedUrlCommand*)command {
    NSString* appGroup = [command.arguments objectAtIndex:0];
    NSString* appGroupPath = [[[NSFileManager defaultManager] containerURLForSecurityApplicationGroupIdentifier:appGroup] absoluteString];

    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:appGroupPath];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end