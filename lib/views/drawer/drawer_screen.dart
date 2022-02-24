import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:upai_app/provider/selectCatProvider.dart';
import 'package:upai_app/views/auth/sing_in/sing_in_screen.dart';
import 'package:upai_app/views/category/category.dart';
import 'package:upai_app/views/category/category_filter.dart';
import 'package:upai_app/views/drawer/aboutProgram.dart';
import 'package:upai_app/widgets/UserAvatar.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xFF225196), //change your color here
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 16, left: 16, top: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                children: [
                  UserAvatar(),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'User name',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'User id',
                        style:
                            TextStyle(color: Color(0xFF8D8D8D), fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 11,
            ),
            Divider(
              height: 1,
              color: Color(0xFFEBEBEB),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: ListTile(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                      if(Provider.of<SelectCatProvider>(context).category=='' || Provider.of<SelectCatProvider>(context).category=='Другое')
                  return Category();
                      else return CategoryFilter();
                })),
                title: Text(
                  'Категории',
                  style: TextStyle(color: Color(0xFF515151), fontSize: 16),
                ),
                leading:
                    Icon(Icons.dashboard, color: Color(0xFFFF0C72), size: 20),
              ),
            ),
            Divider(
              height: 1,
              color: Color(0xFFEBEBEB),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: ListTile(
                title: Text(
                  'Уведомления',
                  style: TextStyle(color: Color(0xFF515151), fontSize: 16),
                ),
                leading: Icon(Icons.notifications,
                    color: Color(0xFF0B7BFF), size: 20),
              ),
            ),
            Divider(
              height: 1,
              color: Color(0xFFEBEBEB),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: ListTile(
                title: Text(
                  'Горячий кэшбэк',
                  style: TextStyle(color: Color(0xFF515151), fontSize: 16),
                ),
                leading: Icon(Icons.local_fire_department_outlined,
                    color: Color(0xFFFF0707), size: 20),
              ),
            ),
            Divider(
              height: 1,
              color: Color(0xFFEBEBEB),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: ListTile(
                title: Text(
                  'Партнерская программа',
                  style: TextStyle(color: Color(0xFF515151), fontSize: 16),
                ),
                leading: Icon(Icons.supervised_user_circle_outlined,
                    color: Color(0xFF27AE60), size: 20),
              ),
            ),
            Divider(
              height: 1,
              color: Color(0xFFEBEBEB),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: ListTile(
                onTap: ()=>Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context)=>AboutProgram())),
                title: Text(
                  'О программе',
                  style: TextStyle(color: Color(0xFF515151), fontSize: 16),
                ),
                leading: Icon(Icons.announcement_outlined,
                    color: Color(0xFFFF6B00), size: 20),
              ),
            ),
            Divider(
              height: 1,
              color: Color(0xFFEBEBEB),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: ListTile(
                  title: Text(
                    'FAQ',
                    style: TextStyle(color: Color(0xFF515151), fontSize: 16),
                  ),
                  leading: Icon(
                    Icons.help,
                    color: Color(0xFF00C242),
                    size: 20,
                  )),
            ),
            Divider(
              height: 1,
              color: Color(0xFFEBEBEB),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: ListTile(
                  title: Text(
                    'Настройки',
                    style: TextStyle(color: Color(0xFF515151), fontSize: 16),
                  ),
                  leading: Icon(Icons.settings_applications_outlined,
                      color: Color(0xFFC215FF), size: 20)),
            ),
            Divider(
              height: 1,
              color: Color(0xFFEBEBEB),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: ListTile(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => SingInScreen()));
                  },
                  title: Text(
                    'Выйти',
                    style: TextStyle(color: Color(0xFF515151), fontSize: 16),
                  ),
                  leading: Icon(Icons.exit_to_app_outlined,
                      color: Color(0xFFFFA800), size: 20)),
            ),
            Divider(
              height: 1,
              color: Color(0xFFEBEBEB),
            ),
          ],
        ),
      ),
    );
  }
}
