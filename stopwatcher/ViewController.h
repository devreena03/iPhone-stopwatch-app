//
//  ViewController.h
//  stopwatcher
//
//  Created by Kumari, Reena on 9/30/18.
//  Copyright © 2018 Kumari, Reena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    NSTimer *myTimer;
    BOOL running;
    int count;
}

@property (weak, nonatomic) IBOutlet UILabel *timecount;
@property (weak, nonatomic) IBOutlet UIButton *resetBtn;
@property (weak, nonatomic) IBOutlet UIButton *startBtn;

- (IBAction)reset:(id)sender;
- (IBAction)start:(id)sender;
- (void) updateTimer;
@end

