//
//  PCProgressLayer.m
//  定制
//
//  Created by pinping on 13-4-18.
//  Copyright (c) 2013年 maclove. All rights reserved.
//

#import "PCProgressLayer.h"

@implementation PCProgressLayer

@synthesize progressX,progressMax;

- (void)drawInContext:(CGContextRef)ctx {
		
		NSLog(@"drawInContext");
		
		CGFloat	maxX = (150/progressMax)*progressX;
		
		UIGraphicsPushContext(ctx);
		CGContextMoveToPoint(ctx, 0, 0);
		CGContextAddLineToPoint(ctx,maxX,0);
		CGContextAddLineToPoint(ctx,maxX,2);
		CGContextAddLineToPoint(ctx,0,2);
		CGContextClosePath(ctx);
		
		CGContextSetRGBFillColor(ctx,1, 1, 1, 1);
		CGContextDrawPath(ctx, kCGPathFill);
		UIGraphicsPopContext();
}

@end
