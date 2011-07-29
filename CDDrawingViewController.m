//
//  CDDrawingViewController.m
//  CouchDraw
//
//  Created by Luke Iannini on 7/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CDDrawingViewController.h"
#import "CDDrawingView.h"
#import "CDPath.h"
#import "CDPoint.h"
#import "UIColor+Additions.h"
#import "CoreDataJSONKit.h"
#import "CDDrawing.h"

@interface CDDrawingViewController ()

@property (nonatomic, readonly) CDDrawingView *drawingView;
@property (nonatomic, retain) CDPath *currentPath;

@end

@implementation CDDrawingViewController
@synthesize currentPath;
@synthesize managedObjectContext;
@synthesize drawing;

- (void)dealloc
{
    [managedObjectContext release];
    [drawing release];
    [currentPath release];
    [super dealloc];
}

+ (id)drawingViewController
{
    return [[[self alloc] initWithNibName:@"CDDrawingViewController" bundle:nil] autorelease];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (CDDrawingView *)drawingView
{
    return (CDDrawingView *)self.view;
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIPanGestureRecognizer *recognizer = [[[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanRecognizer:)] autorelease];
    [self.view addGestureRecognizer:recognizer];
    
    // Initialize drawing if it doesn't exist yet
    [self drawing];
}

- (CDDrawing *)drawing
{
    if (!drawing) 
    {
        self.drawing = [CDDrawing insertInManagedObjectContext:self.managedObjectContext];
    }
    return drawing;
}

- (void)setDrawing:(CDDrawing *)aDrawing
{
    if (aDrawing != drawing) 
    {
        [drawing autorelease];
        drawing = [aDrawing retain];
        drawing.sizeXValue = self.drawingView.bounds.size.width;
        drawing.sizeYValue = self.drawingView.bounds.size.height;
        self.drawingView.paths = drawing.paths;
        [self.drawingView setNeedsDisplay];
        self.title = drawing.name;
    }
}

- (void)handlePanRecognizer:(UIPanGestureRecognizer *)recognizer
{
    CDPoint *point = nil;
    CGPoint touchPoint = [recognizer locationInView:self.drawingView];
    switch (recognizer.state) 
    {
        case UIGestureRecognizerStateBegan:
            self.currentPath = [CDPath insertInManagedObjectContext:self.managedObjectContext];
            self.currentPath.color = [UIColor hc_randomColor];
            [self.drawing addPathsObject:self.currentPath];
            // Use fallthrough of switch \/
        case UIGestureRecognizerStateChanged:
        case UIGestureRecognizerStateEnded:
            point = [CDPoint insertInManagedObjectContext:self.managedObjectContext];
            point.xValue = touchPoint.x;
            point.yValue = touchPoint.y;
            [self.currentPath addPoint:point];
            break;
        default:
            break;
    }
    [self.view setNeedsDisplay];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
