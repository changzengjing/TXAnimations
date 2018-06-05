//
//  TXHomeViewController.m
//  TXAnimations
//
//  Created by niegaotao on 2018/6/4.
//  Copyright © 2018年 niegaotao. All rights reserved.
//

#import "TXHomeViewController.h"
#import "TXAnimation.h"

@interface TXHomeViewController ()

@end

@implementation TXHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    CGFloat w = UIScreen.mainScreen.bounds.size.width;
    CGFloat radius = (w-5*3)/2;
    
    NSMutableArray *sublayers = [NSMutableArray arrayWithCapacity:4];
    [sublayers addObject:[TXAnimation replicatorLayer_Circle:radius]];
    [sublayers addObject:[TXAnimation replicatorLayer_Wave:radius]];
    [sublayers addObject:[TXAnimation replicatorLayer_Triangle:radius]];
    [sublayers addObject:[TXAnimation replicatorLayer_Grid:radius]];
    [sublayers addObject:[TXAnimation replicatorLayer_Trans:radius]];
    
    for(NSInteger loop = 0; loop < sublayers.count; loop++){
        NSInteger col = loop%2;
        NSInteger row = loop/2;
        
        UIView *v = [[UIView alloc] initWithFrame:CGRectMake(5+(radius+5)*col, 64+5+(radius+5)*row, radius, radius)];
        v.backgroundColor = [UIColor colorWithRed:248/255.0 green:248/255.0 blue:248/255.0 alpha:1];
        [v.layer addSublayer:sublayers[loop]];
        [self.view addSubview:v];
    }
    
}
@end
