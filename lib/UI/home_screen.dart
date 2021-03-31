import 'package:flutter/material.dart';
import 'package:makeupstore/UI/SittingsShoplist.dart';
import 'package:makeupstore/UI/settingProfile.dart';
import 'package:makeupstore/widgets/destination_carousel.dart';
import 'package:makeupstore/widgets/DiscountDay_carousel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;
  List<IconData> _icons = [
    FontAwesomeIcons.boxTissue,
    FontAwesomeIcons.brush,
    FontAwesomeIcons.gift,
    FontAwesomeIcons.solidAddressCard ,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {

        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? (Colors.amber[50])
              : Colors.amber[100],
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Colors.pinkAccent[100]
              : Colors.pink[100],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Object index;
    Object currentIndex;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'What would you like to find?',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
              )
                  .toList(),
            ),
            SizedBox(height: 20.0),
            DestinationCarousel(),
            SizedBox(height: 20.0),
            DiscountDay_carousel(),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    elevation: 20,
    selectedFontSize: 20,
    iconSize: 30,
    selectedItemColor: Colors.pink[100],
    unselectedItemColor: Colors.amber[100],
    showSelectedLabels: true,
    showUnselectedLabels: false,
        onTap:
            (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(

            icon: Icon(
              Icons.search,

              size: 30.0,

            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.linked_camera,
              size: 30.0,

            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: NetworkImage('http://i.imgur.com/zL4Krbz.jpg'),


            ),
            title: SizedBox.shrink(),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){//???
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) =>SittingsShoplist()));
        },
        tooltip: '',
        child: Icon(Icons.add ,color: Colors.pink[200],),
        backgroundColor: Colors.amber[50],
      ),
    );
  }
}
