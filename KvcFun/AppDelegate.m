//
//  AppDelegate.m
//  KvcFun
//
//  Created by jinren on 13/11/2016.
//  Copyright © 2016 jinren. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (id)init
{
    self = [super init];
    if (self) {
        [self setValue:[NSNumber numberWithInt:5] forKey:@"fido"];
        NSNumber *n = [self valueForKey:@"fido"];
        NSLog(@"inti fido: %@", n);
    }
    return self;
}
//
//- (int)fido
//{
//    NSLog(@"fido is returning: %d", fido);
//    return fido;
//}
//
//- (void)setFido:(int)x
//{
//    NSLog(@"set Fido: %d", x);
//    fido = x;
//}

- (IBAction)increatFido:(id)sender
{
    [self willChangeValueForKey:@"fido"];
    _fido++;
    [self didChangeValueForKey:@"fido"];
    //option 2
    //self.fido++;
    NSLog(@"self.fido %d", self.fido);
    
}
@end
