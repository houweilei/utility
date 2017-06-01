//
//  HLUtilityClass.m
//  AnimationDemo
//
//  Created by 侯卫磊 on 2017/6/1.
//  Copyright © 2017年 houweilei. All rights reserved.
//

#import "HLUtilityClass.h"

@implementation HLUtilityClass


+ (UIImage *)imageForScreenShotWithSize:(CGSize)size onView:(UIView *)view {
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    [view.layer renderInContext:context];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+ (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0, 0, 1, 1);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef contenxt = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(contenxt, [color CGColor]);
    CGContextFillRect(contenxt, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+ (UIImage *)gifImageWithImageNames:(NSArray *)imageNames duration:(NSTimeInterval)duration {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (NSString *imageName in imageNames) {
        UIImage *image = [UIImage imageNamed:imageName];
        
        [array addObject:image];
    }
    
    return [UIImage animatedImageWithImages:array duration:duration];
}

+ (void)rotateDeviceToOrientation:(UIInterfaceOrientation)orientation {
    NSNumber *number = [NSNumber numberWithInt:orientation];
    [[UIDevice currentDevice] setValue:number forKey:@"orientation"];
}

@end
