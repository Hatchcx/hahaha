//
//  YPTNavigationController.m
//  药品通
//
//  Created by 黄启明 on 2017/5/11.
//  Copyright © 2017年 黄启明. All rights reserved.
//

#import "YPTNavigationController.h"
#import "UIColor+Addition.h"

@interface YPTNavigationController ()

@end

@implementation YPTNavigationController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 1.设置导航栏上的标题文字颜色
    self.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor], NSFontAttributeName : [UIFont systemFontOfSize:16]};
    
    // 2.以下两行代码可以把导航栏下面的阴影线去掉
    [self.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    [self.navigationBar setShadowImage:[UIImage new]];
    
    self.navigationBar.barTintColor = [UIColor colorWithHex:0x2e90d4];
    
    //self.navigationBarHidden = YES;
    
    // 关闭半透明效果
    self.navigationBar.translucent = NO;
}
@end
