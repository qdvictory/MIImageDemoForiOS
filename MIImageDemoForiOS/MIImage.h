//
//  MIImage.h
//  MIDataForMac
//
//  Created by Semaus Gao on 4/19/12.
//  Copyright (c) 2012 Chlova. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MIImage : NSObject
{
    
}

+ (UIImage *)imageWithNamed:(NSString *)_str secret:(NSString *)_sec;
+ (UIImage *)imageWithPath:(NSString *)_str secret:(NSString *)_sec;
@end
