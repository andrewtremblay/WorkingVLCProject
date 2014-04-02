
#import "PDXPlayerViewController.h"
#import <MobileVLCKit/MobileVLCKit.h>


@interface PDXPlayerViewController ()
@property (nonatomic, strong) VLCMediaPlayer *vlcPlayer;
@end

@implementation PDXPlayerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    _vlcPlayer = [[VLCMediaPlayer alloc] initWithOptions:nil];
    _vlcPlayer.drawable = self.mediaView;
    
//    @"rtmp://livertmppc.wasu.cn/live/dfws"
    //http://192.168.1.254/hdmv.mp4
    
    VLCMedia *media = [VLCMedia mediaWithURL:[NSURL URLWithString: _mediaPath]];
    [_vlcPlayer setMedia:media];
    [_vlcPlayer play];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [_vlcPlayer stop];
    
    [super viewWillDisappear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
