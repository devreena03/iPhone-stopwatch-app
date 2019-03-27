//
//  ViewController.m
//  stopwatcher
//
//  Created by Kumari, Reena on 9/30/18.
//  Copyright © 2018 Kumari, Reena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize timecount, resetBtn, startBtn;

- (void)viewDidLoad {
    [super viewDidLoad];
    running = NO;
    count = 0;
    timecount.text = @"00:00.00";
    
    startBtn.layer.cornerRadius = 45;
    resetBtn.layer.cornerRadius = 45;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)reset:(id)sender {
        running = NO;
        [startBtn setTitle:@"START" forState:UIControlStateNormal];
        [myTimer invalidate];
        myTimer = nil;
        count = 0;
        timecount.text = @"00:00.00";
    
    
}

- (IBAction)start:(id)sender {
    if(running == NO){
        //start timer
        running = YES;
        [startBtn setTitle:@"STOP" forState:UIControlStateNormal];
        if(myTimer == nil) {
            myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
        }
    } else {
        //stop timer
        running = NO;
        [startBtn setTitle:@"START" forState:UIControlStateNormal];
        [myTimer invalidate];
        myTimer = nil;
    }
}

- (void) updateTimer {
    count++;
    int min = count/(60*100);
    int sec = count/100;
    int milisec = count%100;
    if(sec >= 60){
        sec = sec % 60;
    }
    timecount.text = [NSString stringWithFormat:@"%02d:%02d.%02d",min, sec, milisec];
}
@end
