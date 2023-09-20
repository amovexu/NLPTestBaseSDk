//
//  UIView+AmoveExtension.m
//  AmoveBase
//
//  Created by Amove on 2022/5/10.
//

#import "UIView+AmoveExtension.h"

@implementation UIView (AmoveExtension)

- (CGFloat)Amove_x {
    
    return self.frame.origin.x;
}

- (void)setAmove_x:(CGFloat)Amove_x {
    
    CGRect frame = self.frame;
    frame.origin.x = Amove_x;
    self.frame = frame;
}

- (CGFloat)Amove_y {
    
    return self.frame.origin.y;
}

- (void)setAmove_y:(CGFloat)Amove_y {
    
    CGRect frame = self.frame;
    frame.origin.y = Amove_y;
    self.frame = frame;
}

- (CGFloat)Amove_width {
    
    return self.frame.size.width;
}

- (void)setAmove_width:(CGFloat)Amove_width {
    
    CGRect frame = self.frame;
    frame.size.width = Amove_width;
    self.frame = frame;
}

- (CGFloat)Amove_height {
    
    return self.frame.size.height;
}

- (void)setAmove_height:(CGFloat)Amove_height {
    
    CGRect frame = self.frame;
    frame.size.height = Amove_height;
    self.frame = frame;
}

- (CGFloat)Amove_maxX {
    
    CGRect frame = self.frame;
    return frame.origin.x + frame.size.width;
}

- (void)setAmove_maxX:(CGFloat)Amove_maxX {
    
    CGRect frame = self.frame;
    frame.origin.x = Amove_maxX - frame.size.width;
    self.frame = frame;
}

- (CGFloat)Amove_maxY {
    
    CGRect frame = self.frame;
    return frame.origin.y + frame.size.height;
}

- (void)setAmove_maxY:(CGFloat)Amove_maxY {
    
    CGRect frame = self.frame;
    frame.origin.y = Amove_maxY - frame.size.height;
    self.frame = frame;
}

- (CGFloat)Amove_centerX {
    
    return self.center.x;
}

- (void)setAmove_centerX:(CGFloat)Amove_centerX {
    
    CGPoint center = self.center;
    center.x = Amove_centerX;
    self.center = center;
}

- (CGFloat)Amove_centerY {
    
    return self.center.y;
}

- (void)setAmove_centerY:(CGFloat)Amove_centerY {
    
    CGPoint center = self.center;
    center.y = Amove_centerY;
    self.center = center;
}

- (CGPoint)Amove_origin {
    
    return self.frame.origin;
}

- (void)setAmove_origin:(CGPoint)Amove_origin {
    
    CGRect frame = self.frame;
    frame.origin = Amove_origin;
    self.frame = frame;
}

- (CGSize)Amove_size {
    
    return self.frame.size;
}

- (void)setAmove_size:(CGSize)Amove_size {
    
    CGRect frame = self.frame;
    frame.size = Amove_size;
    self.frame = frame;
}

- (void)Amove_addShadowWithColor:(UIColor*)shadowColor shadowOffset:(CGSize)shadowOffset shadowRadius:(CGFloat)shadowRadius shadowOpacity:(CGFloat)shadowOpacity {
    
    CGColorRef cgColor = shadowColor.CGColor;
    self.layer.shadowColor = cgColor;
    self.layer.borderColor = cgColor;
    self.layer.borderWidth = 0.000001;
    self.layer.shadowOpacity = shadowOpacity;
    self.layer.shadowRadius = shadowRadius;
    self.layer.shadowOffset = shadowOffset;
}

+ (UIView *)Amove_createDashLineViewWithFrame:(CGRect)frame lineWeight:(CGFloat)lineWeight lineColor:(nullable UIColor *)lineColor dashLineLength:(CGFloat)dashLineLength dashLineGap:(CGFloat)dashLineGap isHorizontal:(BOOL)isHorizontal {
    
    UIView *dashView = [[UIView alloc] initWithFrame:frame];
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    [shapeLayer setBounds:dashView.bounds];
    [shapeLayer setPosition:CGPointMake(frame.size.width *.5, frame.size.height *.5)];
    [shapeLayer setFillColor:[[UIColor clearColor] CGColor]];
    
    // 设置虚线颜色
    [shapeLayer setStrokeColor:[lineColor CGColor]];
    
    // 设置虚线的宽度
    [shapeLayer setLineWidth:lineWeight];
    [shapeLayer setLineJoin:kCALineJoinRound];
    
    // 设置虚线段宽度及虚线段间距
    [shapeLayer setLineDashPattern:
     [NSArray arrayWithObjects:[NSNumber numberWithInt:dashLineLength],
      [NSNumber numberWithInt:dashLineGap],nil]];
    
    // Setup the path
    CGMutablePathRef path = CGPathCreateMutable();
    
    if (isHorizontal) {
        CGPathMoveToPoint(path, NULL, 0, CGRectGetHeight(frame) * 0.5);
        CGPathAddLineToPoint(path, NULL, CGRectGetWidth(frame), CGRectGetHeight(frame) * 0.5);
    } else {
        CGPathMoveToPoint(path, NULL, CGRectGetWidth(frame) * 0.5, 0);
        CGPathAddLineToPoint(path, NULL, CGRectGetWidth(frame) * 0.5, CGRectGetHeight(frame));
    }
    
    [shapeLayer setPath:path];
    CGPathRelease(path);
    
    [[dashView layer] addSublayer:shapeLayer];
    return dashView;
}

@end
