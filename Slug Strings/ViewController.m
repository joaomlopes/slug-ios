//
//  ViewController.m
//  Slug Strings
//
//  Created by João Lopes on 26/01/16.
//  Copyright © 2016 João Lopes. All rights reserved.
//

#import "ViewController.h"
#import "JLSlug/JLSlug.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convertStringToSlug:(id)sender {
    NSString *slug = [JLSlug str_slug:self.txtStringToConvert.text];
    
    self.lblSlugURL.text = slug;
    
}
@end
