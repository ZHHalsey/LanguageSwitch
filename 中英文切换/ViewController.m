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
     6 > 给我们的项目指定默认的语言, 比如我们这个Localizable.strings只包括英文和中文, 其他不包括的要都默认使用英文, 比如如果是日本的话就默认用英文
            做法 :
                     将项目plist中的开发地区改为en即可
                     <key>CFBundleDevelopmentRegion</key>
                     <string>en</string>
                修改步骤 >
                    1 > 找到项目中的info 右键 Open As->Source Code
                    2 > 找到
                         <key>CFBundleDevelopmentRegion</key>
                         <string>$(DEVELOPMENT_LANGUAGE)</string>
                    3 > 把下面的那个$(DEVELOPMENT_LANGUAGE)换成 en 就可以了
        上面第六步就是设置我们的默认语言
     7 > 关于那个Base的介绍
             开启项目的国际化选项会有一个开关Use Base Internationlization，在Localizable.strings中也会有(Base)文件。一开始我很自以为是地以为Base的意思是如果项目并没有对某个语言做国际化，那么就使用Base语言，然而经过试验，发现事实并非是这样的，只是自己自作聪明罢了。下面看一下官方对Base Internationlization的解释：
             Base internationalization separates user-facing strings from .storyboard and .xib files. It relieves localizers of the need to modify .storyboard and .xib files in Interface Builder. Instead, an app has just one set of .storyboard and .xib files where strings are in the development language—the language that you used to create the .storyboard and .xib files. These .storyboard and .xib files are called the base internationalization. When you export localizations, the development language strings are the source that is translated into multiple languages. When you import localizations, Xcode generates language-specific strings files for each .storyboard and .xib file. The strings files don’t appear in the project navigator until you import localizations or add languages.
             In Xcode 5 and later, base internationalization is enabled by default. If you have an older project, enable base internationalization before continuing, as described in Enabling Base Internationalization.
             简单的说，实际上Base Internationlization是为xib和storyboard来服务的。
             这也说明了一个问题，很多你原以为的东西事实上并不是一回事，时间久了你会自然而然地认为那是真理而不是当初的揣测，等真正暴露出为难了就很难发现了。
     
        那么iOS系统中语言选取的原则究竟是什么呢？
             我举个例子：假设我的应用使用的开发语言是英语，同时对法语、日语、阿拉伯语做了国际化。然而我的系统语言设置的是中文，那么打开应用会显示什么语言呢？ 答案是根据你系统的首选语言列表而定，在系统设置－语言设置的界面，有一栏列表叫做首选语言列表，假设你当前系统语言是中文，但是之前一次选择过阿拉伯文为系统语言，那么此事打开你的应用，将会显示阿拉伯文。
     
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
