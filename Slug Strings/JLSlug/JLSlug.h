//
//  Slug.h
//  Slug Strings
//
//  Created by João Lopes on 26/01/16.
//  Copyright © 2016 João Lopes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JLSlug : NSObject


+(JLSlug*)shared;

+(NSString*)str_slug:(NSString*)someString;

@end
