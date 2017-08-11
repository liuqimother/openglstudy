//
//  ViewController.m
//  OpenglStudy
//
//  Created by  liuqi on 16/11/18.
//  Copyright © 2016年  liuqi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    
}

@property(strong,nonatomic)EAGLContext *context;

@property(strong,nonatomic)GLKBaseEffect *effect;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2];
    [EAGLContext setCurrentContext:self.context];
    GLKView *mView = (GLKView *)self.view;
    mView.context = self.context;
    
    GLfloat squareVertexData[] =
    {
        0.5, -0.5, 0.0f,    1.0f, 0.0f, //右下
        0.5, 0.5, -0.0f,    1.0f, 1.0f, //右上
        -0.5, 0.5, 0.0f,    0.0f, 1.0f, //左上
        
        0.5, -0.5, 0.0f,    1.0f, 0.0f, //右下
        -0.5, 0.5, 0.0f,    0.0f, 1.0f, //左上
        -0.5, -0.5, 0.0f,   0.0f, 0.0f, //左下
    };
    
    GLuint buffer;
    glGenBuffers(1, &buffer);
    glBindBuffer(GL_ARRAY_BUFFER, buffer);
    glBufferData(GL_ARRAY_BUFFER, sizeof(squareVertexData), squareVertexData, GL_STATIC_DRAW);
    glEnableVertexAttribArray(GLKVertexAttribPosition);
    glVertexAttribPointer(GLKVertexAttribPosition, 3, GL_FLOAT, GL_FALSE, sizeof(GLfloat)*5, (GLfloat *)NULL+0);
    glEnableVertexAttribArray(GLKVertexAttribTexCoord0);
    glVertexAttribPointer(GLKVertexAttribTexCoord0, 2, GL_FLOAT, GL_FALSE, sizeof(GLfloat)*5, (GLfloat *)NULL+3);
    
    [self updateTexture];
}

- (void)updateTexture
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"png"];
    GLKTextureInfo *textInfo = [GLKTextureLoader textureWithContentsOfFile:filePath options:nil error:nil];
    self.effect = [[GLKBaseEffect alloc] init];
    self.effect.texture2d0.enabled = GL_TRUE;
    self.effect.texture2d0.name = textInfo.name;
}

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect
{
    glClearColor(0.9, 0.6, 1.0, 1.0);
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
    [self.effect prepareToDraw];
//    glDrawArrays(GL_TRIANGLES, 3, 5);
    glDrawArrays(GL_TRIANGLES, 0, 3);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
