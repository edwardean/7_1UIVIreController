7月1日 UIVIewController
====
Proj:7_1UIViewController
---
* Target：
	1. **View生命周期**
	2. **视图内存控制**
	3. **复合视图设计**

* Via：

		通过阅读appledoc对viewController的属性和medhods的理解和认识在proj中在几个重要的关于视图life cycle和memory管理的方法中做测试，内容主要有以下几点：
		
	* 视图创建，加载以及卸载的时机
	* didReceiveMemoryWarning方法在收到内存警告时并且在ARC下会做那些操作，其中测试几种环境下的该方法的操作：
		1. 视图在前台显示
		2. 视图已被push，比如navigation
		3. 应用在后台
	* 在内存警告后视图在哪里进行重建的问题
	* 视图的透明属性所带来的开销
	* 在父视图中添加过多的SubView会带来的问题（尝试替代用drawRect方法实现）
	
另外为加深理解记忆代码中多处摘抄AppleDoc中的comment
--
		
	 