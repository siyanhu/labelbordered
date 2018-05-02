//
//  LabelBordered.m
//  Test Project
//
//  Created by HU Siyan on 25/9/2016.
//  Copyright © 2016 Siyan HU. All rights reserved.
//

#import "LabelBordered.h"

@implementation LabelBordered

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        //add something
    }
    return self;
}

- (void)setMainFont:(UIFont *)mainFont mainText:(NSString *)mainTitle subFonr:(UIFont *)subFont subText:(NSString *)subTitle {

    NSMutableDictionary *mainAttrDict = [NSMutableDictionary dictionary];
    [mainAttrDict setObject:mainFont forKey:NSFontAttributeName];
    [mainAttrDict setObject:[UIColor darkGrayColor] forKey:NSForegroundColorAttributeName];
    NSMutableAttributedString *titleStr = [[NSMutableAttributedString alloc] initWithString:mainTitle attributes:[NSDictionary dictionaryWithDictionary:mainAttrDict]];

    NSMutableDictionary *subAttrDict = [NSMutableDictionary dictionary];
    [subAttrDict setObject:subFont forKey:NSFontAttributeName];
    [subAttrDict setObject:[UIColor redColor] forKey:NSForegroundColorAttributeName];
    NSString *sub = [NSString stringWithFormat:@"\n%@", subTitle];
    NSMutableAttributedString *subStr = [[NSMutableAttributedString alloc] initWithString:sub attributes:subAttrDict];
    
    [titleStr appendAttributedString:subStr];
    
    [self setAdjustsFontSizeToFitWidth:YES];
    [self setAttributedText:titleStr];
    [self setNumberOfLines:0];
    [self setLineBreakMode:NSLineBreakByWordWrapping];
    [self setBackgroundColor:[UIColor clearColor]];
    
    [self drawTextInRect:self.bounds];
}

- (void)setTitle:(NSString *)str font:(UIFont *)titleFont titleColor:(UIColor *)titleColor {
    self.text = str;
    self.textColor = titleColor;
    self.font = titleFont;
    
    [self setAdjustsFontSizeToFitWidth:YES];
    [self setNumberOfLines:0];
    [self setLineBreakMode:NSLineBreakByWordWrapping];
    [self setBackgroundColor:[UIColor clearColor]];
    
    [self drawTextInRect:self.bounds];
}

#pragma mark - Function Overloading
- (void)drawTextInRect:(CGRect)rect {
    CGSize shadowOffSet = self.shadowOffset;
    UIColor *textColor = self.textColor;
    
    CGContextRef cxtRef = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(cxtRef, 3);
    CGContextSetLineJoin(cxtRef, kCGLineJoinRound);
    
    CGContextSetTextDrawingMode(cxtRef, kCGTextStroke);
    self.textColor = [UIColor whiteColor];
    [super drawTextInRect:rect];
    
    CGContextSetTextDrawingMode(cxtRef, kCGTextFill);
    self.textColor = textColor;
    self.shadowOffset = CGSizeMake(0, 0);
    [super drawTextInRect:rect];
    
    self.shadowOffset = shadowOffSet;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
