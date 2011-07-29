//
//  CDImageToDataTransformer.m
//  HelloChair4
//
//  Created by Luke Iannini on 7/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CDImageToDataTransformer.h"

@implementation CDImageToDataTransformer

+ (BOOL)allowsReverseTransformation {
    return YES;
}

+ (Class)transformedValueClass {
    return [NSData class];
}


- (id)transformedValue:(id)value {
    NSData *data = UIImagePNGRepresentation(value);
    return data;
}


- (id)reverseTransformedValue:(id)value {
    UIImage *uiImage = [[UIImage alloc] initWithData:value];
    return [uiImage autorelease];
}

@end
