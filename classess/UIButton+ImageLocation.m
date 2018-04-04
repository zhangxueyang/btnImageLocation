//
//  UIButton+ImageLocation.m
//  TestRelease
//
//  Created by Gary on 2018/3/26.
//  Copyright © 2018年 Gary. All rights reserved.
//

#import "UIButton+ImageLocation.h"

@implementation UIButton (ImageLocation)

- (void)setImageLocation:(ImageLocation)location spacing:(CGFloat)spacing titleFont:(UIFont *)titleFont {
    
    CGFloat imageWith = self.imageView.image.size.width;
    CGFloat imageHeight = self.imageView.image.size.height;
    
    CGRect titleSize = [self.titleLabel.text boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : titleFont} context:nil];
    
    CGFloat titleWidth = titleSize.size.width;
    CGFloat titleHeight = titleSize.size.height;

    //image中心移动的x距离
    CGFloat imageOffsetX = (imageWith + titleWidth) / 2 - imageWith / 2;
    //image中心移动的y距离
    CGFloat imageOffsetY = imageHeight / 2 + spacing / 2;
    //title中心移动的x距离
    CGFloat titleOffsetX = (imageWith + titleWidth / 2) - (imageWith + titleWidth) / 2;
    //title中心移动的y距离
    CGFloat labelOffsetY = titleHeight / 2 + spacing / 2;
    
    switch (location) {
        case ImageLocationLeft:{
            self.imageEdgeInsets = UIEdgeInsetsMake(0, -spacing/2, 0, spacing/2);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, spacing/2, 0, -spacing/2);
            break;
        }
        case ImageLocationRight:{
            self.imageEdgeInsets = UIEdgeInsetsMake(0, titleWidth + spacing/2, 0, -(titleWidth + spacing/2));
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -(imageHeight + spacing/2), 0, imageHeight + spacing/2);
            break;
        }
        case ImageLocationTop:{
            self.imageEdgeInsets = UIEdgeInsetsMake(-imageOffsetY, imageOffsetX, imageOffsetY, -imageOffsetX);
            self.titleEdgeInsets = UIEdgeInsetsMake(labelOffsetY, -titleOffsetX, -labelOffsetY, titleOffsetX);
            break;
        }
        case ImageLocationBottom:{
            self.imageEdgeInsets = UIEdgeInsetsMake(imageOffsetY, imageOffsetX, -imageOffsetY, -imageOffsetX);
            self.titleEdgeInsets = UIEdgeInsetsMake(-labelOffsetY, -titleOffsetX, labelOffsetY, titleOffsetX);
            break;
        }
        default:{break;}
    }
}

- (void)setImageLocation:(ImageLocation)location spacing:(CGFloat)spacing offSet:(ImageOffSetDirection)offSetDirection offSetVar:(CGFloat)offSetVar titleFont:(UIFont *)titleFont{
    
    CGFloat imageWith = self.imageView.image.size.width;
    CGFloat imageHeight = self.imageView.image.size.height;
    
    CGRect titleSize = [self.titleLabel.text boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : titleFont} context:nil];
    
    CGFloat titleWidth = titleSize.size.width;
    CGFloat titleHeight = titleSize.size.height;

    //image中心移动的x距离
    CGFloat imageOffsetX = (imageWith + titleWidth) / 2 - imageWith / 2;
    //image中心移动的y距离
    CGFloat imageOffsetY = imageHeight / 2 + spacing / 2;
    //title中心移动的x距离
    CGFloat titleOffsetX = (imageWith + titleWidth / 2) - (imageWith + titleWidth) / 2;
    //title中心移动的y距离
    CGFloat labelOffsetY = titleHeight / 2 + spacing / 2;

    switch (location) {
        case ImageLocationLeft:{
            self.imageEdgeInsets = UIEdgeInsetsMake(0, -spacing/2, 0, spacing/2);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, spacing/2, 0, -spacing/2);
            break;
        }
        case ImageLocationRight:{
            self.imageEdgeInsets = UIEdgeInsetsMake(0, titleWidth + spacing/2, 0, -(titleWidth + spacing/2));
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -(imageHeight + spacing/2), 0, imageHeight + spacing/2);
            break;
        }
        case ImageLocationTop:{
            self.imageEdgeInsets = UIEdgeInsetsMake(-imageOffsetY, imageOffsetX, imageOffsetY, -imageOffsetX);
            self.titleEdgeInsets = UIEdgeInsetsMake(labelOffsetY, -titleOffsetX, -labelOffsetY, titleOffsetX);
            break;
        }
        case ImageLocationBottom:{
            self.imageEdgeInsets = UIEdgeInsetsMake(imageOffsetY, imageOffsetX, -imageOffsetY, -imageOffsetX);
            self.titleEdgeInsets = UIEdgeInsetsMake(-labelOffsetY, -titleOffsetX, labelOffsetY, titleOffsetX);
            break;
        }

        default:{break;}
    }

    CGFloat imageTop = self.imageEdgeInsets.top;
    CGFloat imageLeft = self.imageEdgeInsets.left;
    CGFloat imageBottom = self.imageEdgeInsets.bottom;
    CGFloat imageRight = self.imageEdgeInsets.right;

    CGFloat titleTop = self.titleEdgeInsets.top;
    CGFloat titleLeft = self.titleEdgeInsets.left;
    CGFloat titleBottom = self.titleEdgeInsets.bottom;
    CGFloat titleRight = self.titleEdgeInsets.right;
    
    switch (offSetDirection){
        case ImageOffSetDirectionLeft:{
            self.imageEdgeInsets = UIEdgeInsetsMake(imageTop, imageLeft - offSetVar, imageBottom, imageRight + offSetVar);
            self.titleEdgeInsets = UIEdgeInsetsMake(titleTop, titleLeft - offSetVar, titleBottom, titleRight + offSetVar);
            break;
        }
        case ImageOffSetDirectionRight:{
            self.imageEdgeInsets = UIEdgeInsetsMake(imageTop, imageLeft + offSetVar, imageBottom, imageRight - offSetVar);
            self.titleEdgeInsets = UIEdgeInsetsMake(titleTop, titleLeft + offSetVar, titleBottom, titleRight - offSetVar);
            break;
        }
        case ImageOffSetDirectionTop:{
            self.imageEdgeInsets = UIEdgeInsetsMake(imageTop - offSetVar , imageLeft, imageBottom + offSetVar, imageRight);
            self.titleEdgeInsets = UIEdgeInsetsMake(titleTop - offSetVar , titleLeft, titleBottom + offSetVar, titleRight);
            break;
        }
        case ImageOffSetDirectionBottom:{
            self.imageEdgeInsets = UIEdgeInsetsMake(imageTop + offSetVar, imageLeft, imageBottom - offSetVar, imageRight);
            self.titleEdgeInsets = UIEdgeInsetsMake(titleTop + offSetVar, titleLeft, titleBottom - offSetVar, titleRight);
            break;
        }
        default:{break;}
    }

}
@end
