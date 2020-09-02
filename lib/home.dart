import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: EdgeInsets.only(left: 10, top: 50),
          alignment: Alignment.center,
          color: Colors.deepPurple,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Splice Jet",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35,
                        fontFamily: 'Hack',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "From Mumbai to Bangalore",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        fontFamily: 'Hack',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Air India",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35,
                        fontFamily: 'Hack',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "From Bangalore to Mangalore",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        fontFamily: 'RobotoMono',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              FlightImageAsset(),
              FlightBookButton(),
            ],
          )),
    );
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/flight.png');
    Image image = Image(
      image: assetImage,
    );
    return Container(
      child: image,
    );
  }
}

class FlightBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: RaisedButton(
        color: Colors.deepOrange,
        elevation: 6,
        child: Text(
          "Book your flight",
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontFamily: 'RobotoMono',
              fontWeight: FontWeight.w400),
        ),
        onPressed: () => bookFlight(context),
      ),
    );
  }
}

void bookFlight(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text("Flight Booked Successfully"),
    content: Text("Have a pleasant flight"),
  );

  showDialog(
    context: context,
    builder: (BuildContext context) => alertDialog,
  );
}
