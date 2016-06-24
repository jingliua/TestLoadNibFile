//
//  CViewController.m
//  TestInitMethods
//
//  Created by liujing on 6/23/16.
//  Copyright © 2016 liujing. All rights reserved.
//

#import "CViewController.h"

@interface CViewController ()

@end

@implementation CViewController

//- (void)loadView {
//    
//     NSLog(@"C-------loadView----------called");
//}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        //        [self initData];
        NSLog(@"C-------initWithCoder----------called");
    }
    return self;
}

- (void)awakeFromNib
{
    NSLog(@"C-------awakeFromNib----------called");
    //    [self initView];
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        NSLog(@"C-------initWithNibName----------called");
        self.view.backgroundColor = [UIColor blueColor];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
