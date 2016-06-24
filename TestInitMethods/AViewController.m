//
//  AViewController.m
//  TestInitMethods
//
//  Created by liujing on 6/23/16.
//  Copyright © 2016 liujing. All rights reserved.
//

#import "AViewController.h"

#import "BView.h"
#import "CView.h"

@interface AViewController ()

@end

@implementation AViewController

//loadview 的重写导致了死循环？？？？？？？？？？？？？？？？？？？？？？？？？？

//- (void)loadView {
//    
//    NSLog(@"A-------loadView----------called");
//}


-(instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"A-------init----------called");
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        NSLog(@"A-------initWithNibName----------called");
        self.view.backgroundColor = [UIColor redColor];
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
     NSLog(@"A-------viewdidload----------called");
  
    NSArray *bvarr = [[NSBundle mainBundle] loadNibNamed:@"BView"
                                   owner:nil options:nil];
    BView *bv = [bvarr objectAtIndex:0];
//   [bv setFrame: CGRectMake(10, 10, 100, 100)];//此句话无效
    [self.view addSubview:bv];
    
//    CView *cv = [[CView alloc]init];
//    //    CView *cv = [[CView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
////    cv.frame = CGRectMake(0, 0, 100, 100);
//    [self.view addSubview:cv];
    
    // Do any additional setup after loading the view from its nib.
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
