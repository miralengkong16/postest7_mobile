import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:landing_page/batudinding.dart';
import 'package:landing_page/derawan.dart';
import 'package:landing_page/form_pengaduan.dart';
import 'package:landing_page/goabiru.dart';
import 'package:landing_page/kakaban.dart';
import 'package:landing_page/profil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final switchController n = Get.put(switchController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Obx(() => Container(
            color: n.switchValue.value
                ? Color.fromARGB(255, 195, 36, 36)
                : Colors.deepPurple)),
        actions: [
          Obx(() => Switch(
                value: n.switchValue.value,
                onChanged: (newValue) {
                  n.switchValue(newValue);
                },
              )),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
                accountName: Text(
                  "Mira Sartika Lengkong",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text(
                  "mirasl025@gmail.com",
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/women.png",
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) {
                    return HomeScreen();
                  },
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profil"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) {
                    return Profil();
                  },
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.help_center),
              title: Text("Pengaduan"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) {
                    return FormPengaduan();
                  },
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
              //   onTap: () {
              //     Navigator.push(context, MaterialPageRoute(
              //       builder: (_) {
              //         return Profil();
              //       },
              //     ));
              //   },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(children: [
            //SearchBar
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 16, bottom: 8),
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Material(
                          elevation: 5,
                          shadowColor: Color(0xffDDDADA),
                          //text field
                          child: TextField(
                            cursorColor: Color.fromARGB(255, 0, 0, 0),
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: "Cari ..",
                                hintStyle: TextStyle(color: Colors.white),
                                prefixIcon: Container(
                                  child: Image.asset(
                                    "assets/cari.png",
                                  ),
                                )),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 16, top: 8),
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  //Recomendation..
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Recomendation ...",
                      style: TextStyle(
                        color: Color(0xff1D1617),
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 16,
                            bottom: 16,
                          ),
                          width: 200,
                          height: 239,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            gradient: LinearGradient(colors: [
                              Color(0xff9DCEFF).withOpacity(0.2),
                              Color(0xff92A3FD).withOpacity(0.2),
                            ]),
                          ),
                          child: Column(
                            children: [
                              Image.asset("assets/place/kakaban.jpg"),
                              SizedBox(
                                height: 10,
                              ),
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Pulau Kakaban",
                                    style: TextStyle(
                                      color: Color(0xff1D1617),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                    // textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 14,
                                  ),
                                  Text(
                                    "4,4",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: ((context) => Kakaban()),
                                        ));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    alignment: Alignment.center,
                                    child: const Text(
                                      'Lihat',
                                      style: const TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //batu dinding
                        Container(
                          margin: EdgeInsets.only(
                              top: 16, bottom: 16, left: 8, right: 8),
                          width: 200,
                          height: 239,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            gradient: LinearGradient(colors: [
                              Color(0xffEEA4CE).withOpacity(0.2),
                              Color(0xffC58BF2).withOpacity(0.2),
                            ]),
                          ),
                          child: Column(
                            children: [
                              Image.asset("assets/place/batudinding.jpg"),
                              SizedBox(
                                height: 10,
                              ),
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Batu Dinding",
                                    style: TextStyle(
                                      color: Color(0xff1D1617),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                    // textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 14,
                                  ),
                                  Text(
                                    "4,3",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: ((context) => BatuDinding()),
                                        ));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    alignment: Alignment.center,
                                    child: const Text(
                                      'Lihat',
                                      style: const TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //goa biru maratua
                        Container(
                          margin: EdgeInsets.only(
                            top: 16,
                            bottom: 16,
                          ),
                          width: 200,
                          height: 239,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xff9DCEFF).withOpacity(0.2),
                                Color(0xff92A3FD).withOpacity(0.2),
                              ],
                            ),
                          ),
                          child: Column(
                            children: [
                              Image.asset("assets/place/cermin.jpg"),
                              SizedBox(
                                height: 10,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Derawan",
                                    style: TextStyle(
                                      color: Color(0xff1D1617),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                    // textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 14,
                                  ),
                                  Text(
                                    "4,3",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: ((context) => GoaBiru()),
                                        ));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    alignment: Alignment.center,
                                    child: const Text(
                                      'Lihat',
                                      style: const TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}

class switchController extends GetxController {
  var switchValue = false.obs;
}
