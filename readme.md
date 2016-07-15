####为了更好的了解VC之间的数据传输，同时更好的应对面试，我对于几种VC传值常见的方法进行了解，同时完成了这个DEMO。

---

**以下是传值方式列表：**

1. init 传值（即在创建VC的时候就对响应的参数进行设置）
2. property 传值（即属性赋值）
3. Router 传值（这个在OC中被使用，因为作者没有写Swift版本，所以先开个坑，估计我会填坑）
4. Delegate 传值（通过协议和代理传值）
5. 闭包（block）传值  （通过swift中的闭包，类似于OC中的block传值）
6. Notification 传值 （通过消息中心进行传值）
7. KVO 传值  （通过观察者模式进行传值）
8. AppDelegate 传值 通过Appdelegate进行传值 
9. NSUserDefault 传值 通过NSUserDefault传值
10. 通过static进行全局变量的存储，这里就不再进行演示