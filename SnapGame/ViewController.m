//
//  ViewController.m
//  SnapGame
//
//  Created by Илья Юхновский on 03.06.2018.
//  Copyright © 2018 Илья Юхновский. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    scoreInt = 0;
    timerInt = 20;
    self.snapOutlet.enabled = NO;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)startGame:(id)sender {
    if(scoreInt == 0){
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerUpdate) userInfo:nil repeats:YES];
        self.snapOutlet.enabled = YES;
        self.startOutlet.enabled = NO;
    }
    
    if (timerInt == 0){
        timerInt = 20;
        scoreInt = 0;
        
        self.timeLabel.text = [NSString stringWithFormat:@"%i", timerInt];
        self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
        
        [self.startOutlet setTitle:@"Start Game" forState:UIControlStateNormal];
    }
}

-(void)timerUpdate {
    timerInt -= 1;
    self.timeLabel.text = [NSString stringWithFormat:@"%i", timerInt];
    
    int randomeOne = arc4random() % 6;
    switch (randomeOne) {
        case 0:
            self.imageView1.image = [UIImage imageNamed:@"snap1.jpg"];
            break;
        case 1:
            self.imageView1.image = [UIImage imageNamed:@"snap2.jpg"];
            break;
        case 2:
            self.imageView1.image = [UIImage imageNamed:@"snap3.jpg"];
            break;
        case 3:
            self.imageView1.image = [UIImage imageNamed:@"snap4.jpg"];
            break;
        case 4:
            self.imageView1.image = [UIImage imageNamed:@"snap5.jpg"];
            break;
        case 5:
            self.imageView1.image = [UIImage imageNamed:@"snap6.jpg"];
            break;
        default:
            break;
    }
    
    int randomeTwo = arc4random() % 6;
    switch (randomeTwo) {
        case 0:
            self.imageView2.image = [UIImage imageNamed:@"snap1.jpg"];
            break;
        case 1:
            self.imageView2.image = [UIImage imageNamed:@"snap2.jpg"];
            break;
        case 2:
            self.imageView2.image = [UIImage imageNamed:@"snap3.jpg"];
            break;
        case 3:
            self.imageView2.image = [UIImage imageNamed:@"snap4.jpg"];
            break;
        case 4:
            self.imageView2.image = [UIImage imageNamed:@"snap5.jpg"];
            break;
        case 5:
            self.imageView2.image = [UIImage imageNamed:@"snap6.jpg"];
            break;
        default:
            break;
    }
    
    if(timerInt == 0) {
        [timer invalidate];
        
        self.snapOutlet.enabled = NO;
        self.startOutlet.enabled = YES;
        
        [self.startOutlet setTitle:@"Restart Game" forState:UIControlStateNormal];
    }
}

- (IBAction)snap:(id)sender {
    if([self.imageView1.image isEqual:self.imageView2.image]) {
        scoreInt += 1;
    } else {
        scoreInt -= 1;
    }
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
}

@end
