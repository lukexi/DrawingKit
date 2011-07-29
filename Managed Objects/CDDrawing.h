#import "_CDDrawing.h"
#import "CKCouchDocument.h"

@interface CDDrawing : _CDDrawing <CKCouchDocument> {}
// Custom logic goes here.

- (void)drawInCurrentContext;

@end
