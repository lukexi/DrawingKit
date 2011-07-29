// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CDDrawing.m instead.

#import "_CDDrawing.h"

@implementation CDDrawingID
@end

@implementation _CDDrawing

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"CDDrawing" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"CDDrawing";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"CDDrawing" inManagedObjectContext:moc_];
}

- (CDDrawingID*)objectID {
	return (CDDrawingID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"sizeXValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"sizeX"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
	}
	if ([key isEqualToString:@"sizeYValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"sizeY"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
	}

	return keyPaths;
}




@dynamic previewImage;






@dynamic timeStamp;






@dynamic couchID;






@dynamic sizeX;



- (int)sizeXValue {
	NSNumber *result = [self sizeX];
	return [result intValue];
}

- (void)setSizeXValue:(int)value_ {
	[self setSizeX:[NSNumber numberWithInt:value_]];
}

- (int)primitiveSizeXValue {
	NSNumber *result = [self primitiveSizeX];
	return [result intValue];
}

- (void)setPrimitiveSizeXValue:(int)value_ {
	[self setPrimitiveSizeX:[NSNumber numberWithInt:value_]];
}





@dynamic name;






@dynamic userName;






@dynamic treePath;






@dynamic sizeY;



- (int)sizeYValue {
	NSNumber *result = [self sizeY];
	return [result intValue];
}

- (void)setSizeYValue:(int)value_ {
	[self setSizeY:[NSNumber numberWithInt:value_]];
}

- (int)primitiveSizeYValue {
	NSNumber *result = [self primitiveSizeY];
	return [result intValue];
}

- (void)setPrimitiveSizeYValue:(int)value_ {
	[self setPrimitiveSizeY:[NSNumber numberWithInt:value_]];
}





@dynamic couchRev;






@dynamic paths;

	
- (NSMutableSet*)pathsSet {
	[self willAccessValueForKey:@"paths"];
	NSMutableSet *result = [self mutableSetValueForKey:@"paths"];
	[self didAccessValueForKey:@"paths"];
	return result;
}
	





@end
