// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CDDrawing.h instead.

#import <CoreData/CoreData.h>


@class CDPath;

@class NSObject;





@class NSObject;



@interface CDDrawingID : NSManagedObjectID {}
@end

@interface _CDDrawing : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (CDDrawingID*)objectID;



@property (nonatomic, retain) NSObject *previewImage;

//- (BOOL)validatePreviewImage:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSDate *timeStamp;

//- (BOOL)validateTimeStamp:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSString *couchID;

//- (BOOL)validateCouchID:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSNumber *sizeX;

@property int sizeXValue;
- (int)sizeXValue;
- (void)setSizeXValue:(int)value_;

//- (BOOL)validateSizeX:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSString *name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSString *userName;

//- (BOOL)validateUserName:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSObject *treePath;

//- (BOOL)validateTreePath:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSNumber *sizeY;

@property int sizeYValue;
- (int)sizeYValue;
- (void)setSizeYValue:(int)value_;

//- (BOOL)validateSizeY:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSString *couchRev;

//- (BOOL)validateCouchRev:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSSet* paths;
- (NSMutableSet*)pathsSet;




@end

@interface _CDDrawing (CoreDataGeneratedAccessors)

- (void)addPaths:(NSSet*)value_;
- (void)removePaths:(NSSet*)value_;
- (void)addPathsObject:(CDPath*)value_;
- (void)removePathsObject:(CDPath*)value_;

@end

@interface _CDDrawing (CoreDataGeneratedPrimitiveAccessors)


- (NSObject*)primitivePreviewImage;
- (void)setPrimitivePreviewImage:(NSObject*)value;




- (NSDate*)primitiveTimeStamp;
- (void)setPrimitiveTimeStamp:(NSDate*)value;




- (NSString*)primitiveCouchID;
- (void)setPrimitiveCouchID:(NSString*)value;




- (NSNumber*)primitiveSizeX;
- (void)setPrimitiveSizeX:(NSNumber*)value;

- (int)primitiveSizeXValue;
- (void)setPrimitiveSizeXValue:(int)value_;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSString*)primitiveUserName;
- (void)setPrimitiveUserName:(NSString*)value;




- (NSObject*)primitiveTreePath;
- (void)setPrimitiveTreePath:(NSObject*)value;




- (NSNumber*)primitiveSizeY;
- (void)setPrimitiveSizeY:(NSNumber*)value;

- (int)primitiveSizeYValue;
- (void)setPrimitiveSizeYValue:(int)value_;




- (NSString*)primitiveCouchRev;
- (void)setPrimitiveCouchRev:(NSString*)value;





- (NSMutableSet*)primitivePaths;
- (void)setPrimitivePaths:(NSMutableSet*)value;


@end
