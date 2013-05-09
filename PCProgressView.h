//
//  PCProgressView.h
//  定制
//
//  Created by pinping on 13-4-19.
//  Copyright (c) 2013年 maclove. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PCProgressLayer.h"

@class PCProgressLayer;

@interface PCProgressView : NSObject
{
		UIWindow *wd;
		CGFloat progre;
		int	maxNumProgre;
		PCProgressLayer	*progressLayer;
		UILabel	*downNumber;
}
- (id)initNameStr:(NSString *)str maxNum:(int)maxnum;
- (void)setProgress:(CGFloat)progres;
@property (nonatomic, retain) UIWindow *wd;
@property (nonatomic, assign) CGFloat progre;
@property (nonatomic, retain) PCProgressLayer *progressLayer;

@end
