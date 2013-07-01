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
	* 在父视图中添加过多的SubView会带来的问题（尝试替代用drawRect方法实现）
	
FirstVC为第一个控制器，视图为A，SecondVC为第二个控制器，视图为B.
---

---

第一次
---

* `第一次从父视图加载A视图时日志如下：`

2013-07-01 17:52:24.078 7_1UIViewController[6213:907] -[ZHFirstSubViewController loadView]
2013-07-01 17:52:24.081 7_1UIViewController[6213:907] -[ZHFirstSubViewController viewDidLoad]
2013-07-01 17:52:24.084 7_1UIViewController[6213:907] -[ZHFirstSubViewController viewWillAppear:]
2013-07-01 17:52:24.445 7_1UIViewController[6213:907] -[ZHFirstSubViewController viewDidAppear:]

* `第一次再加载视图B，日志如下：`

2013-07-01 17:54:00.082 7_1UIViewController[6213:907] -[ZHSecondViewController loadView]
2013-07-01 17:54:00.084 7_1UIViewController[6213:907] -[ZHSecondViewController viewDidLoad]
2013-07-01 17:54:00.085 7_1UIViewController[6213:907] -[ZHFirstSubViewController viewWillDisappear:]
2013-07-01 17:54:00.086 7_1UIViewController[6213:907] -[ZHSecondViewController viewWillAppear:]
2013-07-01 17:54:00.443 7_1UIViewController[6213:907] -[ZHFirstSubViewController viewDidDisappear:]
2013-07-01 17:54:00.446 7_1UIViewController[6213:907] -[ZHSecondViewController viewDidAppear:]

* `从B返回到A视图，日志如下：`

2013-07-01 17:55:11.246 7_1UIViewController[6213:907] -[ZHSecondViewController viewWillDisappear:]
2013-07-01 17:55:11.247 7_1UIViewController[6213:907] -[ZHFirstSubViewController viewWillAppear:]
2013-07-01 17:55:11.605 7_1UIViewController[6213:907] -[ZHSecondViewController viewDidDisappear:]
2013-07-01 17:55:11.607 7_1UIViewController[6213:907] -[ZHFirstSubViewController 
viewDidAppear:]

* `从A返回到父视图：`

2013-07-01 17:56:47.711 7_1UIViewController[6213:907] -[ZHFirstSubViewController viewWillDisappear:]
2013-07-01 17:56:48.069 7_1UIViewController[6213:907] -[ZHFirstSubViewController viewDidDisappear:]



第二次
---

* `第二次从父视图加载A`

2013-07-01 17:58:06.669 7_1UIViewController[6213:907] -[ZHFirstSubViewController viewWillAppear:]
2013-07-01 17:58:07.028 7_1UIViewController[6213:907] -[ZHFirstSubViewController viewDidAppear:]

* `第二次从A到B：`

2013-07-01 18:00:12.488 7_1UIViewController[6213:907] -[ZHFirstSubViewController viewWillDisappear:]
2013-07-01 18:00:12.490 7_1UIViewController[6213:907] -[ZHSecondViewController viewWillAppear:]
2013-07-01 18:00:12.848 7_1UIViewController[6213:907] -[ZHFirstSubViewController viewDidDisappear:]
2013-07-01 18:00:12.849 7_1UIViewController[6213:907] -[ZHSecondViewController viewDidAppear:]

* `第二次从B返回A`

2013-07-01 18:00:47.494 7_1UIViewController[6213:907] -[ZHSecondViewController viewWillDisappear:]
2013-07-01 18:00:47.495 7_1UIViewController[6213:907] -[ZHFirstSubViewController viewWillAppear:]
2013-07-01 18:00:47.852 7_1UIViewController[6213:907] -[ZHSecondViewController viewDidDisappear:]
2013-07-01 18:00:47.854 7_1UIViewController[6213:907] -[ZHFirstSubViewController viewDidAppear:]

* `第二次从A返回到父视图`

2013-07-01 18:01:20.918 7_1UIViewController[6213:907] -[ZHFirstSubViewController viewWillDisappear:]
2013-07-01 18:01:21.276 7_1UIViewController[6213:907] -[ZHFirstSubViewController viewDidDisappear:]








		
	 