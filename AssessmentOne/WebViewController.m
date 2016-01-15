//
//  WebViewController.m
//  AssessmentOne
//
//  Created by Richard Martin on 2016-01-15.
//  Copyright © 2016 Richard Martin. All rights reserved.
//

#import "WebViewController.h"
#import "ViewController.h"


@interface WebViewController ()<UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *spinner;


@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // load mobile makers web page
    
    NSURL *url = [NSURL URLWithString:@"http://www.mobilemakers.co"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
    
    self.title = self.theAnswer;
    
    
}

-(void)webViewDidStartLoad:(UIWebView *)webView {
    
    [self.spinner startAnimating];
    
}

-(void)webViewDidFinishLoad:(UIWebView *)webView {
    
    [self.spinner stopAnimating];
    
    
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
