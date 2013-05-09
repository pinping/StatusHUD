//
//  PCProgressLayer.h
//  定制
//
//  Created by pinping on 13-4-18.
//  Copyright (c) 2013年 maclove. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <QuartzCore/CALayer.h>

@interface PCProgressLayer : CALayer
{
		CGFloat		progressMax;
		CGFloat		progressX;
}
@property (nonatomic, assign) CGFloat progressMax;
@property (nonatomic, assign) CGFloat progressX;
@end
