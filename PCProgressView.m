//
//  PCProgressView.m
//  定制
//
//  Created by pinping on 13-4-19.
//  Copyright (c) 2013年 maclove. All rights reserved.
//

#import "PCProgressView.h"

@implementation PCProgressView

@synthesize wd;
@synthesize progre;
@synthesize progressLayer;


- (void)resetProgress
{
		wd.hidden = YES;
		[self setProgress:0];
}

- (void)setProgress:(CGFloat)progres
{
		if ((int)progres == maxNumProgre) {
				[self resetProgress];
		}
		progre = progres;
		downNumber.text = [NSString  stringWithFormat:@"%d",(int)progres];
		[progressLayer setProgressX:progre];
		[progressLayer setNeedsDisplay];
}

- (id)initNameStr:(NSString *)str maxNum:(int)maxnum
{
    self = [super init];
    if (self) {
        // Initialization code
				maxNumProgre = maxnum;
				CGRect frame = {{0, 0}, {320, 20}};
				wd = [[UIWindow alloc] initWithFrame:frame];
				[wd setBackgroundColor:[UIColor clearColor]];
				[wd setWindowLevel:UIWindowLevelStatusBar];
				
				UIView *sumView = [[UIView alloc] initWithFrame:CGRectMake(100, 0, 220, 20)];
				sumView.backgroundColor = [UIColor blackColor];
				
				
				UILabel	*statusBarLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 150, 18)];
				statusBarLabel.text = str;
				statusBarLabel.textColor = [UIColor whiteColor];
				statusBarLabel.font = [UIFont boldSystemFontOfSize:13.0f];
				statusBarLabel.backgroundColor = [UIColor clearColor];
				
				
				UIView	*statusView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 150, 20)];
				statusView.backgroundColor = [UIColor blackColor];
				
				UIView	*progressView = [[UIView alloc] initWithFrame:CGRectMake(0, 18, 150, 2)];
				
				progressLayer = [[PCProgressLayer alloc] init];
				progressLayer.contentsScale = [[UIScreen mainScreen] scale];
				progressLayer.anchorPoint = CGPointMake(0, 0);
				[progressView.layer addSublayer:progressLayer];
				progressLayer.position=CGPointMake(0.0f,0.0f);
				progressLayer.bounds=CGRectMake(0, 0, 150, 2);
				progressLayer.progressMax = maxnum;
				
				[statusView addSubview:statusBarLabel];
				[statusView addSubview:progressView];
				
				
				UIView	*numberView = [[UIView alloc] initWithFrame:CGRectMake(150, 0, 70, 20)];
				downNumber = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 30, 20)];
				UILabel	*downSign = [[UILabel alloc] initWithFrame:CGRectMake(30, 0, 10, 20)];
				UILabel	*downSum = [[UILabel alloc] initWithFrame:CGRectMake(40, 0, 30, 20)];
				
				
				numberView.backgroundColor = [UIColor blackColor];
				downNumber.backgroundColor = [UIColor blackColor];
				downSign.backgroundColor = [UIColor blackColor];
				downSum.backgroundColor = [UIColor blackColor];
				
				downNumber.textColor = [UIColor whiteColor];
				downSign.textColor = [UIColor whiteColor];
				downSum.textColor = [UIColor whiteColor];
				
				downNumber.textAlignment = UITextAlignmentRight;
				downSign.textAlignment = UITextAlignmentCenter;
				downSum.textAlignment = UITextAlignmentLeft;
				
				downNumber.font = [UIFont boldSystemFontOfSize:13.0f];
				downSign.font = [UIFont boldSystemFontOfSize:13.0f];
				downSum.font = [UIFont boldSystemFontOfSize:13.0f];
				
				
				downNumber.text = @"0";
				downSign.text = @"/";
				downSum.text = [NSString  stringWithFormat:@"%d",maxnum];
				
				
				[numberView addSubview:downNumber];
				[numberView addSubview:downSign];
				[numberView addSubview:downSum];
				
				[sumView addSubview:numberView];
				[sumView addSubview:statusView];
				
				[wd addSubview:sumView];
				[wd makeKeyAndVisible];
				
				
				[self setProgress:1];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)dealloc
{
    [progressLayer release];
    progressLayer = nil;
		
    [super dealloc];
}

@end
