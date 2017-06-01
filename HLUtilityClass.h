//
//  HLUtilityClass.h
//  AnimationDemo
//
//  Created by 侯卫磊 on 2017/6/1.
//  Copyright © 2017年 houweilei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HLUtilityClass : UIView


/**
 获取截图

 @param size 截取图片的大小
 @param view 需要截取的视图

 @return 截取之后的图片
 */
+ (UIImage *)imageForScreenShotWithSize:(CGSize)size onView:(UIView *)view;


/**
 获取指定颜色的图片

 @param color 颜色

 @return 图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color;


/**
 获取gif图片

 @param imageNames 图片名称数组
 @param duration   git周期

 @return gif图片
 */
+ (UIImage *)gifImageWithImageNames:(NSArray *)imageNames duration:(NSTimeInterval)duration;


/**
  旋转设备到指定方向（工程中需要开启方向旋转，否则不会起作用）

 @param orientation 方向
 */
+ (void)rotateDeviceToOrientation:(UIInterfaceOrientation)orientation;

@end
