//
//  ViewController.m
//  SpriteKit
//
//  Created by MAEDA HAJIME on 2015/03/23.
//  Copyright (c) 2014年 HAJIME MAEDA. All rights reserved.
//

#import "ViewController.h"
#import "MyScene.h"

@interface ViewController()

// View01
@property (weak, nonatomic) IBOutlet SKView *view01;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // ビュー（SKView）の設定 view01
    SKView * skView = (SKView *)self.view01;
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
    skView.showsPhysics = YES;
    
    // シーンの作成、設定
    SKScene * scene = [MyScene sceneWithSize:
                       skView.bounds.size];
    
    
    // アスペクト比を維持して表示
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // シーンのオープン
    [skView presentScene:scene];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

// 次の画面ボタンアクション
- (IBAction)nextButton{
    
    // Segueの呼び出し
    [self performSegueWithIdentifier:@"goSecondViewSegue" sender:self];
}

// Segue画面遷移
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Segueの特定
    if ( [[segue identifier] isEqualToString:@"goSecondViewSegue"] ) {
        //SecondViewController *secondViewController = [segue destinationViewController];
        //ここで遷移先ビューのクラスの変数receiveStringに値を渡している
        //secondViewController.receiveString = sendString;
    }
}

// バックExit
- (IBAction)mainViewReturnActionForSegue:(UIStoryboardSegue *)segue
{
    
}

@end
