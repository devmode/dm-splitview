#import "DetailViewController.h"

@implementation DetailViewController

- (void)viewDidLoad {
    self.dmSplitViewController.delegate = self;
    self.navigationItem.title = @"Detail Controller";
    self.view.backgroundColor = [UIColor blueColor];

    UILabel* test = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 50.0)];
    test.text = @"This is a test label that is much longer than one would think..........";
    test.font = [UIFont boldSystemFontOfSize:50];
    test.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:test];
}

-(void)splitViewControllerWillHideMaster:(DMSplitViewController*)splitViewController withBarButtonItem:(UIBarButtonItem*)barButtonItem {
    barButtonItem.title = @"Master";
    self.navigationItem.leftBarButtonItem = barButtonItem;
}

-(void)splitViewControllerWillShowMaster:(DMSplitViewController*)splitViewController {
    self.navigationItem.leftBarButtonItem = nil;
}

@end