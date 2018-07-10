//
//  ViewController.m
//  DesignPattern
//
//  Created by 王立志 on 2018/5/16.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import "ViewController.h"
#import "TFQStraTegy.h"
#import "TFQHat.h"
#import "TFQShoes.h"
#import "TFQGiftA.h"
#import "TFQGiftB.h"
#import "TFQStudentFactory.h"
#import "TFQVolunteerFactory.h"
#import "TFQCopyObject.h"
#import "TFQTestPaperA.h"
#import "TFQTestPaperB.h"
#import "TFQFund.h"
#import "TFQBuilderA.h"
#import "TFQBuilderB.h"
#import "TFQObserver1.h"
#import "TFQObserver2.h"
#import "TFQNotification.h"
#import "TFQDataBaseManager.h"
#import "TFQWork.h"
#import "TFQMorningState.h"
#import "TFQTranslater.h"
#import "TFQNBAKobe.h"
#import "TFQGamePlayer.h"
#import "TFQRecord.h"
#import "TFQHRDepartment.h"
#import "TFQMoneyDepartment.h"
#import "TFQConcreteCompany.h"
#import "TFQPhoneM.h"
#import "TFQPhoneN.h"
#import "TFQPhoneGameA.h"
#import "TFQPhoneGameB.h"
#import "TFQChickenWing.h"
#import "TFQSkewer.h"
#import "TFQWaiter.h"
#import "TFQCook.h"
#import "TFQRequest.h"
#import "TFQLeader1.h"
#import "TFQLeader2.h"
#import "TFQLeader3.h"
#import "TFQUSA.h"
#import "TFQIraq.h"
#import "TFQUnitedNations.h"
#import "TFQWebSite.h"
#import "TFQWebUser.h"
#import "TFQWebFactory.h"
#import "TFQMan.h"
#import "TFQWoman.h"
#import "TFQPersonStateSuccess.h"
#import "TFQPersonStateFail.h"
#import "TFQObjectManager.h"

@interface ViewController ()

@property (nonatomic, strong)UITextField *textField;

@end

// 按照大话设计模式书序，在touchebegan中看即可。也可以从文件底部依次向上看

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 120, 30)];
    self.textField.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.textField];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [self factoryPattern];//工厂模式
//    [self strategyPattern];//策略模式 + 工厂模式
//    [self DecorativePattern];//装饰模式
//    [self proxyPattern];//代理模式
//    [self factoryMethodPattern];//工厂方法模式
//    [self prototypePattern];//原型模式
//    [self templateMethodPattern];//模板方法模式
//    [self appearancePattern];//外观模式
//    [self builderPattern];//建造者模式
//    [self oberverPattern];//观察者模式
//    [self abstraceFactoryPattern];//抽象工厂模式
//    [self statePattern];//状态模式
//    [self adapterPattern];//适配器模式
//    [self mementoPattern];//备忘录模式
//    [self combinatorialPattern];//组合模式
//    [self iteratorPattern];//迭代器模式
//    [self sigletonPattern];//单例模式
//    [self bridgePattern];//桥接模式
//    [self commandPattern];//命令模式
//    [self chainOfResponsibilityPattern];//职责链模式
//    [self mediatorPattern];//中介者模式
//    [self flyweightPattern];//享元模式
    [self interpreterPattern];//解释器模式
//    [self visitorPattern];//访问者模式
}

#pragma mark - 访问者模式
/**
 *  访问者模式：表示一个作用于某对象结构中的各元素的操作。它使你可以在不改变各元素的类的前提下
 *  定义作用于这些元素的新操作。
 *
 *  书中的例子是输出了一段话，男人成功XXX，女人成功XXX，男人失败XXX,女人失败XXX，男人恋爱XXX，
 *  女人恋爱XXX。 这个例子能用访问者模式的前提是人 只有男人跟女人两个类，用了访问者模式之后，如果
 *  要加一个状态男人吃饭XXX，女人吃饭XXX，那么只需要增加一个吃饭的状态就可以了。否则的话需要在男人
 *  类里增加一个吃饭状态，在女人类里增加一个吃饭状态。
 *
 *  此类比较复杂，我在实现的时候也是参照了UML图。
 */
- (void)visitorPattern{
    TFQObjectManager *manager = [[TFQObjectManager alloc] init];
    TFQMan *man = [[TFQMan alloc] initWithName:@"男人"];
    TFQWoman *woman = [[TFQWoman alloc] initWithName:@"女人"];
    [manager addPerson:man];
    [manager addPerson:woman];
    
    TFQPersonStateSuccess *success = [[TFQPersonStateSuccess alloc] init];
    success.name = @"成功";
    TFQPersonStateFail *fail = [[TFQPersonStateFail alloc] init];
    fail.name = @"失败";
 
    [manager display:success];
    [manager display:fail];
}

#pragma mark - 解释器模式
/**
 *  解释器模式：给定一个语言，定义它的文法中的一中表示，并定义一个解释器，这个解释器使用该
 *  表示来解释语言中的句子。
 *
 *  书中举的例子晦涩难懂，我对乐谱这种东西有一种先天的抗拒，那就只好自己写一个通俗易懂的例子
 *  来解释一下这个解释器模式。但是我从心底里感觉这个解释器模式就是对一种或者一系列行文封装成
 *  一个方法，然后调用这个方法来达到目的。类似于工作流一样的东西通过一个非常简便的操作来实现
 *  一些经常发生的操作。
 */
- (void)interpreterPattern{
    
}

#pragma mark - 享元模式
/**
 *  享元模式：运用共享技术有效地支持大量细粒度的对象。
 *
 *  书中举的例子是小菜做网站，做完之后又需要做一个大体类似的网站，直接复制过去也能实现
 *  功能，但是浪费内存浪费时间，这时候就用到了共享模式，把相同的对象用同一个key，存放到字典中。
 *  这样基本上不用创建新对象就可以实现功能。代码中解释的很详细了。可以研读代码。
 */
- (void)flyweightPattern{
    TFQWebFactory *webFactory = [[TFQWebFactory alloc] init];
    TFQWebSite *site1 = [webFactory getWebSiteWithType:@"公司简介"];
    site1.user = [[TFQWebUser alloc] initWithName:@"张三"];
    TFQWebSite *site2 = [webFactory getWebSiteWithType:@"博客"];
    site2.user = [[TFQWebUser alloc] initWithName:@"张si"];
    TFQWebSite *site3 = [webFactory getWebSiteWithType:@"公司简介"];
    site3.user = [[TFQWebUser alloc] initWithName:@"张五"];
    TFQWebSite *site4 = [webFactory getWebSiteWithType:@"公司简介"];
    site4.user = [[TFQWebUser alloc] initWithName:@"张六"];
    
    [webFactory outputWebsites];
}

#pragma mark - 中介者模式
/**
 *  中介者模式：用一个中介者对象来封装一系列的对象交互。中介者使各对象不需要显式地相互
 *  引用，从而使其耦合松散，而且可以独立地改变他们之间的交互。
 *
 *  书中的例子是举得联合国的例子，各国之间交流都要通过联合国。让联合国持有各个国家的属性，
 *  国家的任何交流都要通过联合国转达。
 */
- (void)mediatorPattern{
    TFQUnitedNations *UN = [[TFQUnitedNations alloc] init];
    TFQUSA *USA = [[TFQUSA alloc] initWithMediator:UN];
    USA.name = @"美国";
    TFQIraq *Iraq = [[TFQIraq alloc] initWithMediator:UN];
    Iraq.name = @"伊拉克";
    UN.USA = USA;
    UN.Iraq = Iraq;
 
    [USA sendMessage:@"我要打你"];
    [Iraq sendMessage:@"我不要你打"];
}

#pragma mark - 职责链模式
/**
 *  职责链模式：使多个对象都有机会处理请求，从而避免请求的发送者和接受者之间的耦合关系。
 *  将这个对象连成一条链，并沿着这条链传递该请求，直到有一个对象处理它位置。
 *
 *  书中举得例子是小菜请求加薪，然后需要经理、总监、总经理依次审批。开始的代码是if判断，
 *  虽然也能完成任务，但是略显笨拙，改用职责链模式之后就洋气了许多。
 *  个人感觉职责链模式跟状态模式是一样的，都是分情况，但是区别是啥呢，职责链的层级比较明显，
 *  职责是一步一步变大的，侧重性比较强。
 */
- (void)chainOfResponsibilityPattern{
    TFQRequest *request = [[TFQRequest alloc] init];
    request.requestName = @"张三";
//    request.requestType = @"加薪";
//    request.requestCount = 20000;
        request.requestType = @"请假";
        request.requestCount = 100;
    TFQLeader1 *leader1 = [[TFQLeader1 alloc] initWithName:@"小领导"];
    TFQLeader2 *leader2 = [[TFQLeader2 alloc] initWithName:@"中领导"];
    TFQLeader3 *leader3 = [[TFQLeader3 alloc] initWithName:@"大领导"];
    leader1.superior = leader2;
    leader2.superior = leader3;
    
    [leader1 handelRequest:request];
}

#pragma mark - 命令模式
/**
 *  命令模式：将一个请求封装为一个对象，从而使你可用不同的请求对客户进行参数化；
 *  对请求排队或记录请求日志，以及支持可撤销的操作。
 *
 *  书中的例子讲的是小菜大鸟去吃烤串，然后用代码实现点烤串的操作，这时候就需要用低耦合的方式实现。
 */
- (void)commandPattern{
    TFQWaiter *waiter = [[TFQWaiter alloc] init];
    TFQCook *cook = [[TFQCook alloc] init];
    TFQChickenWing *wing = [[TFQChickenWing alloc] initWithCooke:cook];
    TFQSkewer *skewer = [[TFQSkewer alloc] initWithCooke:cook];
    
    [waiter receiveCommand:wing];
    [waiter receiveCommand:skewer];
    [waiter receiveCommand:wing];
    [waiter notifyCook];
}

#pragma mark - 桥接模式
/**
 *  桥接模式：讲抽象部分与他的实现部分分离，使他们都可以独立地变化。
 *
 *  桥接模式书中举得例子是MN两个品牌的手机，安装两个不同的游戏，开始写的话可能就需要写
 *  M里边有两个游戏属性，N里边有两个游戏属性，这样再有十个手机品牌的话，每个手机品牌就要
 *  写两个手机属性。算下来就是写了二十个手机属性，
 *  现在呢，我们把手机单独分离出来，把游戏也分离出来，给手机添加一个加载游戏的方法，酱紫
 *  的话游戏就需要声明一遍就可以了。
 */
- (void)bridgePattern{
    TFQPhoneM *M = [[TFQPhoneM alloc] init];
    TFQPhoneN *N = [[TFQPhoneN alloc] init];
    TFQPhoneGameA *gameA = [[TFQPhoneGameA alloc] init];
    TFQPhoneGameB *gameB = [[TFQPhoneGameB alloc] init];
    [M setPhoneGame:gameA];
    [M run];
    [M setPhoneGame:gameB];
    [M run];
    [N setPhoneGame:gameA];
    [N run];
}

#pragma mark - 单例模式
/**
 *  单例模式：保证一个类仅有一个实例，并提供一个访问它的全局访问点
 *
 *  单例模式这种吊炸天的东西，大家应该都有使用，最简单的方法就是dispatch_once创建，
 *  但是这种方法创建必须调用对应的类方法，如果用alloc 或者copy创建的话，还是会创建
 *  一个新对象，这时候大家就要重写copywithzone方法，这个大家自行百度吧。
 *  但是自己用的话，来一个类方法就已经够用了。自己雪薇注意一下就可以了。
 *  涉及到java的懒汉式单例，饿汉式单例。
 */
- (void)sigletonPattern{
    //大家可以打印一下试试  我记得onceToken初始化是0  执行之后变为1就再也不执行了。
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        //do something create once
    });
}

#pragma mark - 迭代器模式
/**
 *  迭代器模式：提供一种方法顺序访问一个聚合对象中各个元素，而又不暴露该对象的内部表示
 *
 *  书中举得例子是while循环，知道循环结束，while停止。
*   简单来说就是for循环，把iOS的几种循环列举一下得了。具体的效率问题大家可以自己个儿百度去。
 */
- (void)iteratorPattern{
    for(int i=0; i<10; i++){
        NSLog(@"=%d",i);
    }
    NSArray *array = @[@1,@2,@3,@4];
    for(NSNumber *i in array){
        NSLog(@"==%@",i);
    }
    [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"===%@",obj);
    }];
}


#pragma mark - 组合模式
/**
 *  组合模式：
 *
 *  组合模式简直是一个吊炸天的设计模式，有那么点递归的意思。
 *
 *  书中的例子是写了一个大公司的OA系统，但是大公司下边还有子公司，子公司还要子公司，这时候组合模式的
 *  好处就体现的淋漓尽致。
 *                                 -HR
 *                     -HR         -财务     -HR
 *  下边代码的结构  -北京 -石家庄分公司 -桥西分公司-财务
 *                     -财务        -桥东分公司-HR
 *                                          -财务
 */
- (void)combinatorialPattern{
    TFQConcreteCompany *beijingCompany = [[TFQConcreteCompany alloc] initWithName:@"北京总公司"];
    TFQHRDepartment *beijingHR = [[TFQHRDepartment alloc] initWithName:@"北京HR"];
    TFQMoneyDepartment *beijingMoney = [[TFQMoneyDepartment alloc] initWithName:@"北京财务"];
    [beijingCompany add:beijingHR];
    [beijingCompany add:beijingMoney];
    
    TFQConcreteCompany *shijiazhuangCompany = [[TFQConcreteCompany alloc] initWithName:@"石家庄分公司"];
    [beijingCompany add:shijiazhuangCompany];
    TFQHRDepartment *shijiazhuangHR = [[TFQHRDepartment alloc] initWithName:@"石家庄HR"];
    TFQMoneyDepartment *shijiazhuangMoney = [[TFQMoneyDepartment alloc] initWithName:@"石家庄财务"];
    [shijiazhuangCompany add:shijiazhuangHR];
    [shijiazhuangCompany add:shijiazhuangMoney];
    
    TFQConcreteCompany *qiaodongCompany = [[TFQConcreteCompany alloc] initWithName:@"石家庄桥东分公司"];
    [shijiazhuangCompany add:qiaodongCompany];
    TFQHRDepartment *qiaodongHR = [[TFQHRDepartment alloc] initWithName:@"石家庄桥东HR"];
    TFQMoneyDepartment *qiaodongMoney = [[TFQMoneyDepartment alloc] initWithName:@"石家庄桥东财务"];
    [qiaodongCompany add:qiaodongHR];
    [qiaodongCompany add:qiaodongMoney];
    
    TFQConcreteCompany *qiaoxiCompany = [[TFQConcreteCompany alloc] initWithName:@"石家庄桥西分公司"];
    [shijiazhuangCompany add:qiaoxiCompany];
    TFQHRDepartment *qiaoxiHR = [[TFQHRDepartment alloc] initWithName:@"石家庄桥西HR"];
    TFQMoneyDepartment *qiaoxiMoney = [[TFQMoneyDepartment alloc] initWithName:@"石家庄桥西财务"];
    [qiaoxiCompany add:qiaoxiHR];
    [qiaoxiCompany add:qiaoxiMoney];
    
    //打印结构图
    [beijingCompany displayCompanyWithCount:1];
}

#pragma mark - 备忘录模式
/**
 *  备忘录模式：在不破坏封装性的前提下，捕获一个对象的内部状态，并在该对象之外保存这个状态。
 *  这样以后就可将该对象恢复到原先保存的状态。
 *
 *  我只能说，鸡肋，哈哈哈，就是用第三方类保存了对应的属性而已。
 *  写个例子，打游戏保存血量跟蓝量
 *  其实这些个涉及模式中，每个设计模式都有管理者类，写法更加严谨，但是我就是不想写管理者类。
 */
- (void)mementoPattern{
    TFQGamePlayer *player = [[TFQGamePlayer alloc] init];
    player.blood = @"100";
    player.chaKeLa = @"100";
    TFQRecord *record = [[TFQRecord alloc] init];
    [record saveWithPlayer:player];
    NSLog(@"打仗前血量：%@ 查克拉：%@",player.blood,player.chaKeLa);
    player.blood = @"90";
    player.chaKeLa = @"90";
    NSLog(@"打仗后血量：%@ 查克拉：%@",player.blood,player.chaKeLa);
    [record resurrectionWithPlayer:player];
    NSLog(@"恢复进度后血量：%@ 查克拉：%@",player.blood,player.chaKeLa);
}

#pragma mark - 适配器模式
/**
 *  适配器模式：将一个类的接口转换成客户希望的另外一个接口。适配器模式使得原本由于接口不兼容
 *  而不能一起工作的那些类可以一起工作。
 *
 *  其实大家实际开发中肯定都用过适配器模式，我也用过，原来的老代码有一部分不敢动，但是又有新需求，
 *  只好小小的适配一下，但是那时候用的时候，并不知道这是一个设计模式。
 *
 *  书中的例子说的是姚明刚去NBA工作，不懂英语，无法合理的理解战术，这时候就需要一个翻译来告诉
 *  姚明需要做些什么，适配器的很好提现，通俗易懂。
 */
- (void)adapterPattern{
    TFQNBAPlayer *kobe = [[TFQNBAKobe alloc] initWithName:@"kobe"];
    [kobe attack];
    TFQNBAPlayer *translater = [[TFQTranslater alloc] initWithName:@"yaoming"];
    [translater defense];
}

#pragma mark - 状态模式
/**
 *  状态模式：当一个对象的内在状态改变时允许改变其行为，这个对象看起来像是改变了其类。
 *
 *  书中的例子是小菜加班，上午精神饱满，中午吃饭午休，下午困，干完活就可以正点下班，
 *  干不完活儿，就只能继续加班。这一天的各种状态是以时间判断的，这里边至少要写5、6个if else
 *  语句，以后再做修改就会相当费劲，所以引入了状态模式。
 *
 *  状态模式的巨大优点就是隔离了变化，改了那个状态一目了然别的状态不用管，但是状态模式优点绕。需要
 *  手动实现以下，哪怕是实现一个demo也好
 */
- (void)statePattern{
    TFQWork *work = [[TFQWork alloc] init];
    work.hour = 9;
    [work writeCode];
    work.hour= 13;
    [work writeCode];
    work.hour = 23;
    [work writeCode];
}

#pragma mark - 抽象工厂模式
/**
 *  抽象工厂模式：提供一个创建一系列相关或相互依赖对象的接口，而无需指定它们具体的类。
 *  java里边的接口，iOS这里全部用继承来实现。
 *
 *  先来一波抽象工厂的文字解释，书中的例子就是数据库从sqlserver 切换到了 access数据库，导致大部分代码需要重写。
 *  那是怎么解决这个问题的呢？
 *  从源头上就开始写抽象工厂，然后实例化sqlserver、access两个子类，这样子前期工作量大一点，但是后期切换起来方便。
 *  但是这个东西，我只能大体的跟大家演练一下，说到底我感觉这也是个鸡肋的设计模式。
 *
 *  java里边用到了反射，iOS里边怎么解决这个棘手的问题呢。雪薇有点尴尬。 难道要用NSClassFromString?
 */
- (void)abstraceFactoryPattern{
    //如果想用数据库,只需要修改这里的属性值就可以了
    TFQDataBaseManager.databaseName = @"sqlserver";
    //TFQDataBaseManager.databaseName = @"oracle";
    TFQDataBase *database = [TFQDataBaseManager getDataBase];
    [database connectDB];
    TFQCRUD *crud = [TFQDataBaseManager getCRUD];
    [crud crud];
}

#pragma mark - 观察者模式
/**
 *  建造者模式：定义了一种一对多的依赖关系，让多个观察者对象同时监听某一个主题对象。这个主题对象在状态发生变化时，
 *  会通知所有的观察者对象，使他们能够自动更新自己。
 *
 *  java 中有一个委托事件 public event EventHandler update; ios 里边没有，这里用通知实现。
 *  但是用通知实现起来没什么意思，天天写通知，都快写烂了，但是那又有什么办法呢。
 *  iOS用通知强硬的实现观察者模式，哈哈哈，其实更形象的观察者模式是kvo，大家可以研究一下，其实精髓就是建造子类重写了set方法。
 */
- (void)oberverPattern{
    TFQNotification *notification = [[TFQNotification alloc] init];
    TFQObserver1 *observer1 = [[TFQObserver1 alloc] init];
    TFQObserver2 *observer2 = [[TFQObserver2 alloc] init];
    //监听通知
    [[NSNotificationCenter defaultCenter] addObserver:observer1 selector:@selector(receiveNotifacation) name:@"1" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:observer2 selector:@selector(receive) name:@"2" object:nil];
    
    //创建通知
    NSNotification *no1 = [[NSNotification alloc] initWithName:@"1" object:nil userInfo:nil];
    NSNotification *no2 = [[NSNotification alloc] initWithName:@"2" object:nil userInfo:nil];
    [notification.notifications addObject:no1];
    [notification.notifications addObject:no2];
    
    //发送通知
    [notification sendNotification];
    
    //移除通知
    [[NSNotificationCenter defaultCenter] removeObserver:observer1];
    [[NSNotificationCenter defaultCenter] removeObserver:observer2];
}

#pragma mark - 建造者模式
/**
 *  建造者模式：将一个复杂的对象的构建与他的表示分离，使得同样的构建过程可以创建不同的表示。
 *
 *  书中的例子是用代码画小人儿，画完胖的画瘦的，但是有时候可能会忘记画一条腿，为了避免这种错误就出现了建造者模式
 *  建造者模式在java里边其实就是创建了一个抽象类，让子类继承他必须实现某些方法。这样就不会少调用东西。
 *  但是iOS里边没有抽象类怎么实现呢？那就只能在父类方法实现体里边写输出语句或者alert语句，酱紫少实现方法就会提示你，
 *  但是这个方法只能再运行的时候提示你，没办法，谁让iOS没有抽象类的概念呢。
 *  里边有一个指挥者类，用它来控制建造过程，也用他来隔离用户与建造过程的关联，个人感觉没什么卵用
 *  其实父类里边的这个build方法就是相当于这个指挥者类的功能，本人感觉再写个指挥者类会代码冗余，就直接写到父类里了
 *
 *  下边开始画小人儿
 */
- (void)builderPattern{
    TFQBuilderA *buildA = [[TFQBuilderA alloc] init];
    [buildA beginBuild];
    
    TFQBuilderB *buildB = [[TFQBuilderB alloc] init];
    [buildB beginBuild];
}

#pragma mark - 外观模式
/**
 *  外观模式：为子系统中的一组接口提供一个一致的界面，此模式定义了一个高层接口，这个接口使得这一子系统更加容易使用。
 *
 *  个人理解：外观模式就是迪米特法则的正式运用。让一个第三方的类去给你管理其他的类，你不需要知道其他类的具体实现。
 *  书中的例子是，新股民需要买多支股票，就需要了解多支股票的信息，但是如果新股民找一个管理人的话，那么新股民就
 *  不需要了解股票的具体信息，把钱直接给这个管理人，等着拿利息就行了。
 *
 */
- (void)appearancePattern{
    TFQFund *fund = [[TFQFund alloc] init];
    [fund buy];
    [fund sell];
}

#pragma mark - 迪米特法则
/**
 *  迪米特法则(也叫最少知识原则):如果两个类不必彼此直接通信，那么这两个类就不应当发生直接的相互作用。如果其中一个
 *  类需要调用另一个类的某一个方法的话，可以通过第三者转发这个调用。   强调了类之间的松耦合。
 *
 *  拿书中的例子来说，小菜入职需要去运维部门配置电脑，但是不必要直接找到运维部门的小张去配置电脑，直接找到运维部门儿的
 *  领导说：我要配置电脑，这时候领导叫小张去给你配置电脑，如果小张有事儿，领导还可以指派小李给你配置电脑。耦合性降低。
 *
 *  类之间的耦合越弱，越有利于复用。
 */


#pragma mark - 模板方法模式
/**
 *  模板方法模式：定义一个操作中的算法的骨架，而将一些步骤延迟到子类中，模板方法使得一些子类可以不改变
 *  一个算法的结构即可冲定义该算法的某些特定步骤
 *
 *  模板方法就是用简单的继承才做一些操作。
 *  书中的例子就是老师在黑板上出试卷，学生ABC需要把题目抄下来然后答题，如果学生ABC把题目都抄一遍的话题目可能会抄错，
 *  而且浪费时间，所以就要用一个父类来存放试卷，这时候就要尽可能的减少相同代码的书写，尽量写一次。把不变的代码做好封装。
 */
- (void)templateMethodPattern{
    TFQTestPaperA *testPaperA = [[TFQTestPaperA alloc] init];
    [testPaperA answerQuestion];
    TFQTestPaperB *testPaperB = [[TFQTestPaperB alloc] init];
    [testPaperB answerQuestion];
}

#pragma mark - 原型模式
/**
 *  原型模式：用原型实例指定创建对象的种类，并且通过拷贝政协原型创建新的对象。
 *  原型模式用到了java的重要知识拷贝对象，而且是深拷贝，Java中需要实现Cloneable接口，在clone方法中进行操作。但是不过OC更偏向于Java这种
 *  方式，OC中如果一个对象需要被拷贝，他需要实现协议：<NSCopying>、<NSMutableCopying>从名字上我们可以看到，一个协议是用于不可变对象的，
 *  一个协议适用于可变对象的
 */
- (void)prototypePattern{
    TFQCopyObject *copyObject = [[TFQCopyObject alloc] init];
    copyObject.name = @"1";
    copyObject.array = @[@1,@"2"];
    NSLog(@"%@,%@",copyObject.name,copyObject.array);
    TFQCopyObject *copyObject2 = [copyObject copy];
    copyObject2.name = @"老铁";
    copyObject2.array = @[@4,@"hello world"];
    NSLog(@"%@,%@",copyObject2.name,copyObject2.array);
}


#pragma mark - 工厂方法模式
/**
 *  工厂方法模式：定义一个用于创建对象的接口，让子类决定实例化哪一个类。工厂方法使一个类的实例化延迟到其子类。
 *  工厂方法的精髓是扩展性极强，而且不影响原来的逻辑。
 *  书中例子的雷锋工厂是用接口实现的，但是OC里边没有接口，只好用父类来曲线救国了
 *
 *  书中的例子是学雷锋，现在有学雷锋的学生、志愿者，
 *  如果用简单工厂模式：
 *     那就是创建以下类。需要帮助的老奶奶、学雷锋父类、学雷锋学生子类、学雷锋志愿者子类4个类。
 *  如果是工厂方法模式：
 *     需要创建老奶奶、学雷锋父类、学雷锋工厂、学雷锋学生工厂、学雷锋学生、学雷锋志愿者工厂、学雷锋志愿者6个类。
 *  下边比上边多了两个工厂类，但是修改起来那简直就是很舒服了，简单易操作，易理解。只需要改一个地方。
 *
 */
- (void)factoryMethodPattern{
    //如果要换人的话那么只需要改动这一个地方即可：TFQStudentFactory替换为TFQVolunteerFactory就变成了志愿者学雷锋了
    TFQLeiFengFactory *factory = [[TFQStudentFactory alloc] init];
    TFQLeiFeng *leiFeng = [factory createLeiFeng];
    [leiFeng sweep];
    [leiFeng wash];
}



#pragma mark - 代理模式
/**
 *  代理模式：为其他对象提供一种代理以控制对这个对象的访问。
 *  A通过B达到与C沟通的目的，这就是代理模式。 AB需要实现同一个接口，看起来是B与C沟通，其实B的方法内部都是A的操作，简介实现了
 *  A与C的沟通。
 *  这里的代理其实理念上跟iOS的代理是一样的，只不过iOS的代理是一个弱引用delegate，没有B这个第三方。
 *
 *  既然OC里边没有接口这个概念，那么只好用继承来实现了
 *  例子还用书中的例子，A通过B追求C，追求方式是送礼物
 *
 */
- (void)proxyPattern{
    TFQGirlC *girl = [[TFQGirlC alloc] initWithName:@"小芳"];
    TFQGiftB *giftB = [[TFQGiftB alloc] initWithGirl:girl];
    [giftB sendFlower];
    [giftB sendChocolate];
}

#pragma mark - 装饰模式
/**
 *  装饰模式：动态地给一个对象添加一些额外的职责，就增加功能来说，装饰模式比生成子类更为灵活。
 *  装饰模式用到了一个java的重要知识，构造方法：与类同名没有返回值。
 *
 *  大话涉及模式中举的例子是穿衣服的问题，利用构造方法做一些手脚，把A的子类B的属性赋值到A的子类C中，实现了属性传递。
 *  那我们OC里边怎么办呢，用init 方法，替换了书中例子中的new操作 跟Decorate操作。
 *
 *  我们继续搞穿衣服的例子   person:人类   decorator:服饰父类。 其余的为服饰子类。
 *  写完之后个人感觉装饰模式作用不太大，可能应用场景比较苛刻。不过简直写完是真的很舒服，对继承理解的更深刻了。
 *  show方法这里可能比较绕，大家可以根据方法一行一行捋代码，捋完之后恍然大悟。也可以用笨办法，把继承的show方法全部在当前子类中重写一遍。
 *  这样看起来就比较好理解了。很舒服。
 */
- (void)DecorativePattern{
    TFQPerson *person = [[TFQPerson alloc] initWithName:@"张三"];
    TFQHat *hat = [[TFQHat alloc] initWithPerson:person];
    TFQShoes *shoes = [[TFQShoes alloc] initWithPerson:hat];
    [shoes show];
}

#pragma mark - 依赖倒转原则
/**
 *  依赖倒转原则：高层模块不应该依赖底层模块
 *
 */


#pragma mark - 开放-封闭原则
/**
 *  开放-封闭原则： 软件实体（类、模块、函数等等）应该可以扩展，但是不可修改
 *  当前实体内部应该尽量少修改，但是改实体扩展性要好
 */

#pragma mark - 单一职责原则
/**
 *  单一职责原则： 就一个类而言，应该仅有一个引起它变化的原因
 *  这个解释可以说是通俗易懂了：高内聚低耦合
 */

#pragma mark - StrategyPattern 策略模式
/**
 *  策略模式举的例子是 商场打折、满减、满赠活动，其实在我看来就是一个封装，取了一个装逼的名字而已，
 *  然后这里讲解的例子是把策略模式跟工厂模式结合来实现计算器，其实就是找了一个中间类，把“变化”封装到这个中间类而已。
 */
- (void)strategyPattern{
    [TFQStraTegy getResultWithText:self.textField.text];
}

#pragma mark - FactoryPattern 简单工厂模式
/**
 *  简单工厂模式举的例子是 计算器的实现，很好的诠释了封装、集成、多态的用法。
 */
- (void)factoryPattern{
    [self calculateResult];
}

- (void)calculateResult{
    NSString *str = self.textField.text;
    TFQOperation *operation;
    NSString *flag;
    if([str containsString:@"+"]){
        flag = @"+";
        operation = [[TFQAdd alloc] init];
    }else if([str containsString:@"-"]){
        flag = @"-";
        operation = [[TFQSubtract alloc] init];
    }else if([str containsString:@"*"]){
        flag = @"*";
        operation = [[TFQMultiply alloc] init];
    }else if([str containsString:@"/"]){
        flag = @"/";
        operation = [[TFQDivide alloc] init];
    }else{
        NSLog(@"输入错误");
        return;
    }
    int location = (int)[str rangeOfString:flag].location;
    operation.numA = [[str substringToIndex:location] intValue];
    operation.numB = [[str substringFromIndex:location+1] intValue];
    float result = [operation getResult];
    NSLog(@"%d%@%d = %.2f",operation.numA,flag,operation.numB,result);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
