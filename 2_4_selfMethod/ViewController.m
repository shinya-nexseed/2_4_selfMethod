//
//  ViewController.m
//  2_4_selfMethod
//
//  Created by Shinya Hirai on 2015/07/16.
//  Copyright (c) 2015年 Shinya Hirai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // メソッドを呼び出す
    // [self sayHelloWorld];
    
    // int i = [self plus];
    // NSLog(@"%d",i);
    
    // [self addNumber:2];
    
    // int answer = [self minusNumber:100];
    // NSLog(@"%d",answer);
    
    int answer = [self calc:5 hoge:10];
    NSLog(@"%d",answer);
}

#pragma mark - 自作メソッド
// - (返り値)メソッド名 {
//    処理
//}

// メソッドの定義
// voidは、返り値いらないよという意味
- (void)sayHelloWorld {
    NSLog(@"Hello World");
}

// 返り値ありのメソッド
- (int)plus {
    return 5;
}

// 引数ありのメソッド
// - (返り値)メソッド名:(クラス名 *)オブジェクト名 {
//    処理
// }

- (void)addNumber:(int)number {
    int answer = 5 + number;
    NSLog(@"%d", answer);
}

// 返り値あり・引数ありのメソッド
// - (返り値)メソッド名:(クラス名 *)オブジェクト名 {
//    処理
// }
- (int)minusNumber:(int)number {
    int answer = 100 - number;
    return answer;
}

// 引数が多数あるメソッド
- (int)calc:(int)firstNum hoge:(int)secondNum {
    int answer = firstNum * secondNum;
    return answer;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
