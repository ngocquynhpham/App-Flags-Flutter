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
                title: country['currencies'][0]['code'] +
                    "(" +
                    country['currencies'][0]['symbol'] +
                    ")",
                color: primaryBlue,
              ),
            ),
            FlipCard(
              direction: FlipDirection.VERTICAL,
              front: CountryCard(
                title: 'Native Name',
                icon: Icon(
                  Icons.note_alt_outlined,
                  color: Colors.brown,
                ),
              ),
              back: CountryDetailCard(
                title: country['nativeName'],
                color: primary,
              ),
            ),
            FlipCard(
              direction: FlipDirection.VERTICAL,
              front: CountryCard(
                title: 'Calling Code ',
                icon: Icon(
                  Icons.code,
                  color: greyb,
                ),
              ),
              back: CountryDetailCard(
                title: "+" + country['callingCodes'][0],
                color: textIntro,
              ),
            ),
            FlipCard(
              direction: FlipDirection.VERTICAL,
              front: CountryCard(
                title: 'Region',
                icon: Icon(
                  Icons.wrap_text,
                  color: Colors.blue,
                ),
              ),
              back: CountryDetailCard(
                title: country['region'],
                color: Colors.deepPurple,
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
  final Color color;
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
