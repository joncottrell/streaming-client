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
{
    MPMoviePlayerController *_player;
}
- (IBAction)play:(id)sender;

@end

@implementation ViewController


- (id)init
{
    self = [super initWithNibName:@"ViewController" bundle:nil];
    
    NSURL *url = [NSURL URLWithString:NSLocalizedStringFromTable(@"streamURL", @"Configuration", nil)];
    _player = [[MPMoviePlayerController alloc] initWithContentURL:url];
    
    _player.movieSourceType = MPMovieSourceTypeStreaming;

    _player.view.hidden = YES;
    _player.shouldAutoplay = YES;
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view addSubview:_player.view];

}

- (IBAction)play:(id)sender
{

    [_player play];

}
@end
