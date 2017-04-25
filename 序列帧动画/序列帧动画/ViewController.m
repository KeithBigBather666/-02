
#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end
@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
}
//点击view就会调用此方法
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //创建可变数组加载图片
    NSMutableArray *arrM=[NSMutableArray array];
    //2.for循环添加凭借图片名称并加载图片
    for (NSInteger i=0; i<25; i++) {
        //3.拼接图片名称
        NSString *imageName=[NSString stringWithFormat:@"father%03zd",i+1];
        //4.加载图片
        UIImage *image=[UIImage imageNamed:imageName];
        //5.把图片添加到可变数组保存起来
        [arrM addObject:image];
    }
    //图片拼接成动态图片
    UIImage *animationImage=[UIImage animatedImageWithImages:arrM duration:arrM.count*0.2];
    
    self.imageView.image=animationImage;
    
}
@end
