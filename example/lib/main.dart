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
      body: Container(
        child: Column(
          children: [],
        ),
      ),
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
      body: Container(
        color: Colors.white38,
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Tips: The background color of the design is too dark, so it will be changed to white for easy viewing.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              // 星座
              RoseMenuItem(
                onTap: () {},
                icon: Icon(Icons.star_border, color: Color(0xFF838383)),
                iconRightPadding: 16,
                itemInfo: Padding(
                  padding: EdgeInsets.only(right: 4),
                  child: Text(
                    '星座：',
                    style: TextStyle(color: Color(0xFF838383), fontSize: 20),
                  ),
                ),
                itemTitle: Text(
                  '双子座',
                  style: TextStyle(color: Color(0xFF838383), fontSize: 20),
                ),
                showNextIcon: false,
                iconBottomLine: true,
                bottomLineColor: Colors.black.withOpacity(0.1),
              ),

              // 城市
              RoseMenuItem(
                onTap: () {},
                icon:
                    Icon(Icons.location_city_rounded, color: Color(0xFF838383)),
                iconRightPadding: 16,
                itemInfo: Padding(
                  padding: EdgeInsets.only(right: 4),
                  child: Text(
                    '城市：',
                    style: TextStyle(color: Color(0xFF838383), fontSize: 20),
                  ),
                ),
                itemTitle: Text(
                  '北京市',
                  style: TextStyle(color: Color(0xFF838383), fontSize: 20),
                ),
                showNextIcon: false,
                iconBottomLine: true,
                bottomLineColor: Colors.black.withOpacity(0.1),
              ),
              SizedBox(height: 14),
              // 签名
              RoseMenuItem(
                onTap: () {},
                // Important: No height limit, so that it adapts with the content
                itemHeight: null,
                icon: Icon(Icons.ac_unit, color: Color(0xFF838383)),
                iconRightPadding: 16,
                iconCrossAlign: CrossAxisAlignment.start,
                itemTitle: Text(
                  "签名： " +
                      "一个人总要走陌生的路，看陌生的风景听陌生的歌，然后在某个不经意的瞬间你会发现，原本费尽心机想要忘记的事情真的就这么忘记了",
                  style: TextStyle(color: Color(0xFF838383), fontSize: 20),
                ),
                itemCrossAlign: CrossAxisAlignment.start,
                showNextIcon: false,
                bottomLine: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// TestThreePage
class TestThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Three'),
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
