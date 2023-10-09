//
//  ViewController.h
//  DigitalClock
//
//  Created by Iuri Ferreira on 05/10/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    NSTimer *timer;
    
}

@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UIView *settingsView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segDateControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segColorControl;

- (IBAction)settingsButton:(id)sender;
- (IBAction)colorControl:(id)sender;
- (IBAction)showDateControl:(id)sender;

@end

