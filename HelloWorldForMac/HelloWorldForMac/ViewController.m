//
//  ViewController.m
//  HelloWorldForMac
//
//  Created by 马海平 on 2017/8/15.
//  Copyright © 2017年 马海平. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
    
}
- (IBAction)showAlert:(NSButton *)sender {
    NSAlert * alert = [[NSAlert alloc]init];
    alert.messageText = @"This is messageText";
    alert.alertStyle = NSAlertStyleInformational;
    [alert addButtonWithTitle:@"continue"];
    [alert addButtonWithTitle:@"cancle"];
    [alert setInformativeText:@"NSWarningAlertStyle \r Do you want to continue with delete of selected records"];
    [alert beginSheetModalForWindow:[self.view window] completionHandler:^(NSModalResponse returnCode) {
        NSLog(@"xxx");
        if (returnCode == NSModalResponseOK){
            NSLog(@"(returnCode == NSOKButton)");
        }else if (returnCode == NSModalResponseCancel){
            NSLog(@"(returnCode == NSCancelButton)");
        }else if(returnCode == NSAlertFirstButtonReturn){
            NSLog(@"if (returnCode == NSAlertFirstButtonReturn)");
        }else if (returnCode == NSAlertSecondButtonReturn){
            NSLog(@"else if (returnCode == NSAlertSecondButtonReturn)");
        }else if (returnCode == NSAlertThirdButtonReturn){
            NSLog(@"else if (returnCode == NSAlertThirdButtonReturn)");
        }else{
            NSLog(@"All Other return code %ld",(long)returnCode);
        }
    }];
    
}
- (IBAction)showDifferentAlert:(NSButton *)sender {
    NSAlert * alert = [[NSAlert alloc]init];
    alert.messageText = @"This is messageText";
    alert.alertStyle = NSAlertStyleInformational;
    [alert addButtonWithTitle:@"Button One"]; //will generate a return code of 1000
    [alert addButtonWithTitle:@"Button Two"]; //will generate a return code of 1001
    [alert addButtonWithTitle:@"Button Three"]; //will generate a return code of 1002
    [alert addButtonWithTitle:@"Button Four"]; //will generate a return code of 1003
    [alert addButtonWithTitle:@"Button Five"]; //will generate a return code of 1004
    [alert setInformativeText:@"NSWarningAlertStyle \r Do you want to continue with delete of selected records"];
    [alert beginSheetModalForWindow:[self.view window] completionHandler:^(NSModalResponse returnCode) {
        if (returnCode == NSAlertFirstButtonReturn) {
            NSLog(@"(returnCode == NSAlertFirstButtonReturn)");
        }else if(returnCode == NSAlertSecondButtonReturn){
            NSLog(@"(returnCode == NSAlertSecondButtonReturn)");
        }else if(returnCode == NSAlertThirdButtonReturn){
            NSLog(@"(returnCode == NSAlertThirdButtonReturn)");
        }else if (returnCode == NSAlertThirdButtonReturn){
            NSLog(@"All Other return code %ld",(long)returnCode);
        }else{
            NSLog(@"All Other return code %ld",(long)returnCode);
        }
    }];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
