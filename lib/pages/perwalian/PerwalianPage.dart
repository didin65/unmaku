import 'package:flutter/material.dart';

class PerwalianPage extends StatefulWidget {
  @override
  _PerwalianPageState createState() => _PerwalianPageState();
}

class _PerwalianPageState extends State<PerwalianPage> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black12,
      body: Stack(
        overflow: Overflow.visible,
        alignment: AlignmentDirectional.topCenter,
        fit: StackFit.loose,
        children: <Widget>[
          Column(
            children: [
              Container(
                height: _height / 3.5,
                width: _width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.blue, Colors.blueAccent]),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                ),
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 50.0, bottom: 30.0),
                      child: Image.asset(
                        "assets/images/unmaku.png",
                        scale: 1.5,
                      ),
                    ),
                    SizedBox(
                      width: _width / 5,
                    ),

                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                            '/profile');
                      },
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://simakng.unma.ac.id/files/mahasiswa/large/b637b2d52477e422fbff6ab52e40730e.jpg'),
                      ),
                    ),
                  ],
                ),
              ),
                  Container(
                    padding: EdgeInsets.only(
                        top: _height / 20),
                    width: _width / 1.3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('PERWALIAN',
                          style: TextStyle(
                              fontFamily: 'Segoe UI',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: _width / 18),),
                        Container(
                          width: _width / 1.3,
                          child: Padding(
                            padding:
                            const EdgeInsets.only(top: 20.0, bottom: 10.0),
                            child: Card(
                              elevation: 8.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
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
                                        InkWell(
                                            onTap: () {
                                              Navigator.of(context)
                                                  .pushNamed('/krs');
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                          color: Colors.black,
                                                          width: 0.1))),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.only(
                                                        right: 10.0,
                                                        left: 10.0),
                                                    child: Icon(Icons.person,
                                                        size: _width / 10),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      "Kartu Rencana Studi",
                                                      style: TextStyle(
                                                          fontFamily: 'Segoe UI',
                                                          color: Colors.black,
                                                          fontWeight: FontWeight.w600,
                                                          fontSize: _width / 22),
                                                    ),
                                                  ),
                                                  Icon(
                                                      Icons
                                                          .arrow_forward_ios_rounded,
                                                      size: _width / 15)
                                                ],
                                              ),
                                            )),
                                        InkWell(
                                            onTap: () {
                                              Navigator.of(context)
                                                  .pushNamed('/riwayatkrs');
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                          color: Colors.black,
                                                          width: 0.1))),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.only(
                                                        right: 10.0,
                                                        left: 10.0),
                                                    child: Icon(Icons.person,
                                                        size: _width / 10),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      "Riwayat Krs",
                                                      style: TextStyle(
                                                          fontFamily: 'Segoe UI',
                                                          color: Colors.black,
                                                          fontWeight: FontWeight.w600,
                                                          fontSize: _width / 22),
                                                    ),
                                                  ),
                                                  Icon(
                                                      Icons
                                                          .arrow_forward_ios_rounded,
                                                      size: _width / 15)
                                                ],
                                              ),
                                            )),
                                        InkWell(
                                          onTap: () {
                                            Navigator.of(context)
                                                .pushNamed('/perwalianonline');
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 10.0, left: 10.0),
                                                child: Icon(
                                                    Icons.wysiwyg_rounded,
                                                    size: _width / 10),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "Perwalian Online",
                                                  style: TextStyle(
                                                      fontFamily: 'Segoe UI',
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: _width / 22),
                                                ),
                                              ),
                                              Icon(
                                                  Icons
                                                      .arrow_forward_ios_rounded,
                                                  size: _width / 15)
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
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