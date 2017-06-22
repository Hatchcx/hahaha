//
//  YPTTabBarController.m
//  药品通
//
//  Created by 黄启明 on 2017/5/11.
//  Copyright © 2017年 黄启明. All rights reserved.
//

#import "YPTTabBarController.h"
#import "YPTNavigationController.h"
#import "UIColor+Addition.h"

@interface YPTTabBarController ()

@end

@implementation YPTTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1.添加四个子控制器
    UIViewController *vc1 = [self addChildViewControllerWithClassName:@"YPTHomeViewController" andTabBarItemWithTitle:@"首页" andImageNameNormal:@"tabbar_homepage_normal" andImageNameSelected:@"tabbar_homepage_selected"];
    UIViewController *vc2 = [self addChildViewControllerWithClassName:@"YPTClassificationViewController" andTabBarItemWithTitle:@"分类" andImageNameNormal:@"tabbar_classify_normal" andImageNameSelected:@"tabbar_classify_selected"];
    UIViewController *vc3 = [self addChildViewControllerWithClassName:@"YPTNearbyViewController" andTabBarItemWithTitle:@"附近" andImageNameNormal:@"tabbar_vicinity_normal" andImageNameSelected:@"tabbar_vicinity_selected"];
    UIViewController *vc4 = [self addChildViewControllerWithClassName:@"YPTMineViewController" andTabBarItemWithTitle:@"我" andImageNameNormal:@"tabbar_mine_normal" andImageNameSelected:@"tabbar_mine_selected"];
    
    // 给标签控制器添加四个子控制器
    self.viewControllers = @[vc1, vc2, vc3, vc4];
    
    // 设置标签栏的主题色
    self.tabBar.tintColor = [UIColor colorWithHex:0x2e90d4];
}

- (UIViewController *)addChildViewControllerWithClassName:(NSString *)className andTabBarItemWithTitle:(NSString *)title andImageNameNormal:(NSString *)imageNameNormal andImageNameSelected:(NSString* )imageNameSelected {
    
    // 1.把字符串形式的类的名称转换成类
    Class class = NSClassFromString(className);
    
    // 创建控制器
    UIViewController *vc = [[class alloc] init];
    
    // 设置标签栏上的文字及图片
    vc.tabBarItem.title = title;
    
    vc.tabBarItem.image = [UIImage imageNamed:imageNameNormal];
    
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:imageNameSelected] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    
    // 在子控制和标签控制器之间嵌套导航控制器
    YPTNavigationController *nav = [[YPTNavigationController alloc] initWithRootViewController:vc];
    
    // 设置导航条的标题
    //vc.navigationItem.title = title;
    
    vc.view.backgroundColor = [UIColor whiteColor];
    
    return nav;
}
@end
