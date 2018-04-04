//
//  UIButton+ImageLocation.h
//  TestRelease
//
//  Created by Gary on 2018/3/26.
//  Copyright © 2018年 Gary. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (ImageLocation)

typedef NS_ENUM(NSInteger, ImageLocation) {
    ImageLocationLeft = 0,              //图片在文字的左边，默认
    ImageLocationRight,             //图片在文字的右边
    ImageLocationTop,               //图片在文字的上边
    ImageLocationBottom,            //图片在文字的下边
};

typedef NS_ENUM(NSInteger, ImageOffSetDirection) {
    ImageOffSetDirectionLeft = 0,   //图片文字整体向左边偏移，默认
    ImageOffSetDirectionRight,      //图片文字整体向右边偏移
    ImageOffSetDirectionTop,        //图片文字整体向上边偏移
    ImageOffSetDirectionBottom,     //图片文字整体向下边偏移
};
/**
 *  根据图片的位置和图片文字的间距来重新设置button的image和title的排列
 *   如果图片和文字大于button的大小，文字和图片显示的地方就会超出按钮
 *
 *  @param location 图片位于文字的哪个方位
 *  @param spacing  图片和文字的间距离
 *  @param titleFont button 的文字font
 
 */
- (void)setImageLocation:(ImageLocation)location
                 spacing:(CGFloat)spacing
               titleFont:(UIFont *)titleFont;

/**
 *  根据图片的位置和图片文字的间距来重新设置button的image和title的排列，根据offset来确定整体要偏移的方向以及偏移的数值
 *   如果图片和文字大于button的大小，文字和图片显示的地方就会超出按钮
 *
 *  @param location         图片在文字的哪个方向
 *  @param spacing         图片和文字的间隔
 *  @param offSetDirection 哪个方向偏移
 *  @param offSetVar       偏移多少
 *  @param titleFont button 的文字font
 */
- (void)setImageLocation:(ImageLocation)location
                 spacing:(CGFloat)spacing
                  offSet:(ImageOffSetDirection)offSetDirection
               offSetVar:(CGFloat)offSetVar
               titleFont:(UIFont *)titleFont;
@end
