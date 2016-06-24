//
//  CView.m
//  TestInitMethods
//
//  Created by liujing on 6/23/16.
//  Copyright © 2016 liujing. All rights reserved.
//

#import "CView.h"

@implementation CView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        NSLog(@"CView-------initWithFrame----------called");
//        self.frame = CGRectMake(0, 0, 80, 20);
        self.frame = CGRectMake(0, 0, 40, 40);
        self.backgroundColor = [UIColor greenColor];
        UILabel * clableview = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 20, 20)];
        clableview.text = @"c商品";
        clableview.backgroundColor = [UIColor purpleColor];
        //        self.clableview.frame = CGRectMake(0, 0, 40, 30);//当不用autolayout的时候代码设置self.bviewLabel.frame是生效的
        [self addSubview:clableview];

      }
    return self;
}

- (instancetype)init
{
    if (self = [super init]) {
        NSLog(@"CView-------init----------called");
//      self.frame = CGRectMake(10, 10, 20, 80);
    }
    return self;
}

-(void)layoutSubviews
{
    NSLog(@"CView-------layoutSubviews----------called");
   
   }

@end
