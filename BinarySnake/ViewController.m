//
//  ViewController.m
//  BinarySnake
//
//  Created by 科盛数聚 on 2019/3/14.
//  Copyright © 2019年 John. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self uiBuild];
}

- (void)uiBuild{
    
    
    
    
    
    
    int a = 8;
    int b = 20;
    
    UIView *snakeContentView = [[UIView alloc] init];
    [self.view addSubview:snakeContentView];
    [snakeContentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.view).offset(40);
        make.width.offset(300);
        make.height.offset(600);
    }];
    
    for (int i = 0; i < b; i++) {
        
        
        UIView *snakeBodyView = [[UIView alloc] init];
        [snakeContentView addSubview:snakeBodyView];
        snakeBodyView.layer.cornerRadius = 10;
        snakeBodyView.backgroundColor = [UIColor blueColor];
        [snakeBodyView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.height.offset(20);
            make.top.equalTo(snakeContentView).offset(i/a*30);
            if (i/a%2) {
                make.left.equalTo(snakeContentView).offset((a-i%a-1)*30);
            }else{
                make.left.equalTo(snakeContentView).offset(i%a*30);
            }
        }];
        
        UIView *lineView = [[UIView alloc] init];
        lineView.backgroundColor = [UIColor lightGrayColor];
        [snakeContentView addSubview:lineView];
        [lineView mas_makeConstraints:^(MASConstraintMaker *make) {

            if ((i+1)%a == 0) {
                make.top.equalTo(snakeBodyView.mas_bottom);
                make.centerX.equalTo(snakeBodyView);
                make.height.offset(10);
                make.width.offset(8);
            }else{

                make.centerY.equalTo(snakeBodyView);
                if (i/a%2) {
                    make.right.equalTo(snakeBodyView.mas_left);
                    make.height.offset(8);
                    make.width.offset(10);
                }else{
                    make.left.equalTo(snakeBodyView.mas_right);
                    make.height.offset(8);
                    make.width.offset(10);
                }
            }
        }];
        
//        if (i+1 == b) {
//            UIView *headView = [[UIView alloc] init];
//            [snakeContentView addSubview:headView];
//            headView mas_makeConstraints:^(MASConstraintMaker *make) {
//                make.width.height.offset(10);
//                make.cen
//            }
//        }
    }
    
}

@end
