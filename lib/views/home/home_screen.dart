import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:upai_app/provider/selectTabProvider.dart';
import 'package:upai_app/views/pages/notifications.dart';
import 'package:upai_app/views/pages/dashboard.dart';
import 'package:upai_app/views/pages/history.dart';
import 'package:upai_app/views/pages/profile/profile.dart';
import 'package:upai_app/widgets/floatingAction.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<Widget> screens = [
    Dashboard(),
    Notifications(),
    history(),
    Profile(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: Provider.of<SelectTabProvider>(context).currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        // notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        Provider.of<SelectTabProvider>(context,listen: false).toggleSelect(Dashboard(),0); // if user taps on this dashboard tab will be active
                      },
                      child: Icon(
                        Icons.home_outlined,
                        color: Provider.of<SelectTabProvider>(context).currentTab == 0 ? Color(0xFFFF6B00) : Color(0xFF225196),
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        Provider.of<SelectTabProvider>(context,listen: false).toggleSelect(Notifications(),1); // if user taps on this dashboard tab will be active
                      },
                      child: Icon(
                        Icons.notifications_none_outlined,
                        color: Provider.of<SelectTabProvider>(context).currentTab == 1 ? Color(0xFFFF6B00) : Color(0xFF225196),
                      ),
                    )
                  ],
                ),
              ),

              // Right Tab bar icons

              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Row(
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        Provider.of<SelectTabProvider>(context,listen: false).toggleSelect(history(),2); // if user taps on this dashboard tab will be active
                      },
                      child: Icon(
                        Icons.access_time_outlined,
                        color: Provider.of<SelectTabProvider>(context).currentTab == 2 ? Color(0xFFFF6B00) : Color(0xFF225196),
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        Provider.of<SelectTabProvider>(context,listen: false).toggleSelect(Profile(),3); // if user taps on this dashboard tab will be active
                      },
                      child: Icon(
                        Icons.perm_identity_outlined,
                        color: Provider.of<SelectTabProvider>(context).currentTab == 3 ? Color(0xFFFF6B00) : Color(0xFF225196),
                      ),
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}