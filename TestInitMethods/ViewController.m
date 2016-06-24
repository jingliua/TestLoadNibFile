//
//  ViewController.m
//  TestInitMethods
//
//  Created by liujing on 6/23/16.
//  Copyright © 2016 liujing. All rights reserved.
//

#import "ViewController.h"

#import "AViewController.h"
#import "BViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonTaped:(id)sender {
   
    AViewController *avc = [[AViewController alloc] init];//调用init方法会先调initwithnibname，viewdidload，然后调init方法
    [self presentViewController:avc animated:YES completion:nil];
    
   
//    NSArray *bvcArr = [[NSBundle mainBundle] loadNibNamed:@"BViewController"
//                                       owner:nil options:nil];
//    for (id item in bvcArr) {
//        if ([item isKindOfClass:[BViewController class]]) {
//            BViewController *bvc = (BViewController *)item;
//             [self presentViewController:bvc animated:YES completion:nil];
//        }
//    }
    
}

@end
