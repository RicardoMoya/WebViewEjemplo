//
//  VCweb.h
//  WebViewEjemplo
//
//  Created by Ricardo Moya Garcia on 28/01/13.
//  Copyright (c) 2013 Ricardo Moya Garcia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCweb : UIViewController <UIWebViewDelegate>{
    UIWebView *webView;
    UIActivityIndicatorView *activity;
    NSTimer *timer;
}


@property (nonatomic, strong) NSString *url;
@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activity;

@end
