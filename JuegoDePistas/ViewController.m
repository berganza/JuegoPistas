//
//  ViewController.m
//  JuegoDePistas
//
//  Created by LLBER on 04/11/13.
//  Copyright (c) 2013 LLBER. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    _interruptor = [CALayer layer];
    _interruptor.bounds = CGRectMake(0, 0, 31, 30);
    _interruptor.contents = (id) [UIImage imageNamed:@"interruptor.png"].CGImage;
    _interruptor.position = CGPointMake(54, 210);
    _interruptor.anchorPoint = CGPointMake(0.5, 0.5);
    [self.view.layer addSublayer:_interruptor];

    
    
    // Boton
    _pista = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _pista.tintColor = [UIColor redColor];
    _pista.frame = CGRectMake(450, 40, 40, 40);
    [_pista setTitle:@"Pista" forState:UIControlStateNormal];
    [_pista addTarget:self action:@selector(presionarBoton:) forControlEvents:UIControlEventTouchDown];
    
    
    [self.view addSubview:_pista];
}

-(IBAction) presionarBoton:(id) sender{
    
	_escalarAnimacion = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    NSNumber * factorEscala = [NSNumber numberWithFloat:2.0f];
    _escalarAnimacion.toValue = factorEscala;
    _escalarAnimacion.duration = 1.5f;
    _escalarAnimacion.autoreverses = YES;
    [_interruptor addAnimation:_escalarAnimacion forKey:@"transformAnimation"];

}


- (IBAction)botonInterruptor:(id)sender {
    
    _textoLabel.text = @"Enciende la luz";
    _textoLabel.shadowOffset = CGSizeMake(1, 1);
    _textoLabel.shadowColor = [UIColor colorWithRed:5 green:8 blue:9 alpha:1];
}


@end
