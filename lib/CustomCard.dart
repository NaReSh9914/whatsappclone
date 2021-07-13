import 'package:flutter/material.dart';
class CustomCard extends StatefulWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    
    return ListTile(

      leading: CircleAvatar(
        radius: 30,
          backgroundColor: Colors.white,
          child: ClipRRect(
            borderRadius:BorderRadius.circular(30),
            child: Image.asset("assets/images/dp.png"),
          )
      ),
      title: Text(
        "Naresh Kokate",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Row(
        children: [
          Icon(Icons.done_all),
          SizedBox(
            width: 3,
          ),
          Text(
            "Hi Naresh"
          )

        ],

      ),
      trailing: Text("18:04")
    );
  }
}
