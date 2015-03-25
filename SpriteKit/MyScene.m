//
//  MyScene.m
//  SpriteKit
//
//  Created by MAEDA HAJIME on 2015/03/23.
//  Copyright (c) 2014年 HAJIME MAEDA. All rights reserved.
//

#import "MyScene.h"

@implementation MyScene

#pragma mark - initWithSize
// イニシャライザ
-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithRed:0.15
                                               green:0.15
                                                blue:0.3
                                               alpha:1.0];
        // ノードの追加（ラベル）
        {
            // 山小屋画像生成
            SKSpriteNode* iv;
            iv = [SKSpriteNode spriteNodeWithImageNamed:@"images.png"];
            //iv = [SKSpriteNode spriteNodeWithImageNamed:@"koyo.png"];
            // 下からの（0,0）桜画像のセンターを指定 山小屋表示位置
            iv.position = CGPointMake(160, 90);
            // 山小屋表示
            [self addChild:iv];
            
        }
        
        // 雪を降らす ノードの追加（エミッター）放射する
        {
            // パーティクルの参照
            NSBundle *bnd = [NSBundle mainBundle];
            NSString *pth = [bnd pathForResource:@"ParticleSnow" ofType:@"sks"];
            
            SKEmitterNode *nod = [NSKeyedUnarchiver unarchiveObjectWithFile:pth];
            
            nod.position = CGPointMake(CGRectGetMidX(self.frame),
                                       CGRectGetMaxY(self.frame));
            [self addChild:nod];
        }
    }
    return self;
}

// FPS(Frame Per Second)毎に実行
-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
