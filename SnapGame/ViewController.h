//
//  ViewController.h
//  SnapGame
//
//  Created by Илья Юхновский on 03.06.2018.
//  Copyright © 2018 Илья Юхновский. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    NSTimer *timer;
    int timerInt;
    
    NSTimer *imageUpdate;
    int scoreInt;
}

@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIButton *startOutlet;
@property (weak, nonatomic) IBOutlet UIButton *snapOutlet;

- (IBAction)startGame:(id)sender;
- (IBAction)snap:(id)sender;

@end

