import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:upai_app/widgets/UserAvatar.dart';
import 'package:upai_app/widgets/appBar.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Widget> listN = [
    Stack(
      fit: StackFit.passthrough,
      overflow: Overflow.visible,
      children: [
        Container(
          width: 332,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFF313131),
              boxShadow: [
                BoxShadow(
                    color: Color(0x40000000).withOpacity(0.25),
                    blurRadius: 10,
                    offset: Offset(0, 6))
              ]),
          child: Padding(
            padding: const EdgeInsets.only(left: 14),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 17,
                  right: 143,
                ),
                child: Text(
                  'Кешбэка много не бывает',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  softWrap: true,
                ),
              ),
              SizedBox(height: 7),
              Padding(
                padding: const EdgeInsets.only(right: 112),
                child: Text(
                  "Летай сколько угодно, получай за каждую покупку до 15%",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                  softWrap: true,
                ),
              ),
              SizedBox(
                height: 31,
              ),
              Text(
                'До 30.12.2020',
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              SizedBox(
                height: 8,
              )
            ]),
          ),
        ),
        Positioned(
            bottom: 10,
            right: 8,
            child: Image.asset(
              'assets/img/kesh.png',
              height: 180,
              width: 122,
            ))
      ],
    ),
    Stack(
      fit: StackFit.passthrough,
      overflow: Overflow.visible,
      children: [
        Container(
          width: 332,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFF313131),
              boxShadow: [
                BoxShadow(
                    color: Color(0x40000000).withOpacity(0.25),
                    blurRadius: 10,
                    offset: Offset(0, 6))
              ]),
          child: Padding(
            padding: const EdgeInsets.only(left: 14),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 17,
                  right: 143,
                ),
                child: Text(
                  'Кешбэка много не бывает',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  softWrap: true,
                ),
              ),
              SizedBox(height: 7),
              Padding(
                padding: const EdgeInsets.only(right: 112),
                child: Text(
                  "Летай сколько угодно, получай за каждую покупку до 15%",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                  softWrap: true,
                ),
              ),
              SizedBox(
                height: 31,
              ),
              Text(
                'До 30.12.2020',
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              SizedBox(
                height: 8,
              )
            ]),
          ),
        ),
        Positioned(
            bottom: 10,
            right: 8,
            child: Image.asset(
              'assets/img/kesh.png',
              height: 180,
              width: 122,
            ))
      ],
    ),
    Stack(
      fit: StackFit.passthrough,
      overflow: Overflow.visible,
      children: [
        Container(
          width: 332,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFF313131),
              boxShadow: [
                BoxShadow(
                    color: Color(0x40000000).withOpacity(0.25),
                    blurRadius: 10,
                    offset: Offset(0, 6))
              ]),
          child: Padding(
            padding: const EdgeInsets.only(left: 14),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 17,
                  right: 143,
                ),
                child: Text(
                  'Кешбэка много не бывает',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  softWrap: true,
                ),
              ),
              SizedBox(height: 7),
              Padding(
                padding: const EdgeInsets.only(right: 112),
                child: Text(
                  "Летай сколько угодно, получай за каждую покупку до 15%",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                  softWrap: true,
                ),
              ),
              SizedBox(
                height: 31,
              ),
              Text(
                'До 30.12.2020',
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              SizedBox(
                height: 8,
              )
            ]),
          ),
        ),
        Positioned(
            bottom: 10,
            right: 8,
            child: Image.asset(
              'assets/img/kesh.png',
              height: 180,
              width: 122,
            ))
      ],
    ),
  ];
  int slideIndex = 0;
  List<String> CategoryName = [
    'Магазины',
    'Активный отдых',
    'Кино и театры',
    'Кафе и рестораны',
    'Для детей',
    'Игровые клубы',
    'Сауны и бани',
    'Отели и хостелы',
    'Аптеки',
    'Автоуслуги и товары',
    'Косметика и парфюмерия',
    'Оптика',
    'Аксессуары',
    'Товары для дома',
    'Ювелирные изделия',
    'Красота и здровье',
    'SPA и косметология',
    'Химчистка',
    'Зоомагазины',
    'Другое',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AllAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              trailing: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFFF6B00),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      '1520 сом',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
              ),
              title: Text(
                'User name',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              leading: UserAvatar(),
            ),
            SizedBox(height: 26),
            CarouselSlider(
              items: listN,
              options: CarouselOptions(
                pageSnapping: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    slideIndex = index;
                  });
                },
                height: 160,
                viewportFraction: 1,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 14,
                  height: 1,
                  color:
                      slideIndex == 0 ? Color(0xFFFF6B00) : Color(0xFFC4C4C4),
                ),
                SizedBox(width: 9),
                Container(
                  width: 14,
                  height: 1,
                  color:
                      slideIndex == 1 ? Color(0xFFFF6B00) : Color(0xFFC4C4C4),
                ),
                SizedBox(width: 9),
                Container(
                  width: 14,
                  height: 1,
                  color:
                      slideIndex == 2 ? Color(0xFFFF6B00) : Color(0xFFC4C4C4),
                ),
              ],
            ),
            ListTile(
              leading: Text(
                'Категории',
                style: TextStyle(color: Color(0xFF313131), fontSize: 16),
              ),
              trailing: Text(
                'Всё',
                style: TextStyle(color: Color(0xFF8D8D8D), fontSize: 12),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 14),
              height: 110,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, _) => SizedBox(width: 0),
                itemCount: CategoryName.length,
                itemBuilder: (context, index) => Category(
                    CategoryName[index], 'assets/img/category/cat$index.png'),
              ),
            ),
            ListTile(
              leading: Text(
                'Горящие кешбеки',
                style: TextStyle(color: Color(0xFF313131), fontSize: 16),
              ),
              title: Image.asset(
                'assets/img/hotKeshIcon.png',
                width: 20,
                height: 20,
                alignment: Alignment.topLeft,
              ),
              trailing: Text(
                'Всё',
                style: TextStyle(color: Color(0xFF313131), fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    HotKesh(0, 5, 193, 'Бир Эки бургер', 'Fast food', 25),
                    SizedBox(width: 10),
                    HotKesh(1, 3, 27, 'Enter kg', 'Электро техника', 16)
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Text(
                'Новинки',
                style: TextStyle(color: Color(0xFF313131), fontSize: 16),
              ),
              title: Image.asset(
                'assets/img/newIcon.png',
                width: 20,
                height: 20,
                alignment: Alignment.topLeft,
              ),
              trailing: Text(
                'Всё',
                style: TextStyle(color: Color(0xFF8D8D8D), fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    HotKesh(2, 4, 193, 'Baby Store', 'Для детей', 14),
                    SizedBox(width: 10),
                    HotKesh(3, 5, 27, 'Cinematika', 'Кино и театр', 24)
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Text(
                'Магазины',
                style: TextStyle(color: Color(0xFF313131), fontSize: 16),
              ),
              trailing: Text(
                'Всё',
                style: TextStyle(color: Color(0xFF8D8D8D), fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Container(
                height: 115,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Magazine(0, 4.5, 'Эльдорадо', 'электро техника'),
                    SizedBox(width: 10),
                    Magazine(1, 4, 'LC waikiki', 'Одежда и обувь'),
                    SizedBox(width: 10),
                    Magazine(2, 5, 'Derimod', 'Одежда и обувь'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 47,
            )
          ],
        ),
      ),
    );
  }

  Widget Magazine(int image,double rat,String name,String cat){
    return Container(
      padding: EdgeInsets.only(left: 5,right: 5,top: 13,bottom: 17),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color(0x1A000000).withOpacity(0.1),
                blurRadius: 4,
                offset: Offset(0, 4)),
          ],
          border: Border.all(
              width: 0.5, color: Color(0xFF929292).withOpacity(0.37)),
          borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: 100,
        child: Column(
          children: [
            Image.asset('assets/img/magazine/mag$image.png',width: 90,height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RatingBar.builder(
                    initialRating: rat,
                    itemSize: 12,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Color(0xFFFF0707),
                    ),
                    onRatingUpdate: (rating) {
                    }),
                SizedBox(width: 2.5),
                Text(
                  '$rat',
                  style:
                  TextStyle(color: Color(0xFFFF0707), fontSize: 12),
                ),
              ],
            ),
            SizedBox(height: 9),
            Text(name,style: TextStyle(color: Colors.black,fontSize: 12),),
            Text(cat,style: TextStyle(color: Colors.black,fontSize: 10),)
          ],
        ),
      ),
    );
  }

  Widget Category(String name, String image) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 89,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x1A000000).withOpacity(0.1),
                        blurRadius: 4,
                        offset: Offset(0, 4)),
                  ],
                  border: Border.all(
                      width: 0.5, color: Color(0xFF929292).withOpacity(0.37)),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(22),
                child: Image.asset(
                  image,
                  height: 22,
                  width: 22,
                ),
              ),
            ),
            SizedBox(height: 13),
            Text(
              name,
              style: TextStyle(color: Colors.black, fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget HotKesh(
      int image, double rat, int otzyv, String name, String cat, int kesh) {
    return Container(
      width: 200,
      child: Column(
        children: [
          Container(
            width: 200,
            height: 85,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    width: 2.5, color: Color(0xFF929292).withOpacity(0.37)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 7,
                      offset: Offset(0, 6),
                      color: Color(0x33000000))
                ],
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/img/hotKesh/kesh$image.jpg'))),
          ),
          SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      RatingBar.builder(
                          initialRating: rat,
                          itemSize: 12,
                          itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Color(0xFFFF0707),
                              ),
                          onRatingUpdate: (rating) {
                            setState(() {
                              rat = rating;
                            });
                          }),
                      SizedBox(width: 2.5),
                      Text(
                        '$rat',
                        style:
                            TextStyle(color: Color(0xFFFF0707), fontSize: 12),
                      ),
                      SizedBox(width: 2),
                      Text(
                        '($otzyv отзыва)',
                        style:
                            TextStyle(color: Color(0xFF313131), fontSize: 10),
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    name,
                    style: TextStyle(color: Color(0xFF313131), fontSize: 12),
                  ),
                  SizedBox(height: 5),
                  Text(
                    cat,
                    style: TextStyle(color: Color(0xFF8D8D8D), fontSize: 10),
                  )
                ],
              ),
              SizedBox(width: 22),
              Container(
                width: 25,
                child: Text(
                  'до $kesh%',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xFF27AE60), fontSize: 10),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
