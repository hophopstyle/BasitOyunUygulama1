//
//  ViewController.h
//  SimpleBallGame
//
//  Created by Samet Albayrak  on 9.02.2014.
//  Copyright (c) 2014 Samet Albayrak . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
            IBOutlet UIButton *startbutton;
            NSTimer * randomMain;
            CGPoint pos;
    IBOutlet UIImageView *player;    // UI image view türünde bir oyuncu oluşturduk
    IBOutlet UIImageView *enemy;     // aynı şekilde bir de düşman enemy oluşturduk.
    

}
-(IBAction)start;

@end
