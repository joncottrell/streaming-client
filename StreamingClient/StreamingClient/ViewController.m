//
//  ViewController.m
//  StreamingClient
//
//  Created by Jonathan Cottrell on 2012-10-13.
//  Copyright (c) 2012 SpacebarFM Inc. All rights reserved.
//

#import <MediaPlayer/MediaPlayer.h>
#import "ViewController.h"

@interface ViewController ()
- (IBAction)play:(id)sender;

@end

@implementation ViewController


- (id)init
{
    self = [super initWithNibName:@"ViewController" bundle:nil];
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)play:(id)sender
{
    NSURL *url = [NSURL URLWithString:NSLocalizedStringFromTable(@"streamURL", @"Configuration", nil)];

    MPMoviePlayerController *player = [[MPMoviePlayerController alloc] initWithContentURL:url];
    player.movieSourceType = MPMovieSourceTypeStreaming;
    player.view.hidden = YES;
    [self.view addSubview:player.view];
    [player play];

}
@end
