import 'package:flutter/material.dart';

List<CircleAvatar> _listOfCircleAvatar = [
  CircleAvatar(
    backgroundImage: AssetImage('assets/images/bliss.jpg'),
  ),
  CircleAvatar(
    backgroundImage: AssetImage('assets/images/bisola.jpg'),
  ),
  CircleAvatar(
    backgroundImage: AssetImage('assets/images/sexy.jpg'),
  ),
  CircleAvatar(
    backgroundImage: AssetImage('assets/images/space.jpg'),
  ),
  CircleAvatar(
    backgroundImage: AssetImage('assets/images/person2.jpg'),
  ),
  CircleAvatar(
    backgroundImage: AssetImage('assets/images/code.jpg'),
  ),
  CircleAvatar(
    backgroundImage: AssetImage('assets/images/drummer.jpg'),
  ),
  CircleAvatar(
    backgroundImage: AssetImage('assets/images/random.png'),
  ),
  CircleAvatar(
    backgroundImage: AssetImage('assets/images/church.jpg'),
  ),
  CircleAvatar(
    backgroundImage: AssetImage('assets/images/person4.jpg'),
  ),
  CircleAvatar(
    backgroundImage: AssetImage('assets/images/engineer.jpg'),
  ),
];

List<String> _listOfCallerName = [
  'Festus Adedoyin',
  'Bisola',
  'Sandra Adetutu',
  'Jordan',
  'Johnson Alex',
  'Felix Nwosu',
  'Roberto Calonso',
  'Rex',
  'Theresa',
  'Jeff Gates',
  'Julius Pate',
];

List<Icon> _listOfCallStatusIcon = [
  Icon(
    Icons.call_received,
    color: Colors.red,
  ),
  Icon(
    Icons.call_received,
    color: Colors.red,
  ),
  Icon(
    Icons.call_received,
    color: Color(0xff14A999),
  ),
  Icon(
    Icons.call_received,
    color: Color(0xff14A999),
  ),
  Icon(
    Icons.call_received,
    color: Colors.red,
  ),
  Icon(
    Icons.call_received,
    color: Color(0xff14A999),
  ),
  Icon(
    Icons.call_received,
    color: Colors.red,
  ),
  Icon(
    Icons.call_received,
    color: Color(0xff14A999),
  ),
  Icon(
    Icons.call_received,
    color: Color(0xff14A999),
  ),
  Icon(
    Icons.call_received,
    color: Color(0xff14A999),
  ),
  Icon(
    Icons.call_received,
    color: Colors.red,
  ),
];

List<String> _listOfCallTime = [
  'Today, 9:56 pm',
  'Today, 2:06 am',
  '(3) Yesterday, 5:16 pm',
  'Today, 6:30 pm',
  '(5) 6 June, 4:46 pm',
  'Yesterday, 1:06 pm',
  '4 June, 10:14 pm',
  'Today, 8:33 pm',
  'Today, 10:30 am',
  'Yesterday, 2:56 pm',
  'Yesterday, 12:36 pm',
];

List<IconData> _listOfCallIcon = [
  Icons.call,
  Icons.videocam,
  Icons.call,
  Icons.call,
  Icons.call,
  Icons.videocam,
  Icons.videocam,
  Icons.call,
  Icons.videocam,
  Icons.call,
  Icons.call,
];

class CallsTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ListView.separated(
          itemCount: 11,
          itemBuilder: (context, index) {
            return CallsWidget(
              circleAvatar: _listOfCircleAvatar[index],
              callerName: _listOfCallerName[index],
              callStatusIcon: _listOfCallStatusIcon[index],
              callTime: _listOfCallTime[index],
              callIcon: _listOfCallIcon[index],
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add_call,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}

class CallsWidget extends StatelessWidget {
  final IconData callIcon;
  final String callTime;
  final String callerName;
  final Icon callStatusIcon;
  final CircleAvatar circleAvatar;

  CallsWidget(
      {this.circleAvatar,
      this.callerName,
      this.callStatusIcon,
      this.callIcon,
      this.callTime});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: ListTile(
        leading: circleAvatar,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              callerName,
              style:
                  TextStyle(color: Theme.of(context).textTheme.headline1.color),
            ),
            Row(
              children: <Widget>[
                callStatusIcon,
                Text(
                  callTime,
                  style: TextStyle(
                      color: Theme.of(context).textTheme.headline2.color,
                      fontSize: 15.0),
                )
              ],
            )
          ],
        ),
        trailing: Icon(
          callIcon,
          color: Theme.of(context).primaryColorLight,
        ),
      ),
    );
  }
}
