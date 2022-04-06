import 'package:flutter/material.dart';
import 'package:latiandasar/models/users_model.dart';
import 'package:latiandasar/services/api_helper.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  List<UserModel> inital = [];
  List<UserModel> searched = [];

  @override
  void initState() {
    // inital = data;
    ApiHelper.retrieveData().then((value) {
      if (value != null) {
        inital = value;
      }
    });
    setState(() {});
    super.initState();
  }

  void searchingUser(String? text) {
    searched.removeRange(0, searched.length);
    if (text != null && text.isNotEmpty) {
      for (var data in inital) {
        if (data.login.toLowerCase().startsWith(text)) {
          searched.add(data);
        }
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: TextField(
          onChanged: searchingUser,
          decoration: const InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: "Search Github User",
            prefixIcon: Icon(Icons.search),
          ),
          cursorHeight: 22,
        ),
        toolbarHeight: 75,
      ),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 12),
            child: ListTile(
              leading: Image.network(searched[index].avatar_url),
              title: Text(searched[index].login),
            ),
          );
        }),
        itemCount: searched.length,
      ),
    );
  }
}
