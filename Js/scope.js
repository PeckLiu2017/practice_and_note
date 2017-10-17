// 作用域这个词的第一个用法是词法作用域
// 这种用法描述了你的源代码中的范围
// 这个范围内你可以使用变量名访问变量

// 此外，作用域还指内存作用域

// 即使一段代码全是注释没有任何函数
// 仍然包含了一个作用域
// 即全局作用域
// 这个程序的每一个变量都储存其中

// 函数 aHero 随机生成了值 Gal
// 并将其赋值给 hero
// 第二行也有一个简单的赋值运算
// 这次被赋于的值是一个跨越了几行的函数
// 但解释器会暂时忽略 function 里面的内容
// 即以下内容：
// var foil = aFoil()
// var saga = function() {
//   var deed = aDeed()
//   log(hero + deed + foil)
// }
// saga()
// saga()
// 这些代码只会在这个函数被调用时运行
// 因此这行代码的作用是将一个新的键值对 newSage = {f}
// 加入全局作用域环境中
// 现在执行环境像是键值对的集合
// 跟对象有点相同
// 但有一个误解是
// 内存作用域和内存对象是一回事
// 因为它们都由解释器完全分开保存
// 而且在访问执行环境时的很多限制
// 在访问对象时并不存在
// 很多我们学过的规则
// 恰好可以用于执行环境
// 但你绝不能在程序中混合使用
// 除开这些相似之处
// 它们存在于完全不同的世界
// 几乎永不交互
// 举例说明一下
// 你绝不可能储存一个包含很多环境的数组
// 却可以储存一个包含很多对象的数组
// 你无法像对象遍历键一样
// 在执行环境中去遍历变量名
// 因此虽然它们都是键值数据存储结构
// 但你只能使用完全不同的方式与它们交互
// 继续看下一行代码
// 运行函数 newSage
// 将创建一个新的执行环境
// 来为该函数新的局部变量提供空间
// 然后在该函数保持运行的情况下
// 新的执行环境将变成解释器新的当前环境
// var foil = aFoil()将为当前作用域创建一个新变量
// foil = "Cow"
// var saga = function()为前作用域创建另一个新变量
// sage = {f}
// 执行到 saga() 时
// 程序会在变量 sage 中查找
// 为了直到 saga() 中的括弧在调用哪对函数
// 解释器将检查变量 sage
// 是否在其当前环境即以下环境
// foil = "Cow" sage = {f}
// 中具有意义
// 然后找到了变量 sage
// 它的值为一个函数对象
// sage 后面的括号
// 告诉解释器调用这个函数
// 并将解释器的搜索起始范围移至其中
// 然后解释器增加一个新键值对
// deed = aDeed()
// 接下来调用三个变量
// 解释器开始像外层搜索
// 查找符合搜索值的最近结果
// 首先它寻找 hero
// 找不到
// 一直往外直到全局作用域中找到 hero
// 接着查找 deep
// 在当前作用域中就找到了
// 然后查找 foil
// 从当前作用域开始
// 再次往外查找
// 然后将串联起来的字符串输出到系统日志
// 这个函数就这样结束了
// 随后解释器跳回该函数被调用的位置
// 继续处理
// 同时作用域叶再次变成
// foil = "Cow" sage = {f} deed = "Eyes"
// 第二次调用 saga() 会创建一个新的执行环境
// 这个环境用来储存新的绑定
// 此时 deed 被随机分配了另一个字符串
// deed = "Tips"
// log(hero + deed + foil) 输出
// "GalTipsCow"
// 然后解释器跳回函数被调用的位置
// 当前环境也拓展到外层
// 此外，这都是第一次调用 newSage 的过程
//

function aHero() {
  return  "Gal";
}


function aFoil() {
  return "Cow"
}

var deed = ["uhu","aha","Tips","Eyes"]
function aDeed() {
  return deed.pop()
}

var hero = aHero();
var newSage = function() {
  var foil = aFoil()
  var saga = function() {
    var deed = aDeed();
    console.log(hero + deed + foil);
  };
  saga();
  saga();
};
newSage();
newSage();
