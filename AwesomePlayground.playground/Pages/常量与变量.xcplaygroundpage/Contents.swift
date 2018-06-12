 
//: 常量与变量

//相信大家学编程时最先接触的就是常量与变量，作为最基础的存在，swift在定义变量与常量中作了精简，相对于Java，swift省略了数据类型，类型由等号右边的值自动推导，下面和java做一个比较

/*
 Java:
 private final String personName = "小C";
 private int age = 24;
 */

 // swift:
 
let personName = "小C"
var age = 24

// 上面定义一个人的姓名和年龄，可以看出swift的定义要比Java简洁不少，let为常量，var为变量，且不需要指定数据类型
// 要想知道我们定义的类型是什么，可以按住‘option’键，然后点击'personName',可以看出显示的为 let personName: String
// swift语句结尾不需要分号，当然加上也不会报错，最好还是不要加
// 也就是说 变量与常量的内容是由赋值的类型决定的，不过我们也可以指定其类型，比如：
let personName1:String = "小C"
var age1:Int = 24

//像java一样，你可以定义多个变量或者常量，用逗号分隔，不过要手动指定其类型，否则会报错，例如：
var day,year,month:Int

//常量与变量名不能包含数学符号，箭头，保留的（或者非法的）Unicode 码位，连线与制表符。也不能以数字开头，但是可以在常量与变量名的其他地方包含数字。

//和Java一样 我们可以通过print来输出到控制台, 字符串可以用‘+’连接，也可以通过“\(msg)”来拼接：
var title = "Hello"
var msg = "World"

print(title + msg)
print("Hello \(msg)")

 //:定义整数，浮点数
var wordCount = title.characters.count
var price = 2.25
var phoneNumber = 133_1234_1234

// 可以看到 上面的wordCount取的是‘Hello’的字符数，为Int, price为2.25，类型为double,数值中可以用_分隔，增强可读性。
// Double表示64位浮点数。当你需要存储很大或者很高精度的浮点数时请使用此类型。
// Float表示32位浮点数。精度要求不高的话可以使用此类型
// Swift 是一个类型安全（type safe）的语言,所以它会在编译你的代码时进行类型检查（type checks），并把不匹配的类型标记为错误。这可以让你在开发的时候尽早发现并修复错误。

 //: 类型转换
 //在swift中 不支持隐式转换，比如
 var num = 10
 var num2 = 10.1
// var sum = num2 + num  这句话会报错，annot be applied to operands of type 'Double' and 'Int',必须使用显示转换：
var sum = num + Int(num2)
var sum1 = Double(num) + num2
 
 //: 类型别名
 //我们可以将数据类型起一个别名，如下所示：
 typealias 整数 = Int
 typealias 字符串 = String
 var num3:整数 = 20
 var num4:字符串 = "类型别名"

 //: Boolean 布尔值
 //这里和Java的Boolean无差异 只有false和true两个值，不过写法为Bool
 var isSuccess = true
 var isResult:Bool = false
 
 
 //: 元组 tuples（重要）
 
// 元组是把多个值组合成一个复合值，元组中的类型可以是任意类型且类型可以不同
// 定义一个节日 在java中可以这样定义
 // private HashMap<String,String> festival = new HashMap();
 // festival.put("1.1",”元旦“);
 // festival.put("4,5",”清明“);
 
 //在swift中可以使用元组定义，这是Java中所没有的，下面演示三种常用的定义方式
 
//可以看出 元组中数据按逗号分隔且数据不需要一致，可以通过下标的形式取值 输出： 5.4是清明，总计放3天假
 var festival = ("1.1","元旦",3)
 print("\(festival.0)是\(festival.1)，总计放\(festival.2)天假")
 
 // 第二种 我们可以省略变量名进行定义
 var (date,type,days) = ("5.4","清明",3)
 print("\(date)是\(type)，总计放\(days)天假")
 
 //第三种 可以像Json格式那样，给每个值赋予一个Key
 var festival1 = (日期:"1.1", 节日:"元旦", 假期:3)
 print("\(festival.0)是\(festival.1)，总计放\(festival.2)天假")
 
 
 //:可选类型 optionals
 //这是一种处理值可能缺失的情况， 有值则取，无值为nil,定义时在变量名后面加一个‘？’,表示此变量可能没有值
 var code:Optional = 0
 var code1:Int? = 0
 //这是两种定义方式，nil表示没有值，有点像Java中的null
 //nil不能用于非可选的常量和变量。如果你的代码中有常量或者变量需要处理值缺失的情况，请把它们声明成对应的可选类型。
 //使用时按需要判断不为nil
 if code != nil{
    print(code)
 }
 //另外可以通过强制解包的形式 通过‘!’,来获取一个非nil的值,前提是我们可以确定这个变量中一定有值
 print(code!)
 
 //错误处理  我们可以选择将异常抛出，也可以选择自己捕获,
 func exSum() throws {
    
 }
 //下面的代码类似于Java Try Catch
 do {
    //运行正常
    try exSum()
 } catch  {
    //运行异常
 }
 
 
 
 
 




