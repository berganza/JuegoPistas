//
//  ViewController.h
//  JuegoDePistas
//
//  Created by LLBER on 04/11/13.
//  Copyright (c) 2013 LLBER. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property CALayer * interruptor;
@property CABasicAnimation * escalarAnimacion;

@property UIButton * pista;


- (IBAction)botonInterruptor:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *textoLabel;

@end
