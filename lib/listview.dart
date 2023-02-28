import 'package:flutter/material.dart';

import 'listviewpassvalue.dart';

class ListPass extends StatefulWidget {
  const ListPass({Key? key}) : super(key: key);

  @override
  State<ListPass> createState() => _ListPassState();
}

class _ListPassState extends State<ListPass> {
  List<dynamic> MainData = [
    User1(Name: 'a', MobileNo: 9558737335, Id: 1, ImageLink: "f.jpg"),
    User1(Name: 'b', MobileNo: 9974620303, Id: 2, ImageLink: "f.jpg"),
    User1(Name: 'c', MobileNo: 9016263206, Id: 3, ImageLink: "f.jpg"),
    User1(Name: 'd', MobileNo: 6353433905, Id: 4, ImageLink: "f.jpg"),
    User1(Name: 'e', MobileNo: 6354807192, Id: 5, ImageLink: "f.jpg"),
    User1(Name: 'f', MobileNo: 9328833257, Id: 6, ImageLink: "f.jpg"),
    User1(Name: 'g', MobileNo: 7874184765, Id: 7, ImageLink: "f.jpg"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: MainData.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => ListPassValue(
                    MainData: [MainData[index].Name],
                  )));
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage(MainData[index].ImageLink),
            ),
            title: Text(MainData[index].Name.toString()),
            subtitle: Text(MainData[index].MobileNo.toString()),
            trailing: Text(MainData[index].Id.toString()),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }
}

class User1 {
  int MobileNo;
  String ImageLink;
  String Name;
  int Id;

  User1(
      {required this.Name,
        required this.MobileNo,
        required this.Id,
        required this.ImageLink});
}
