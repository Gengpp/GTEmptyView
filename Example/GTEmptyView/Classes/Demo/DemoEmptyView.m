//
//  DemoEmptyView.m
//  GTEmptyView_Example
//
//  Created by liuxc on 2018/6/27.
//  Copyright © 2018年 liuxc123. All rights reserved.
//

#import "DemoEmptyView.h"

@implementation DemoEmptyView

+ (instancetype)diyEmptyView{
    return [DemoEmptyView emptyViewWithImageStr:@"noData"
                                       titleStr:@"暂无数据"
                                      detailStr:@"请稍后再试!"];
}

+ (instancetype)diyEmptyActionViewWithTarget:(id)target action:(SEL)action{

    return [DemoEmptyView emptyActionViewWithImageStr:@"noNetwork"
                                             titleStr:@"无网络连接"
                                            detailStr:@"请检查你的网络连接是否正确!"
                                          btnTitleStr:@"重新加载"
                                               target:target
                                               action:action];
}

- (void)prepare{
    [super prepare];

    self.autoShowEmptyView = NO;

    self.titleLabTextColor = MainColor(180, 30, 50);
    self.titleLabFont = [UIFont systemFontOfSize:18];

    self.detailLabTextColor = MainColor(80, 80, 80);
}



@end
