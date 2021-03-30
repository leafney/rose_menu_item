import 'package:flutter/material.dart';
import 'package:rose_menu_item/rose_menu_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('rose_menu_item'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => TestOnePage()));
                },
                child: Text('Test One'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => TestTwoPage()));
                },
                child: Text('Test Two'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => TestThreePage()));
                },
                child: Text('Test Three'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// TestOnePage
class TestOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test One'),
      ),
      body: Container(),
    );
  }
}

/// TestTwoPage
class TestTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Two'),
      ),
      body: Container(),
    );
  }
}

/// TestThreePage
class TestThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Three'),
      ),
      body: Container(
        color: Color(0xff3E3D4C),
        child: Column(
          children: [
            SizedBox(height: 50),
            // Part one
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: RoseMenuItem(
                onTap: () {},
                itemTitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'UserName',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    Text(
                      '18565612312',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                itemHeight: 80,
                icon: CircleAvatar(
                  child: Icon(
                    Icons.people,
                    color: Color(0xff3E3D4C),
                    size: 30,
                  ),
                  backgroundColor: Colors.white,
                  radius: 24,
                ),
                bottomLine: false,
                startPadding: 6,
                iconRightPadding: 16,
                nextIcon: Icon(
                  Icons.navigate_next,
                  color: Colors.white,
                  size: 36,
                ),
              ),
            ),
            Container(height: 6, color: Colors.black),
            // Part two
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Column(
                children: [
                  // 车辆管理
                  RoseMenuItem(
                    onTap: () {},
                    itemTitle: Text(
                      '车辆管理',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    itemHeight: 60,
                    icon: CircleAvatar(
                      backgroundColor: Color(0xffCFB78D),
                      child: Icon(
                        Icons.people,
                        color: Color(0xff3E3D4C),
                      ),
                      radius: 16,
                    ),
                    startPadding: 12,
                    iconRightPadding: 16,
                    rightText: Text(
                      '粤B3232ls',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    nextIcon: Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                      size: 36,
                    ),
                  ),

                  // 车辆授权
                  RoseMenuItem(
                    onTap: () {},
                    itemTitle: Text(
                      '车辆授权',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    itemHeight: 60,
                    icon: CircleAvatar(
                      backgroundColor: Color(0xffCFB78D),
                      child: Icon(
                        Icons.people,
                        color: Color(0xff3E3D4C),
                      ),
                      radius: 16,
                    ),
                    startPadding: 12,
                    iconRightPadding: 16,
                    nextIcon: Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                      size: 36,
                    ),
                  ),

                  // 手势密码
                  RoseMenuItem(
                    onTap: () {},
                    itemTitle: Text(
                      '手势密码',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    itemHeight: 60,
                    icon: CircleAvatar(
                      backgroundColor: Color(0xffCFB78D),
                      child: Icon(
                        Icons.people,
                        color: Color(0xff3E3D4C),
                      ),
                      radius: 16,
                    ),
                    startPadding: 12,
                    iconRightPadding: 16,
                    bottomLine: false,
                    showNextIcon: false,
                    rightText: Switch(
                      value: true,
                      onChanged: (changed) {},
                      activeColor: Color(0xffE25C4A),
                    ),
                  ),
                ],
              ),
            ),
            Container(height: 6, color: Colors.black),

            // Part three
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Column(
                children: [
                  // 客服电话
                  RoseMenuItem(
                    onTap: () {},
                    itemTitle: Text(
                      '客服电话',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    itemHeight: 60,
                    icon: CircleAvatar(
                      backgroundColor: Color(0xffCFB78D),
                      child: Icon(
                        Icons.people,
                        color: Color(0xff3E3D4C),
                      ),
                      radius: 16,
                    ),
                    startPadding: 12,
                    iconRightPadding: 16,
                    showNextIcon: false,
                    rightText: Text(
                      '400-10220-1022',
                      style: TextStyle(color: Color(0xffCFB78D), fontSize: 17),
                    ),
                  ),

                  // 救援电话
                  RoseMenuItem(
                    onTap: () {},
                    itemTitle: Text(
                      '救援电话',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    itemHeight: 60,
                    icon: CircleAvatar(
                      backgroundColor: Color(0xffCFB78D),
                      child: Icon(
                        Icons.people,
                        color: Color(0xff3E3D4C),
                      ),
                      radius: 16,
                    ),
                    startPadding: 12,
                    iconRightPadding: 16,
                    bottomLine: false,
                    showNextIcon: false,
                    rightText: Text(
                      '3202923920',
                      style: TextStyle(color: Color(0xffCFB78D), fontSize: 17),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
