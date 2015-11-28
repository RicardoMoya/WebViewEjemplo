//
//  VCweb.m
//  WebViewEjemplo
//
//  Created by Ricardo Moya Garcia on 28/01/13.
//  Copyright (c) 2013 Ricardo Moya Garcia. All rights reserved.
//

#import "VCweb.h"

@interface VCweb ()

@end

@implementation VCweb

@synthesize webView;
@synthesize activity;
@synthesize url;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    webView.hidden = YES;
    NSURL *web = [NSURL URLWithString:url];
    NSURLRequest *requestURL = [NSURLRequest requestWithURL:web];
    [webView loadRequest: requestURL];
    
    
    // Creo el Timer para que el activity este en funcionamiento mientras se carga la pagina web
    timer = [NSTimer scheduledTimerWithTimeInterval:(1.0/2.0) target:self selector:@selector(tick) userInfo:nil repeats:YES];
}


/*
 * Método que activa y desactiva el activity (La ruletita)
 */
-(void) tick {
    if(webView.loading){    // Mientras la web se esta cargando
        
        [activity startAnimating];
        
    }else{                  // Cuando la web se ha cargado
        
        [activity stopAnimating];
        activity.hidden = YES;
        webView.hidden = NO;
        
    }
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
