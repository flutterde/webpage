import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.purple
        ),
        child: Column(
          children: [
            _header(),
            _body(),
            Spacer(),
            _footer(),
          ],
        ),
      ),
    );
  }
  Widget _header(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text('home'),
          _sizebox(0.02 , 0),
          Text('about'),
          _sizebox(0.02 , 0),
          Text('contact'),
          Spacer(),
          Text('MyLogo'),

        ],
      ),
    );
  }
  Widget _body(){
    return Expanded(
      flex: 24,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
            flex: 13
            ,child: Image.asset('assets/images/design2.png', )),
            Expanded(
              flex: 12,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Lorem ipsum is een opvultekst die drukkers, zetters, grafisch ontwerpers '
                        'en dergelijken gebruiken om te kijken hoe een opmaak'
                        ' er grafisch uitziet. De eerste woorden van de tekst luiden doorgaan' ,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    ),
                    Text('orem ipsum is een opvultekst die drukkers, zetters , orem ipsum is een opvultekst die drukkers, zetters'),
                    _sizebox(0 , 0.02),
                    FlatButton(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Get Started' , style: TextStyle(

                        ),),
                      ),
                      color: Colors.amberAccent,
                      onPressed: (){

                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),


      ),
    );
  }
  Widget _footer(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Copy Right 2020')
        ],
      ),
    );
  }
  Widget _sizebox(double value0 , double value1){
    return SizedBox(
      width: MediaQuery.of(context).size.width*value0,
      height: MediaQuery.of(context).size.width*value1,
    );
  }
}
