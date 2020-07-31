import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:toast/toast.dart';


void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home:BioData()));
}
final _formKey = GlobalKey<FormState>();


class BioData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          leading:IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
              size:35,
            ),
            onPressed: () {
              // do so          methingd
            },
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
                  children: [

                  ],
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
                                        "https://www.dccomics.com/characters/scarecrow");
                                  },
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


                              Container(
      margin:EdgeInsets.all(20.0),
      color:Colors.white,
      child:
    Form(
    key: _formKey,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
    TextFormField(
    decoration: const InputDecoration(
    hintText: 'Enter your email',
    ),
    validator: (value) {
    if (value.isEmpty) {
    return 'Please enter some text';
    }
    return null;
    },
    ),
    Padding(
    padding: const EdgeInsets.symmetric(vertical: 16.0),
    child: RaisedButton(
    onPressed: () {
    // Validate will return true if the form is valid, or false if
    // the form is invalid.
    if (_formKey.currentState.validate()) {
    // Process data.
    }
    },
    child: Text('Submit'),
    ),
    ),
    ],
    ),
    ),),



                            ],
                          ),
                        )),
                    RaisedButton(
                      onPressed: () {
                        Toast.show("Toast plugin app", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);


                      },
                      child: Text('Submit'),
                    ),




                  ],
                ),

              ),



            ],

          ),

        ),

    );
  }
}