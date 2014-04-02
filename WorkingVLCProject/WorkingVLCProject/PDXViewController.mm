#import "PDXViewController.h"
#import "PDXPlayerViewController.h"

@interface PDXViewController ()
@end

@implementation PDXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.urlTextField.text = @"rtsp://media1.law.harvard.edu/Media/policy_a/2012/02/02_unger.mov";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    PDXPlayerViewController *playerCtrl = [segue destinationViewController];
    playerCtrl.mediaPath = self.urlTextField.text;
}
@end
