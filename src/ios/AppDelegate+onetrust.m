#import "AppDelegate.h"
#import "MainViewController.h"
#import <OTPublishersHeadlessSDK/OTPublishersHeadlessSDK.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions
{
    self.viewController = [[MainViewController alloc] init];
    [OTPublishersHeadlessSDK.shared setUiConfigurator:self]; //set UIConfigurator to Self
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}


- (BOOL)shouldUseCustomUIConfig { //conform to shouldUseCustomUIConfig
    return true;
}

- (NSString *)customUIConfigFilePath{ //conform to filepath protocol method
    NSString * configFile = [[NSBundle mainBundle] pathForResource:@"OTSDK-UIConfig-iOS" ofType:@"plist"]; //find path for config file
    return configFile;
}

@end