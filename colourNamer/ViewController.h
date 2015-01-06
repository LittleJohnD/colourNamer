//
//  ViewController.h
//  colourNamer
//
//  Created by John Dyer on 06/01/2015.
//  Copyright (c) 2015 John Dyer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
-(UIColor *) calcColor; // Returns UIColor from values of sliders
@property (weak, nonatomic) IBOutlet UILabel *colourLabel;

@end

