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
    [self builderPattern];//建造者模式
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
