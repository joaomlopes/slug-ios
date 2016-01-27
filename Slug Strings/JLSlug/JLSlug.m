//
//  Slug.m
//  Slug Strings
//
//  Created by João Lopes on 26/01/16.
//  Copyright © 2016 João Lopes. All rights reserved.
//

#import "JLSlug.h"

@implementation JLSlug

+(JLSlug*)shared {
    static JLSlug* _shared = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        _shared = [[self alloc] init];
    });
    return _shared;
}

- (id) init {
    self = [super init];
    if(self) {
        
    }
    
    return self;
}

+(NSString*)str_slug:(NSString *)someString {
    
    NSString *slug = [someString lowercaseString];
    
    slug = [slug stringByReplacingOccurrencesOfString:@"[ \\_\\-\\:\\/\\.\\'\\´\\`\\~\\^\\;\\,\"\\+\\*\\=\\<\\>\\#]" withString:@"-" options:NSRegularExpressionSearch range:NSMakeRange(0, [slug length])];
    
    slug = [slug stringByReplacingOccurrencesOfString:@"[@]" withString:@"-at-" options:NSRegularExpressionSearch range:NSMakeRange(0, [slug length])];
    
    slug = [slug stringByReplacingOccurrencesOfString:@"[€]" withString:@"-euro-" options:NSRegularExpressionSearch range:NSMakeRange(0, [slug length])];
    
    slug = [slug stringByReplacingOccurrencesOfString:@"[$]" withString:@"-dollar-" options:NSRegularExpressionSearch range:NSMakeRange(0, [slug length])];
    
    slug = [slug stringByReplacingOccurrencesOfString:@"[£]" withString:@"-pound-" options:NSRegularExpressionSearch range:NSMakeRange(0, [slug length])];
    
    slug = [slug stringByReplacingOccurrencesOfString:@"[¥]" withString:@"-yen-" options:NSRegularExpressionSearch range:NSMakeRange(0, [slug length])];
    
    slug = [slug stringByReplacingOccurrencesOfString:@"[&]" withString:@"-and-" options:NSRegularExpressionSearch range:NSMakeRange(0, [slug length])];
    
    slug = [slug stringByReplacingOccurrencesOfString:@"[%]" withString:@"-percent-" options:NSRegularExpressionSearch range:NSMakeRange(0, [slug length])];
    
    slug = [slug stringByReplacingOccurrencesOfString:@"[àáâãäå]" withString:@"a" options:NSRegularExpressionSearch range:NSMakeRange(0, [slug length])];
    slug = [slug stringByReplacingOccurrencesOfString:@"[æ]" withString:@"ae" options:NSRegularExpressionSearch range:NSMakeRange(0, [slug length])];
    slug = [slug stringByReplacingOccurrencesOfString:@"[ç]" withString:@"c" options:NSRegularExpressionSearch range:NSMakeRange(0, [slug length])];
    slug = [slug stringByReplacingOccurrencesOfString:@"[èéêë]" withString:@"e" options:NSRegularExpressionSearch range:NSMakeRange(0, [slug length])];
    slug = [slug stringByReplacingOccurrencesOfString:@"[ìíîï]" withString:@"i" options:NSRegularExpressionSearch range:NSMakeRange(0, [slug length])];
    slug = [slug stringByReplacingOccurrencesOfString:@"[ñ]" withString:@"n" options:NSRegularExpressionSearch range:NSMakeRange(0, [slug length])];
    slug = [slug stringByReplacingOccurrencesOfString:@"[òóôõöø]" withString:@"o" options:NSRegularExpressionSearch range:NSMakeRange(0, [slug length])];
    slug = [slug stringByReplacingOccurrencesOfString:@"[œ]" withString:@"oe" options:NSRegularExpressionSearch range:NSMakeRange(0, [slug length])];
    slug = [slug stringByReplacingOccurrencesOfString:@"[š]" withString:@"s" options:NSRegularExpressionSearch range:NSMakeRange(0, [slug length])];
    slug = [slug stringByReplacingOccurrencesOfString:@"[ùúûü]" withString:@"u" options:NSRegularExpressionSearch range:NSMakeRange(0, [slug length])];
    slug = [slug stringByReplacingOccurrencesOfString:@"[ýÿ]" withString:@"y" options:NSRegularExpressionSearch range:NSMakeRange(0, [slug length])];
    slug = [slug stringByReplacingOccurrencesOfString:@"[ž]" withString:@"z" options:NSRegularExpressionSearch range:NSMakeRange(0, [slug length])];
    
    return slug;
}


@end
