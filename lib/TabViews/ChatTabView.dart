import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> listOfFriendsName = [
  'Francis Group',
  'John Doe Family',
  'Folake Bee House',
  'Jackson Everton',
  'Ashana Alexander',
  'Jane Biden',
  'DJ Nana',
  'Sat Nam',
  'Angela Baston',
  'Ecstasy',
  'Plumin Jackson',
  'Rio Anderson'
];

List<Widget> listOfMessageWidget = [
  Row(
    children: <Widget>[
      Text(
        'Jane: ',
        style: TextStyle(color: Colors.black54),
      ),
      Icon(
        Icons.note,
        color: Color(0xff11A599),
      ),
      Text(
        'Sticker',
        style: TextStyle(color: Colors.white60),
      ),
    ],
  ),
  Text(
    'John Doe: What\'s for dinner? ',
    style: TextStyle(color: Colors.black54),
  ),
  Text(
    'Ned: 👌 ',
    style: TextStyle(color: Colors.black54),
  ),
  Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Icon(
        Icons.done_all,
        color: Colors.grey,
      ),
      SizedBox(width: 5.0),
      Text(
        'Business is Smooth ',
        style: TextStyle(color: Colors.black54),
      ),
    ],
  ),
  Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Icon(
        Icons.done_all,
        color: Color(0xff11A599),
      ),
      SizedBox(width: 5.0),
      Text(
        '2:07',
        style: TextStyle(color: Colors.black54),
      ),
    ],
  ),
  Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Icon(
        Icons.photo,
        color: Colors.black54,
      ),
      Text(
        'My pics',
        style: TextStyle(color: Colors.black54),
      ),
    ],
  ),
  Text(
    'How are you doing?',
    style: TextStyle(color: Colors.black54),
  ),
  Row(
    children: <Widget>[
      Icon(
        Icons.mic,
        color: Colors.black54,
      ),
      Text(
        '1:35',
        style: TextStyle(color: Colors.black54),
      ),
    ],
  ),
  Text(
    'I love you',
    style: TextStyle(color: Colors.black54),
  ),
  Text(
    'When are we going?',
    style: TextStyle(color: Colors.black54),
  ),
  Text(
    'You will come to my place',
    style: TextStyle(color: Colors.black54),
  ),
  Row(
    children: <Widget>[
      Icon(
        Icons.local_pizza,
        color: Colors.white,
      ),
      Text(
        'So delicious',
        style: TextStyle(color: Colors.black54),
      ),
    ],
  ),
];

List<Widget> listOfTrailingWidget = [
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        '9:50 PM',
        style: TextStyle(color: Color(0xff11A599)),
      ),
      SizedBox(height: 5.0),
      CircleAvatar(
        radius: 11.0,
        backgroundColor: Color(0xff11A599),
        child: Text(
          '4',
          style: TextStyle(
              color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        '1:50 AM',
        style: TextStyle(color: Color(0xff11A599)),
      ),
      SizedBox(height: 5.0),
      CircleAvatar(
        radius: 11.0,
        backgroundColor: Color(0xff11A599),
        child: Text(
          '10',
          style: TextStyle(
              color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
      ),
    ],
  ),
  Text(
    'YESTERDAY',
    style: TextStyle(color: Colors.black54),
  ),
  Text(
    'SATURDAY',
    style: TextStyle(color: Colors.black54),
  ),
  Text(
    'FRIDAY',
    style: TextStyle(color: Colors.white60),
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        '5:30 PM',
        style: TextStyle(color: Color(0xff11A599)),
      ),
      SizedBox(height: 5.0),
      CircleAvatar(
        radius: 11.0,
        backgroundColor: Color(0xff11A599),
        child: Text(
          '1',
          style: TextStyle(
              color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
      ),
    ],
  ),
  Text(
    'WEDNESDAY',
    style: TextStyle(color: Colors.white60),
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        '5:35 PM',
        style: TextStyle(color: Color(0xff11A599)),
      ),
      SizedBox(height: 5.0),
      CircleAvatar(
        radius: 11.0,
        backgroundColor: Color(0xff11A599),
        child: Text(
          '3',
          style: TextStyle(
              color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        '2:30 AM',
        style: TextStyle(color: Color(0xff11A599)),
      ),
      SizedBox(height: 5.0),
      CircleAvatar(
        radius: 11.0,
        backgroundColor: Color(0xff11A599),
        child: Text(
          '4',
          style: TextStyle(
              color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
      ),
    ],
  ),
  Text(
    'FRIDAY',
    style: TextStyle(color: Colors.white60),
  ),
  Text(
    'SUNDAY',
    style: TextStyle(color: Colors.white60),
  ),
  Text(
    'MONDAY',
    style: TextStyle(color: Colors.white60),
  ),
];

List<ImageProvider<dynamic>> listOfAvatarImage = [
  AssetImage('assets/images/person1.jpg'),
  AssetImage('assets/images/person2.jpg'),
  AssetImage('assets/images/person3.jpg'),
  AssetImage('assets/images/person4.jpg'),
  AssetImage('assets/images/person5.jpg'),
  AssetImage('assets/images/person6.jpg'),
  AssetImage('assets/images/person7.jpg'),
  AssetImage('assets/images/person8.jpg'),
  AssetImage('assets/images/person9.jpg'),
  AssetImage('assets/images/person10.jpg'),
  AssetImage('assets/images/person11.jpg'),
  AssetImage('assets/images/person12.jpg')
];

class ChatTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.separated(
        itemCount: 12,
        separatorBuilder: (context, int) => Divider(),
        itemBuilder: (context, index) {
          return IndividualChatListItem(
            friendsName: listOfFriendsName[index],
            messageWidget: listOfMessageWidget[index],
            trailingWidget: listOfTrailingWidget[index],
            avatarImage: listOfAvatarImage[index],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF00CC3F),
        child: Icon(Icons.message, color: Colors.white),
        onPressed: () {},
      ),
    );
  }
}

class IndividualChatListItem extends StatelessWidget {
  final String friendsName;
  final Widget messageWidget;
  final Widget trailingWidget;
  final ImageProvider<dynamic> avatarImage;

  IndividualChatListItem(
      {this.avatarImage,
      this.friendsName,
      this.messageWidget,
      this.trailingWidget});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(
          radius: 25.0,
          backgroundImage: avatarImage,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              friendsName,
              style: TextStyle(color: Colors.black),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: messageWidget,
            ),
          ],
        ),
        trailing: trailingWidget);
  }
}
