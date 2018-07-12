//
//  ViewController.m
//  中英文切换
//
//  Created by klgzwork001 on 2018/7/11.
//  Copyright © 2018年 klgzwork001. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UILabel *label1 = [[UILabel alloc]init];
    label1.frame = CGRectMake(10, 100, 300, 50);
    label1.backgroundColor = [UIColor grayColor];
    label1.text = NSLocalizedString(@"ok", nil);
    [self.view addSubview:label1];
    /*
        实现中英文切换步骤(这里的中英文切换是根据自己本地手机语音来的)
     1 > 新建Localizable.string文件 New File > iOS > Resoure > Strings file
     2 > 弹出的Save As 后面就是这个文件的名字, 我们命名为Localizable
     3 > 点击我们创建的这个Localizable.strings文件, 右侧面板点击设置一下
     4 > 然后选择target > 左侧选择 PROJECT 下的第一个 > info > Language下面点击+ > 添加自己支持的语言
     5 > 然后在我们的这个strings文件中添加同一个key对应不同语言的value就行了, 具体使用就是上面的几行代码
     6 > 如果我们创建的Localizable.strings只包含中文和英文, 那么本机设置语言为其他的, 比如日语韩语的话, 会默认从Base里面读
     
        特别注意 :
     如果创建.strings文件是自定义的名字的话，如当前我起名为 Internation.strings,那么调用的方式为：
     NSLocalizedStringFromTable(@”title”,@”Internation”, nil)
     NSLocalizedStringFromTable(@”name”,@”Internation”, nil)
     当自定义名字后，使用NSLocalizedString的方式不起作用，这里要特别注意，注意，注意！！！(重要的说三遍)；
     */

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
