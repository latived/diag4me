import 'package:diagnose4me/pages/exam_detail_page.dart';
import 'package:diagnose4me/services/authentication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class HomePage extends StatelessWidget {
  HomePage({this.userId, this.auth, this.logoutCallback});

  final String userId;
  final BaseAuth auth;
  final VoidCallback logoutCallback;
  final sendersList = ["Exame 1", "Exame 2", "Exame 3"];
  final subjectList = ["Chest X-ray", "Chest CT", "Chest CT"];
  final datesList = ["02/02/2020", "03/02/2020", "12/02/2020"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Diag4Me'), actions: <Widget>[
        IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: logoutCallback,
        ),
      ]),
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        width: double.maxFinite,
        child: ListView.builder(
          itemBuilder: (context, position) {
            return GestureDetector(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding:
                              const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 6.0),
                              child: Text(
                                sendersList[position],
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 12.0),
                              child: Text(
                                subjectList[position],
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                datesList[position],
                                style: TextStyle(color: Colors.grey),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.star_border,
                                  size: 35.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 2.0,
                      color: Colors.grey,
                    )
                  ],
                ),
              onTap: () {
                  final details = [sendersList[position], subjectList[position], datesList[position]];
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ExameDetailPage(details: details,)
                ));
              },
            );
          },
          itemCount: sendersList.length,
        ),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 22.0),
        children: [
          SpeedDialChild(
              child: Icon(Icons.insert_photo),
              label: "Foto de Exame",
              onTap: () => print("Camera")),
          SpeedDialChild(
              child: Icon(Icons.insert_drive_file),
              label: "Upload de Exame",
              onTap: () => print("Documento"))
        ],
      ),
    );
  }

}
