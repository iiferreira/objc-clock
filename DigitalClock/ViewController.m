//
//  ViewController.m
//  DigitalClock
//
//  Created by Iuri Ferreira on 05/10/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.settingsView.hidden = YES;
    self.dateLabel.hidden = NO;
    [self updateTimer];
}

- (void)viewWillAppear:(BOOL)animated {
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
}

- (void)updateTimer {
    
    NSDateFormatter *timeFormat = [[NSDateFormatter alloc]init];
    [timeFormat setDateFormat:@"HH:mm:ss"];
    self.timerLabel.text = [timeFormat stringFromDate:[NSDate date]];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"d MMM, yyyy"];
    self.dateLabel.text = [dateFormat stringFromDate:[NSDate date]];
    
}


- (IBAction)showDateControl:(id)sender {
    
    switch (self.segDateControl.selectedSegmentIndex) {
            case 0:
            self.dateLabel.hidden = NO;
                break;
            case 1:
            self.dateLabel.hidden = YES;
                break;
            default:
                break;
        }
    
}

- (IBAction)colorControl:(id)sender {
    
    switch (self.segColorControl.selectedSegmentIndex) {
            case 0:
            [ self.view setBackgroundColor:[UIColor colorWithRed:0.133 green:0.149 blue:0.141 alpha:1.0]];
            [ self.settingsView setBackgroundColor:[UIColor colorWithRed:0.133 green:0.149 blue:0.141 alpha:1.0]];
            [ self.timerLabel setTextColor:[UIColor colorWithRed:0.7 green:0.69 blue:0.66 alpha:1.0] ];
                break;
            case 1:
            [ self.view setBackgroundColor:[UIColor colorWithRed:0.7 green:0.69 blue:0.66 alpha:1.0] ];
            [ self.settingsView setBackgroundColor:[UIColor colorWithRed:0.7 green:0.69 blue:0.66 alpha:1.0] ];
            [ self.timerLabel setTextColor:[UIColor colorWithRed:0.133 green:0.149 blue:0.141 alpha:1.0] ];
                break;
            default:
                break;
        }
    
}

- (IBAction)settingsButton:(id)sender {
    if (self.settingsView.hidden) {
        self.settingsView.hidden = NO;
    } else {
        self.settingsView.hidden = YES;
    }
}
@end
