//
//  LkButton.m
//  CustomButton
//
//  Created by Mike on 2016/12/16.
//  Copyright © 2016年 LK. All rights reserved.
//

#import "LkButton.h"

@implementation LkButton

/*
 重写下面两个方法，返回正确的布局即可。
 
 - (CGRect)titleRectForContentRect:(CGRect)contentRect;
 - (CGRect)imageRectForContentRect:(CGRect)contentRect;

 */

- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    if (!CGRectIsEmpty(self.titleRect) && !CGRectEqualToRect(self.titleRect, CGRectZero)) {
        return self.titleRect;
    }
    return [super titleRectForContentRect:contentRect];
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    if (!CGRectIsEmpty(self.imageRect) && !CGRectEqualToRect(self.imageRect, CGRectZero)) {
        return self.imageRect;
    }
    return [super titleRectForContentRect:contentRect];

}
@end
