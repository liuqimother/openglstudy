//
//  LearnView.m
//  OpenglStudy
//
//  Created by  liuqi on 2017/8/8.
//  Copyright © 2017年  liuqi. All rights reserved.
//

#import "LearnView.h"
#import <OpenGLES/ES2/gl.h>

@interface LearnView()

@property(nonatomic,strong) EAGLContext *mContext;

@property(nonatomic,strong) CAEAGLLayer *mLayer;

@property(nonatomic,assign) GLuint mProgram;

@property(nonatomic,assign) GLuint mColorRenderBuffer;

@property(nonatomic,assign) GLuint mColorFrameBuffer;

- (void)setupLayer;

@end

@implementation LearnView



@end
