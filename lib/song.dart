import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/neo_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      key: _scaffoldKey,
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 60,
                  width: 60,
                  child: NeoBox(
                    value: IconButton(
                      icon: Icon(Icons.arrow_back_ios_new),
                      onPressed: () {
                        // Handle back button pressed
                      },
                    ),
                  ),
                ),
                Text(
                  "P L A Y I S T",
                ),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: NeoBox(
                    value: IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: _openDrawer,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              child: NeoBox(
                value: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset("assets/images/img.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Suzume",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                              Text(
                                "Keiko Masuda",
                                style: TextStyle(
                                    color: Colors.grey[700], fontSize: 18),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Colors.redAccent,
                            size: 40,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("0.00"),
                Icon(Icons.shuffle),
                Icon(Icons.repeat),
                Text("3.58")
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            NeoBox(
              value: LinearPercentIndicator(
                lineHeight: 10,
                percent: 0.7,
                progressColor: Colors.green,
                backgroundColor: Colors.transparent,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Expanded(
                  child: NeoBox(
                    value: SizedBox(
                      height: 60,
                      child: Icon(
                        Icons.skip_previous,
                        size: 32,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: NeoBox(
                      value: SizedBox(
                        height: 60,
                        child: Icon(
                          Icons.play_arrow,
                          size: 32,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: NeoBox(
                    value: SizedBox(
                      height: 60,
                      child: Icon(
                        Icons.skip_next,
                        size: 32,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      endDrawer: const Drawer(

        width: 250,
        child: SizedBox(
          height: 100,
          child: NeoBox(value: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              NeoBox(value: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Vaibhav",style: TextStyle(fontSize: 30),),
                  Icon(Icons.favorite_border,color: Colors.red,)
                ],
              )),
              SizedBox(height: 15,),
              NeoBox(value: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Trending",style: TextStyle(fontSize: 30),),
                  Icon(Icons.auto_graph,color: Colors.purpleAccent,)
                ],
              )),
              SizedBox(height: 15,),
              NeoBox(value: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Podcasts",style: TextStyle(fontSize: 30),),
                  Icon(Icons.graphic_eq,color: Colors.green,)
                ],
              )),
              SizedBox(height: 15,),
              NeoBox(value: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Lo-Fi",style: TextStyle(fontSize: 30),),
                  Icon(Icons.music_note,color: Colors.pinkAccent,)
                ],
              )),
              SizedBox(height: 15,),
              NeoBox(value: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Premium",style: TextStyle(fontSize: 30),),
                  Icon(Icons.monetization_on,color: Colors.amberAccent,)
                ],
              )),

            ],
          )),
        )
      ),
    );
  }
}
