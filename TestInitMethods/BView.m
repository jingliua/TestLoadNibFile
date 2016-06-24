//
//  BView.m
//  TestInitMethods
//
//  Created by liujing on 6/23/16.
//  Copyright © 2016 liujing. All rights reserved.
//

#import "BView.h"

@implementation BView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        NSLog(@"BView-------initWithCoder----------called");
//        self.backgroundColor = [UIColor greenColor];
    }
    return self;
}

-(void)awakeFromNib
{
     NSLog(@"BView-------awakeFromNib----------called");
    
    self.bviewLabel.text = @"b商品";
    self.bviewLabel.backgroundColor = [UIColor purpleColor];
    self.bviewLabel.frame = CGRectMake(5, 10, 50, 30);//当不用autolayout的时候代码设置self.bviewLabel.frame是生效的
    
    self.backgroundColor = [UIColor greenColor];
//    self.frame = CGRectMake(10, 10, 300, 200);
}

-(void)layoutSubviews
{
    NSLog(@"BView-------layoutSubviews----------called");
     self.frame = CGRectMake(10, 10, 300, 200);//此句必须写这个方法里
}
@end
