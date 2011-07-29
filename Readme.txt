You must merge in the DrawingKit Core Data Model to use its objects in your app, like so:

- (NSManagedObjectModel *)managedObjectModel
{
    if (managedObjectModel != nil)
    {
        return managedObjectModel;
    }
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"MyApplication" withExtension:@"momd"];
    NSManagedObjectModel *mainModel = [[[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL] autorelease];
    NSURL *drawingURL = [[NSBundle mainBundle] URLForResource:@"DrawingKit" withExtension:@"momd"];
    NSManagedObjectModel *drawingModel = [[[NSManagedObjectModel alloc] initWithContentsOfURL:drawingURL] autorelease];
    self.managedObjectModel = [[NSManagedObjectModel modelByMergingModels:[NSArray arrayWithObjects:
                                                                        mainModel, 
                                                                        drawingModel, nil]] retain];
    return managedObjectModel;
}