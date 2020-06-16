import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Widget> listOfStatusPostView = [
  DashedCircle(
    strokeWidth: 50.0,
    color: Color(0xff14A999),
    dashes: 4,
    child: Padding(
      padding: const EdgeInsets.all(2.0),
      child: CircleAvatar(
        radius: 25.0,
        backgroundImage: AssetImage('assets/images/bliss.jpg'),
      ),
    ),
  ),
  DashedCircle(
    color: Color(0xff14A999),
    dashes: 10,
    child: Padding(
      padding: const EdgeInsets.all(2.0),
      child: CircleAvatar(
        radius: 25.0,
        backgroundImage: AssetImage('assets/images/random.png'),
      ),
    ),
  ),
  DashedCircle(
    color: Color(0xff14A999),
    dashes: 2,
    child: Padding(
      padding: const EdgeInsets.all(2.0),
      child: CircleAvatar(
        radius: 25.0,
        backgroundImage: AssetImage('assets/images/code.jpg'),
      ),
    ),
  ),
  DashedCircle(
    color: Color(0xff14A999),
    dashes: 5,
    child: Padding(
      padding: const EdgeInsets.all(2.0),
      child: CircleAvatar(
        radius: 25.0,
        backgroundImage: AssetImage('assets/images/sexy.jpg'),
      ),
    ),
  ),
  DashedCircle(
    color: Color(0xff14A999),
    dashes: 3,
    child: Padding(
      padding: const EdgeInsets.all(2.0),
      child: CircleAvatar(
        radius: 25.0,
        backgroundImage: AssetImage('assets/images/church.jpg'),
      ),
    ),
  ),
  DashedCircle(
    color: Colors.grey,
    dashes: 2,
    child: Padding(
      padding: const EdgeInsets.all(2.0),
      child: CircleAvatar(
        radius: 25.0,
        backgroundImage: AssetImage('assets/images/space.jpg'),
      ),
    ),
  ),
  DashedCircle(
    color: Colors.grey,
    dashes: 3,
    child: Padding(
      padding: const EdgeInsets.all(2.0),
      child: CircleAvatar(
        radius: 25.0,
        backgroundImage: AssetImage('assets/images/engineer.jpg'),
      ),
    ),
  ),
  DashedCircle(
    color: Colors.grey,
    dashes: 4,
    child: Padding(
      padding: const EdgeInsets.all(2.0),
      child: CircleAvatar(
        radius: 25.0,
        backgroundImage: AssetImage('assets/images/doctor.jpg'),
      ),
    ),
  ),
  DashedCircle(
    color: Colors.grey,
    dashes: 10,
    child: Padding(
      padding: const EdgeInsets.all(2.0),
      child: CircleAvatar(
        radius: 25.0,
        backgroundImage: AssetImage('assets/images/bisola.jpg'),
      ),
    ),
  ),
  DashedCircle(
    color: Colors.grey,
    dashes: 10,
    child: Padding(
      padding: const EdgeInsets.all(2.0),
      child: CircleAvatar(
        radius: 25.0,
        backgroundImage: AssetImage('assets/images/drummer.jpg'),
      ),
    ),
  ),
];

List<String> listOfStatusPosterName = [
  'Ocean Of Bliss',
  'RandomLee',
  'Abdul Kudus',
  'Pamela Alexandra ',
  'Damola',
  'Space Rix',
  'Engineer',
  'Doctor Max',
  'Bisola',
  'Jack the Drummer'
];
List<String> listOfStatusPostTime = [
  '30 minutes ago',
  'Today, 7:12 am',
  'Today, 9:24 am',
  '2 minutes ago',
  'Yesterday, 2:15 am',
  'Yesterday, 2:15 am',
  '5 minutes ago',
  '24 minutes ago',
  'Yesterday, 5:26PM',
  'Toady, 6:55PM'
];

class StatusTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 8.0,
            ),
            ListTile(
              leading: DashedCircle(
                color: Colors.grey,
                gapSize: 5.0,
                dashes: 8,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: CircleAvatar(
                    radius: 25.0,
                    backgroundColor: Colors.lightBlueAccent,
                    child: Text('Hello, Flutter',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 12.0)),
                  ),
                ),
              ),
              title: RichText(
                text: TextSpan(
                    text: 'My Status',
                    style: TextStyle(
                        color: Theme.of(context).textTheme.headline1.color),
                    children: <InlineSpan>[
                      TextSpan(text: '\n'),
                      TextSpan(
                          text: 'Today, 6:13PM',
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.headline2.color))
                    ]),
              ),
              trailing:
                  Icon(Icons.more_horiz, color: Theme.of(context).buttonColor),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7.0),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                width: double.infinity,
                color: Theme.of(context).secondaryHeaderColor,
                child: Text(
                  'Recent updates',
                  style: TextStyle(
                      color: Theme.of(context).textTheme.headline2.color),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return IndividualStatusListItem(
                      statusPostView: listOfStatusPostView[index],
                      statusPosterName: listOfStatusPosterName[index],
                      statusPostTime: listOfStatusPostTime[index],
                    );
                  },
                  separatorBuilder: (context, index) => index == 4
                      ? Padding(
                          padding: const EdgeInsets.symmetric(vertical: 7.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 16.0),
                            width: double.infinity,
                            color: Theme.of(context).secondaryHeaderColor,
                            child: Text(
                              'Viewed updates',
                              style: TextStyle(
                                color:
                                    Theme.of(context).textTheme.headline2.color,
                              ),
                            ),
                          ),
                        )
                      : Divider()),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Theme.of(context).accentIconTheme.color,
            child: Icon(
              Icons.edit,
              color: Theme.of(context).primaryIconTheme.color,
            ),
            mini: true,
          ),
          SizedBox(
            height: 12.0,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class IndividualStatusListItem extends StatelessWidget {
  final Widget statusPostView;
  final String statusPosterName;
  final String statusPostTime;

  IndividualStatusListItem(
      {this.statusPostView, this.statusPosterName, this.statusPostTime});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: statusPostView,
      title: RichText(
        text: TextSpan(
            text: statusPosterName,
            style:
                TextStyle(color: Theme.of(context).textTheme.headline1.color),
            children: <InlineSpan>[
              TextSpan(text: '\n'),
              TextSpan(
                  text: statusPostTime,
                  style: TextStyle(
                      color: Theme.of(context).textTheme.headline2.color))
            ]),
      ),
    );
  }
}
