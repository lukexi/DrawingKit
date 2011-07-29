#import "CDDrawing.h"
#import "CDPath.h"
#import "NSString+Additions.h"
#import "NamerAdditions.h"

@interface CDDrawing ()



@end

@implementation CDDrawing
@dynamic couchID, couchRev, name, previewImage;
// Custom logic goes here.

- (void)awakeFromInsert
{
    [super awakeFromInsert];
    self.couchID = [NSString cj_UUID];
    self.name = [NSString nonsenseString];
    self.timeStamp = [NSDate date];
    self.treePath = [NSArray arrayWithObject:self.couchID];
}

- (void)drawInCurrentContext
{
    for (CDPath *path in self.paths)
    {
        [(UIColor *)path.color set];
        [[path bezierPath] stroke];
    }
}

- (UIImage *)previewImage
{
    UIImage *previewImage = (UIImage *)[self primitivePreviewImage];
    if (!previewImage)
    {
        UIGraphicsBeginImageContext(CGSizeMake(320, 320));
        [self drawInCurrentContext];
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        self.previewImage = image;
    }
    return previewImage;
}

@end
