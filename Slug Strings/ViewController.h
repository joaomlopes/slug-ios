//
//  ViewController.h
//  Slug Strings
//
//  Created by João Lopes on 26/01/16.
//  Copyright © 2016 João Lopes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txtStringToConvert;
@property (weak, nonatomic) IBOutlet UILabel *lblSlugURL;

- (IBAction)convertStringToSlug:(id)sender;

@end

