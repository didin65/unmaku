import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PerwalianOnlinePage extends StatefulWidget {
  @override
  _PerwalianOnlinePageState createState() => _PerwalianOnlinePageState();
}

class _PerwalianOnlinePageState extends State<PerwalianOnlinePage> {
  bool mic = false;
  bool cam = false;
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery
        .of(context)
        .size
        .width;
    final _height = MediaQuery
        .of(context)
        .size
        .height;

    return Scaffold(
      bottomNavigationBar: menuBawah(),
      backgroundColor: Colors.white,
      body: Stack(
        overflow: Overflow.visible,
        alignment: AlignmentDirectional.topCenter,
        fit: StackFit.loose,
        children: <Widget>[
          Column(
            children: [
              Container(
                height: _height / 4.5,
                width: _width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.blue, Colors.blueAccent]),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35)),
                ),
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0, bottom: 30.0),
                      child: Image.asset(
                        "assets/images/unmaku.png",
                        scale: 1.5,
                      ),
                    ),
                    SizedBox(
                      width: _width / 6,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 25.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/profile');
                        },
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              'https://simakng.unma.ac.id/files/mahasiswa/large/b637b2d52477e422fbff6ab52e40730e.jpg'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: _height / 20),
                width: _width / 1.1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamedAndRemoveUntil(
                                '/menu',
                                    (Route<dynamic> route) =>
                                false);
                          },
                          child: Icon(Icons.arrow_back_ios_rounded,
                              size: _width / 15),
                        ),
                        Text(
                          'PERWALIAN ONLINE',
                          style: TextStyle(
                              fontFamily: 'Segoe UI',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: _width / 18),
                        ),
                      ],
                    ),
                    Container(
                      width: _width / 1.1,
                      child: Padding(
                        padding:
                        const EdgeInsets.only(top: 20.0, bottom: 10.0),
                        child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0,
                                    bottom: 10.0,
                                    left: 5.0,
                                    right: 5.0),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    Container(
                                      height: _height / 3,
                                      width: _width / 1.3,
                                      child: Card(
                                        elevation: 8.0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8.0)),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(padding: EdgeInsets.all(10),child: CircleAvatar(
                                                    radius: 40,
                                                    backgroundImage: NetworkImage(
                                                        'https://simakng.unma.ac.id/files/mahasiswa/large/b637b2d52477e422fbff6ab52e40730e.jpg'),
                                                  ),),
                                                  Padding(padding: EdgeInsets.all(10),child: Text('Rifa Nurfalah',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 16,
                                                      color: Colors.black,
                                                    ),),),
                                                  Container(
                                                    width: _width / 3,
                                                    height: _height/15,
                                                    child: TextButton(
                                                      style: TextButton.styleFrom(
                                                        backgroundColor: Colors.blue,
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(20),
                                                        ),
                                                      ),
                                                      onPressed: () {},
                                                      child: Text(
                                                        "Join",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Color(0xffffffff),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Padding(padding: EdgeInsets.all(10), child: InkWell(
                                                          onTap: () {
                                                            mic = !mic;
                                                            setState(() {});
                                                          },
                                                          child: mic
                                                              ? Icon(
                                                            Icons
                                                                .mic,
                                                            color: Colors.black,
                                                          )
                                                              : Icon(
                                                            Icons
                                                                .mic_off_rounded,
                                                            color: Colors.blue,
                                                          )),),

                                                      Padding(padding: EdgeInsets.all(10), child: InkWell(
                                                          onTap: () {
                                                            cam = !cam;
                                                            setState(() {});
                                                          },
                                                          child: cam
                                                              ? Icon(
                                                            Icons
                                                                .camera_alt_rounded,
                                                            color: Colors.black,
                                                          )
                                                              : Icon(
                                                            Icons
                                                                .camera_enhance_rounded,
                                                            color: Colors.blue,
                                                          )),)

                                                  ],)
                                                ],
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}


Widget menuBawah() {
  final menu = BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    items: [
      BottomNavigationBarItem(
          icon: Icon(Icons.home), title: Text("Dashboard")),
      BottomNavigationBarItem(
          icon: Icon(Icons.assignment_rounded), title: Text("Perwalian")),
      BottomNavigationBarItem(
          icon: Icon(Icons.laptop_mac), title: Text("Kelas")),
      BottomNavigationBarItem(
          icon: Icon(Icons.library_books_outlined), title: Text("Transkrip")),
      BottomNavigationBarItem(
          icon: Icon(Icons.date_range_rounded), title: Text("Jadwal")),
      BottomNavigationBarItem(
          icon: Icon(Icons.payment_rounded), title: Text("Keuangan")),
    ],
  );

  return menu;
}