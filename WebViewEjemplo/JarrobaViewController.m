//
//  JarrobaViewController.m
//  WebViewEjemplo
//
//  Created by Ricardo Moya Garcia on 28/01/13.
//  Copyright (c) 2013 Ricardo Moya Garcia. All rights reserved.
//

#import "JarrobaViewController.h"
#import "VCweb.h"

@interface JarrobaViewController ()

@end

@implementation JarrobaViewController

@synthesize myTextFiled;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 * Esta funcion es para que cuando el Usuario toque fuera de
 * un campo de texto, desaparezca el teclado
 */
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [[event allTouches] anyObject];
    
    // Listo los campos de texto
    if ([myTextFiled isFirstResponder] && [touch view] != myTextFiled) {
        [myTextFiled resignFirstResponder];
    }
    
    [super touchesBegan:touches withEvent:event];
}


/*
 * Método para pasar a la siguiente pantalla la URL que se introduce
 */
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"pasarURL"]){
        VCweb * web = [segue destinationViewController];
        web.url = myTextFiled.text;
    }
}

@end
