import 'package:Flags/style/style.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Country extends StatelessWidget {
  static const routeName = '/country';

  @override
  Widget build(BuildContext context) {
    final Map country = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryBlue,
        title: Text(country['name']),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: <Widget>[
            FlipCard(
              direction: FlipDirection.VERTICAL,
              front: CountryCard(
                title: 'Capital',
                icon: Icon(
                  Icons.near_me,
                  color: Colors.yellow,
                ),
              ),
              back: CountryDetailCard(
                title: country['capital'],
                color: Colors.deepOrange,
              ),
            ),
            FlipCard(
              direction: FlipDirection.VERTICAL,
              front: CountryCard(
                title: 'Population',
                icon: Icon(
                  Icons.groups,
                  color: primaryBlue,
                ),
              ),
              back: CountryDetailCard(
                title: country['population'].toString(),
                color: Colors.deepPurple,
              ),
            ),
            FlipCard(
              direction: FlipDirection.VERTICAL,
              front: CountryCard(
                title: 'Flag',
                icon: Icon(
                  Icons.flag_rounded,
                  color: red,
                ),
              ),
              back: Card(
                color: Colors.white,
                elevation: 0,
                child: Center(
                    child: SvgPicture.network(
                  country['flag'],
                  width: 240,
                  fit: BoxFit.cover,
                )),
              ),
            ),
            FlipCard(
              direction: FlipDirection.VERTICAL,
              front: CountryCard(
                title: 'Currency',
                icon: Icon(
                  Icons.ac_unit,
                  color: primary,
                ),
              ),
              back: CountryDetailCard(
                title: country['currencies'][0]['name'],
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CountryDetailCard extends StatelessWidget {
  final String title;
  final MaterialColor color;
  CountryDetailCard({this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 0,
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}

class CountryCard extends StatelessWidget {
  final String title;
  final Icon icon;
  const CountryCard({Key key, this.title, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      )),
    );
  }
}
