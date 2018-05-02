//
//  LabelBordered.h
//  Wherami Harbour City
//
//  Created by HU Siyan on 25/9/2016.
//  Copyright © 2016 Mtrec_HKUST. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LabelBordered : UILabel

- (void)setMainFont:(UIFont *)mainFont mainText:(NSString *)mainTitle subFonr:(UIFont *)subFont subText:(NSString *)subTitle;
- (void)setTitle:(NSString *)str font:(UIFont *)titleFont titleColor:(UIColor *)titleColor;

@end
