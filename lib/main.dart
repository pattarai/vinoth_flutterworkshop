import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import "package:math_expressions/math_expressions.dart";
import 'package:webview_flutter/webview_flutter.dart';
void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home:BioData()));
}
class BioData extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: _scaffoldKey,
      drawer: new Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Container( decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("fonts/dcu.jpg"),
                fit: BoxFit.fill,
              )
          ),
          height:190.0,
        ),
            ListTile(trailing: Icon(Icons.account_circle),
              title: new Text("Account",style:TextStyle(color: Colors.black,fontFamily: "Raleway",fontSize: 20)),
              onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );},
            ),ListTile(trailing: Icon(Icons.apps),
              title: new Text("Dc Calci",style:TextStyle(color: Colors.black,fontFamily: "Raleway",fontSize: 20)),onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Calculator()),
              );
              // Update the state of the app.
              // ...
            },

            ),
            ListTile(trailing: Icon(Icons.chrome_reader_mode),
              title: new Text("Website",style:TextStyle(color: Colors.black,fontFamily: "Raleway",fontSize: 20)),onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WikipediaExplorer()),
              );},
            ),
            ListTile(trailing: Icon(Icons.phonelink_erase),
              title: new Text("Logout",style:TextStyle(color: Colors.black,fontFamily: "Raleway",fontSize: 20)),
            ),
            Container(
              padding:EdgeInsets.only(top:310,left:10.0),
              child:Text("redeem",style:TextStyle(color: Colors.black,fontFamily: "Raleway",fontSize: 20)),
            ),
            Container(
              padding:EdgeInsets.only(left:10.0),
              child:Text("Help& feedback",style:TextStyle(color: Colors.black,fontFamily: "Raleway",fontSize: 20)),
            ),
            Container(
              padding:EdgeInsets.only(left:10.0),
              child:Text("About DC comics",style:TextStyle(color: Colors.black,fontFamily: "Raleway",fontSize: 20)),
            ),
      ]),),
        appBar: AppBar(
          leading:IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
              size:35,
            ),
            onPressed: () => _scaffoldKey.currentState.openDrawer(),
          ),
          centerTitle:  true,
          backgroundColor: Color(0xFF000000),
          title: Text("DC comics",style: TextStyle(fontFamily: "Raleway",fontSize: 30.0),),
        ),
        backgroundColor: Color(0xff151515),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height:250.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  image: DecorationImage(
                    image: AssetImage("fonts/ju.jpg"),
                    alignment: Alignment.topCenter,
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.5), BlendMode.dstATop),
                    fit: BoxFit.fitHeight,
                  ),
                  color: Colors.black45,
                ),
                padding:
                EdgeInsets.only(bottom: 10, top: 20, left: 20, right: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [],
                ),
              ),
              Padding(
                padding:
                EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
                child: Text(
                  "Stay connected with your favorite super heros!",textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontFamily: "Raleway",
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding:
                EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
                child: Text(
                  "What's new?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0, top: 10, bottom: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: InkWell(
                                  // splashColor: Colors.deepPurpleAccent,
                                  onTap: () {
                                    launch(
                                        "https://variety.com/2020/film/news/batman-suit-robert-pattinson-matt-reeves-1203503756/");
                                  },
                                  child: Container(
                                    height: 300.0,
                                      padding: EdgeInsets.all(30),
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            end: Alignment.bottomLeft,
                                            begin: Alignment.topRight,
                                            colors: [
                                              Color(0xFF1565C0),
                                              Color(0x8A000000)
                                            ]),
                                        image: DecorationImage(
                                          image: AssetImage("fonts/batman.jpg"),
                                          alignment: Alignment.topCenter,
                                          colorFilter: new ColorFilter.mode(
                                              Colors.black.withOpacity(0.5), BlendMode.dstATop),
                                          fit: BoxFit.fitHeight,
                                        ),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(bottom: 160)),
                                          Text(
                                            'Robert pattinson as "BATMAN"|Matt reeves reveals',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: "Roboto",
                                                fontWeight: FontWeight.w600,
                                                fontSize: 15),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: InkWell(
                                  // splashColor: Colors.deepPurpleAccent,
                                  onTap: () {
                                    launch(
                                        "https://www.dccomics.com/blog/2011/12/02/dc-comics-free-comic-book-day-for-2012");
                                  },
                                  child: Container(
                                    height:280,
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            end: Alignment.bottomLeft,
                                            begin: Alignment.topRight,
                                            colors: [
                                              Color(0xFF1565C0),
                                              Color(0x8A000000)
                                            ]),image: DecorationImage(
                                        image: AssetImage("fonts/comics.jpg"),
                                        alignment: Alignment.topCenter,
                                        colorFilter: new ColorFilter.mode(
                                            Colors.black.withOpacity(0.5), BlendMode.dstATop),
                                        fit: BoxFit.fitHeight,
                                      ),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(bottom: 190)),
                                          Text(
                                            "Free comic book day| DC comics",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: InkWell(
                                  // splashColor: Colors.deepPurpleAccent,
                                  onTap: () {
                                    launch(
                                        "https://filmschoolrejects.com/joker-ending-explained/");
                                  },
                                  child: Container(
                                      height:310,
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            end: Alignment.bottomLeft,
                                            begin: Alignment.topRight,
                                            colors: [
                                              Color(0xFF1565C0),
                                              Color(0x8A000000)
                                            ]),image: DecorationImage(
                                        image: AssetImage("fonts/j.jpg"),
                                        alignment: Alignment.topCenter,
                                        colorFilter: new ColorFilter.mode(
                                            Colors.black.withOpacity(0.5), BlendMode.dstATop),
                                        fit: BoxFit.fitHeight,
                                      ),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(bottom: 180)),
                                          Text(
                                              '"JOKER" Ending| What really happens to Arthur Fleck?',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                            ],
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                    ),
                    Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 8.0, top: 10, bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: InkWell(
                                  // splashColor: Colors.deepPurpleAccent,
                                   onTap: () {
                                    launch(
                                        "https://www.youtube.com/watch?v=yGY484EPe5U");
                                  },
                                  child: Container(
                                    height: 190,
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            end: Alignment.bottomLeft,
                                            begin: Alignment.topRight,
                                            colors: [
                                              Color(0xFF1565C0),
                                              Color(0x8A000000)
                                            ]),
                                        image: DecorationImage(
                                          image: AssetImage("fonts/ww.jpg"),
                                          alignment: Alignment.topCenter,
                                          colorFilter: new ColorFilter.mode(
                                              Colors.black.withOpacity(0.5), BlendMode.dstATop),
                                          fit: BoxFit.fitHeight,
                                        ),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(bottom: 110)),
                                          Text(
                                            "WW 1984| in Theatres",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: InkWell(
                                  // splashColor: Colors.deepPurpleAccent,
                                  onTap: () {
                                    launch(
                                        "https://www.dccomics.com/characters/scarecrow");},
                                  child: Container(
                                    height:300,
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            end: Alignment.bottomLeft,
                                            begin: Alignment.topRight,
                                            colors: [
                                              Color(0xFF1565C0),
                                              Color(0x8A000000)
                                            ]),
                                        image: DecorationImage(
                                          image: AssetImage("fonts/crop.jpg"),
                                          alignment: Alignment.topCenter,
                                          colorFilter: new ColorFilter.mode(
                                              Colors.black.withOpacity(0.5), BlendMode.dstATop),
                                          fit: BoxFit.fitHeight,
                                        ),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(bottom: 180)),
                                          Text(
                                            "Fear is primal | Dr.Jhonthan crane turns into Scarecrow",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: InkWell(
                                  // splashColor: Colors.deepPurpleAccent,
                                  onTap: () {
                                    launch(
                                        "https://www.ign.com/articles/2018/12/21/black-manta-explained-why-does-the-villain-hate-aquaman-so-much-in-the-dc-movie");
                                  },
                                  child: Container(
                                    height:260,
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            end: Alignment.bottomLeft,
                                            begin: Alignment.topRight,
                                            colors: [
                                              Color(0xFF1565C0),
                                              Color(0x8A000000)
                                            ]),
                                        image: DecorationImage(
                                          image: AssetImage("fonts/bm.jpg"),
                                          alignment: Alignment.topCenter,
                                          colorFilter: new ColorFilter.mode(
                                              Colors.black.withOpacity(0.5), BlendMode.dstATop),
                                          fit: BoxFit.fitHeight,
                                        ),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(bottom: 170)),
                                          Text(
                                            'Black manta | own-high tech suite',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: InkWell(
                                  // splashColor: Colors.deepPurpleAccent,
                                  onTap: () {
                                    launch(
                                        "https://www.dccomics.com/videos/lego-dc-super-villains-official-announce-trailer");
                                  },
                                  child: Container(
                                      height:270,
                                      width:400,
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            end: Alignment.bottomLeft,
                                            begin: Alignment.topRight,
                                            colors: [
                                              Color(0xFF1565C0),
                                              Color(0x8A000000)
                                            ]),image: DecorationImage(
                                        image: AssetImage("fonts/LEGO.jpg"),
                                        alignment: Alignment.topCenter,
                                        colorFilter: new ColorFilter.mode(
                                            Colors.black.withOpacity(0.5), BlendMode.dstATop),
                                        fit: BoxFit.fitHeight,
                                      ),

                                        borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(bottom: 190)),
                                          Text(
                                            "LEGO DC| Super villains",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SimpleCalculator(),
    );
  }
}
class SimpleCalculator extends StatefulWidget {
  @override
  _SimpleCalculatorState createState() => _SimpleCalculatorState();
}
class _SimpleCalculatorState extends State<SimpleCalculator> {
  String equation = "0";
  String result = "0";
  String expression = "";//////////////
  double equationFontSize = 38.0;
  double resultFontSize = 48.0;
  buttonPressed(String buttonText){
    setState(() {
      if(buttonText == "C"){
        equation = "0";
        result = "0";
        equationFontSize = 38.0;
        resultFontSize = 48.0;
      }
      else if(buttonText == "⌫"){
        equationFontSize = 48.0;
        resultFontSize = 38.0;
        equation = equation.substring(0, equation.length - 1);
        if(equation == ""){
          equation = "0";
        }
      }
      else if(buttonText == "="){
        equationFontSize = 38.0;
        resultFontSize = 48.0;
        expression = equation;
        expression = expression.replaceAll('×', '*');
        expression = expression.replaceAll('÷', '/');
        try{
          Parser p = Parser();
          Expression exp = p.parse(expression);
          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cm)}';
        }catch(e){
          result = "Error";
        }
      }
      else{
        equationFontSize = 48.0;
        resultFontSize = 38.0;
        if(equation == "0"){
          equation = buttonText;
        }else {
          equation = equation + buttonText;
        }
      }
    });
  }
  Widget buildButton(String buttonText, double buttonHeight, Color buttonColor, {TextStyle style}){
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      color: buttonColor,
      child: FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
              side: BorderSide(
                  color: Colors.white,
                  width: 1,
                  style: BorderStyle.solid
              )
          ),
          padding: EdgeInsets.all(16.0),
          onPressed: () => buttonPressed(buttonText),
          child: Text(
            buttonText,
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              fontFamily: "Raleway",
            ),
          )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( leading:IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size:35,
        ),
        onPressed: () { Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BioData()),
        );// do so          methingd
        },
      ),
        centerTitle:  true,
        backgroundColor: Color(0xFF000000),
        title: Text("DC calci!",style: TextStyle(fontFamily: "Raleway",fontSize: 30.0),),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text(equation, style: TextStyle(fontSize: equationFontSize),),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: Text(result, style: TextStyle(fontSize: resultFontSize),),
          ),
          Expanded(
            child: Divider(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * .75,
                child: Table(
                  children: [
                    TableRow(
                        children: [
                          buildButton("C",1, Colors.black),
                          buildButton("⌫", 1, Colors.black),
                          buildButton("÷", 1, Colors.black),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildButton("7", 1, Colors.black),
                          buildButton("8", 1, Colors.black),
                          buildButton("9", 1, Colors.black),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildButton("4", 1, Colors.black),
                          buildButton("5", 1, Colors.black),
                          buildButton("6", 1, Colors.black),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildButton("1", 1, Colors.black),
                          buildButton("2", 1, Colors.black),
                          buildButton("3", 1, Colors.black),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildButton(".", 1, Colors.black),
                          buildButton("0", 1, Colors.black),
                          buildButton("00", 1, Colors.black),
                        ]
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Table(
                  children: [
                    TableRow(
                        children: [
                          buildButton("×", 1, Colors.black),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildButton("-", 1, Colors.black),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildButton("+", 1, Colors.black),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildButton("=", 2, Colors.black),
                        ]
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
class WikipediaExplorer extends StatefulWidget {
  @override
  _WikipediaExplorerState createState() => _WikipediaExplorerState();
}
class _WikipediaExplorerState extends State<WikipediaExplorer> {
  Completer<WebViewController> _controller = Completer<WebViewController>();
  final Set<String> _favorites = Set<String>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size:35,
          ),
          onPressed: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BioData()),
          );// do so          methingd
          },
        ),
        centerTitle:  true,
        backgroundColor: Color(0xFF000000),
        title: Text("WebPage of DC",style: TextStyle(fontFamily: "Raleway",fontSize: 25.0),),
      ),
      body: WebView(
        initialUrl: 'https://www.dccomics.com/',
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
      floatingActionButton: _bookmarkButton(),
    );
  }
  _bookmarkButton() {
    return FutureBuilder<WebViewController>(
      future: _controller.future,
      builder:
          (BuildContext context, AsyncSnapshot<WebViewController> controller) {
        if (controller.hasData) {
          return FloatingActionButton(
            onPressed: () async {
              var url = await controller.data.currentUrl();
              _favorites.add(url);
              Scaffold.of(context).showSnackBar(
                SnackBar(content: Text('Saved $url for later reading.')),
              );
            },
            child: Icon(Icons.favorite),
          );
        }
        return Container();
      },
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = TextStyle(fontFamily: 'Raleway', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {

    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.black,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.black26,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 180.0,
                  child: Image.asset(
                    "fonts/log.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 45.0),
                emailField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(
                  height: 35.0,
                ),
                loginButon,
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
