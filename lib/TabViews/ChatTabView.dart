import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappui/theme_changer.dart';

ThemeChanger _themeChanger = ThemeChanger();

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
      Builder(
        builder: (context) {
          return Text(
            'Jane: ',
            style:
                TextStyle(color: Theme.of(context).textTheme.headline2.color),
          );
        },
      ),
      Icon(
        Icons.note,
        color: Color(0xff11A599),
      ),
      Builder(
        builder: (context) {
          return Text(
            'Sticker ',
            style:
                TextStyle(color: Theme.of(context).textTheme.headline2.color),
          );
        },
      ),
    ],
  ),
  Builder(
    builder: (context) {
      return Text(
        'John Doe: What\'s for dinner? ',
        style: TextStyle(color: Theme.of(context).textTheme.headline2.color),
      );
    },
  ),
  Builder(
    builder: (context) {
      return Text(
        'Ned: 👌 ',
        style: TextStyle(color: Theme.of(context).textTheme.headline2.color),
      );
    },
  ),
  Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Icon(
        Icons.done_all,
        color: Colors.grey,
      ),
      SizedBox(width: 5.0),
      Builder(
        builder: (context) {
          return Text(
            'Business is Smooth ',
            style:
                TextStyle(color: Theme.of(context).textTheme.headline2.color),
          );
        },
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
      Builder(
        builder: (context) {
          return Text(
            '2:07',
            style:
                TextStyle(color: Theme.of(context).textTheme.headline2.color),
          );
        },
      ),
    ],
  ),
  Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Builder(
        builder: (context) {
          return Icon(
            Icons.photo,
            color: Theme.of(context).textTheme.headline2.color,
          );
        },
      ),
      Builder(
        builder: (context) {
          return Text(
            'My pics',
            style:
                TextStyle(color: Theme.of(context).textTheme.headline2.color),
          );
        },
      ),
    ],
  ),
  Builder(
    builder: (context) {
      return Text(
        'How are you doing?',
        style: TextStyle(color: Theme.of(context).textTheme.headline2.color),
      );
    },
  ),
  Row(
    children: <Widget>[
      Builder(
        builder: (context) {
          return Icon(
            Icons.mic,
            color: Theme.of(context).textTheme.headline2.color,
          );
        },
      ),
      Builder(
        builder: (context) {
          return Text(
            '1:35',
            style:
                TextStyle(color: Theme.of(context).textTheme.headline2.color),
          );
        },
      ),
    ],
  ),
  Builder(
    builder: (context) {
      return Text(
        'I love you',
        style: TextStyle(color: Theme.of(context).textTheme.headline2.color),
      );
    },
  ),
  Builder(
    builder: (context) {
      return Text(
        'When are we going?',
        style: TextStyle(color: Theme.of(context).textTheme.headline2.color),
      );
    },
  ),
  Builder(
    builder: (context) {
      return Text(
        'You will come to my place',
        style: TextStyle(color: Theme.of(context).textTheme.headline2.color),
      );
    },
  ),
  Row(
    children: <Widget>[
      Icon(
        Icons.local_pizza,
        color: Colors.white,
      ),
      Builder(
        builder: (context) {
          return Text(
            'So delicious',
            style:
                TextStyle(color: Theme.of(context).textTheme.headline2.color),
          );
        },
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
        child: Builder(
          builder: (context) {
            return Text(
              '4',
              style: TextStyle(
                  color: Theme.of(context).textTheme.headline4.color,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold),
            );
          },
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
        child: Builder(
          builder: (context) {
            return Text(
              '10',
              style: TextStyle(
                  color: Theme.of(context).textTheme.headline4.color,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold),
            );
          },
        ),
      ),
    ],
  ),
  Builder(
    builder: (context) {
      return Text(
        'YESTERDAY',
        style: TextStyle(color: Theme.of(context).textTheme.headline2.color),
      );
    },
  ),
  Builder(
    builder: (context) {
      return Text(
        'SATURDAY',
        style: TextStyle(color: Theme.of(context).textTheme.headline2.color),
      );
    },
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
        child: Builder(
          builder: (context) {
            return Text(
              '1',
              style: TextStyle(
                  color: Theme.of(context).textTheme.headline4.color,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold),
            );
          },
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
        child: Builder(
          builder: (context) {
            return Text(
              '3',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold),
            );
          },
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
        child: Builder(
          builder: (context) {
            return Text(
              '4',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold),
            );
          },
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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundImage: avatarImage,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                friendsName,
                style: TextStyle(
                    color: Theme.of(context).textTheme.headline1.color),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: messageWidget,
              ),
            ],
          ),
          trailing: trailingWidget),
    );
  }
}
