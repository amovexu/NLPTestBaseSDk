//
//  UIView+AmoveExtension.h
//  AmoveBase
//
//  Created by Amove on 2022/5/10.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (AmoveExtension)

/**
 Frame
 */
@property (nonatomic) CGFloat Amove_x;
@property (nonatomic) CGFloat Amove_y;
@property (nonatomic) CGFloat Amove_width;
@property (nonatomic) CGFloat Amove_height;
@property (nonatomic) CGFloat Amove_maxX;
@property (nonatomic) CGFloat Amove_maxY;
@property (nonatomic) CGFloat Amove_centerX;
@property (nonatomic) CGFloat Amove_centerY;
@property (nonatomic) CGPoint Amove_origin;
@property (nonatomic) CGSize Amove_size;

/**
 添加阴影
 @param shadowColor 阴影颜色
 @param shadowOffset 阴影偏置
 @param shadowRadius 阴影倒角
 @param shadowOpacity 阴影透明度
 */
- (void)Amove_addShadowWithColor:(UIColor*)shadowColor shadowOffset:(CGSize)shadowOffset shadowRadius:(CGFloat)shadowRadius shadowOpacity:(CGFloat)shadowOpacity;

/**
 绘制虚线
 @param frame 虚线视图frame
 @param lineWeight 虚线粗细
 @param lineColor 虚线颜色
 @param dashLineLength 每个虚线长度
 @param dashLineGap 两个虚线间隙
 @param isHorizontal 水平绘制
 @return 返回绘制虚线View
 */
+ (UIView *)Amove_createDashLineViewWithFrame:(CGRect)frame lineWeight:(CGFloat)lineWeight lineColor:(nullable UIColor *)lineColor dashLineLength:(CGFloat)dashLineLength dashLineGap:(CGFloat)dashLineGap isHorizontal:(BOOL)isHorizontal;

@end

NS_ASSUME_NONNULL_END
