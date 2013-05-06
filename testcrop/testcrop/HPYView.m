//
//  HPYView.m
//  testcrop
//
//  Created by Haunshila on 05/05/13.
//  Copyright (c) 2013 HPY. All rights reserved.
//

#import "HPYView.h"

@implementation HPYView
@synthesize cropRect = _cropRect;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    
    // Request draw context
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);

    // Draw background
    CGContextSetRGBFillColor(context, 1.0f, 0.0f, 0.0f, 1.0f);
    CGContextFillRect(context, rect);
    
    // Cut hole
    CGContextSetBlendMode(context, kCGBlendModeClear);
    CGContextFillRect(context, self.cropRect
                      );
    CGContextRestoreGState(context);

}


@end
