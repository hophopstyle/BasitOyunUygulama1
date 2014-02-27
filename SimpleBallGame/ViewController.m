//
//  ViewController.m
//  SimpleBallGame
//
//  Created by Samet Albayrak  on 9.02.2014.
//  Copyright (c) 2014 Samet Albayrak . All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    pos = CGPointMake(10.0, 8.0);
}
-(IBAction)start
{
    [startbutton setHidden:YES];
    randomMain = [NSTimer scheduledTimerWithTimeInterval:(0.03) target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
}

-(void)onTimer
    {
        [self checkCollision];
    
        enemy.center     = CGPointMake(enemy.center.x+pos.x, enemy.center.y+pos.y);
        if (enemy.center.x> 320 || enemy.center.y < 0)
        {
            pos.x = -pos.x;
        
        }
        if (enemy.center.y > 480 || enemy.center.y < 0)
        {
            pos.y = -pos.y;
        }
    }

-(void)checkCollision
{
    if (CGRectIntersectsRect(player.frame, enemy.frame))
        {
            [randomMain invalidate];
            [startbutton setHidden:NO];
       
            
            CGRect frame = [player frame];
            frame.origin.x = 137.0f;
            frame.origin.y = 326.0;
            [player setFrame:frame];
            
            
            CGRect frame2 = [enemy frame];
            frame2.origin.x =137.0f;
            frame2.origin.y = 20.0;
            [enemy setFrame:frame2];
            
            
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Oyunu Kaybettin!" message:[NSString stringWithFormat:@"Yakalandın Tekrar Dene!"] delegate:nil cancelButtonTitle:@"Tekrar Oyna" otherButtonTitles:nil];
            [alert show];
           //[alert release];
            
            }
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *myTouch = [[event allTouches] anyObject];
    player.center   =[myTouch locationInView:self.view];
    
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
