import 'package:flutter/material.dart';
import 'package:melodix/views/album_view.dart';
import 'package:melodix/widgets/album_card.dart';
import 'package:melodix/widgets/song_card.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            decoration: BoxDecoration(
              color: Color(0xFf1C7A74),
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                  ],
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recently Played",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Row(
                            children: [
                              Icon(Icons.history),
                              SizedBox(width: 16),
                              Icon(Icons.settings),
                            ],
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.all(16),
                      child: Row(
                        children: [
                          AlbumCard(
                            label: "Best Mode",
                            image: AssetImage("assets/images/covers/1.jpeg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Mot6ivation Mix",
                            image: AssetImage("assets/images/covers/2.jpeg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Top 50-Global",
                            image: AssetImage("assets/images/covers/3.jpeg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Power Gaming",
                            image: AssetImage("assets/images/covers/4.jpeg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Top songs - Global",
                            image: AssetImage("assets/images/covers/5.jpeg"),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 32),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Good evening",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              RowAlbumCard(
                                label: "Top 50 - Global",
                                image:
                                    AssetImage("assets/images/covers/10.jpeg"),
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: "Best Mode",
                                image:
                                    AssetImage("assets/images/covers/7.jpeg"),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              RowAlbumCard(
                                label: "RapCaviar",
                                image:
                                    AssetImage("assets/images/covers/6.jpeg"),
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: "Eminem",
                                image:
                                    AssetImage("assets/images/covers/8.jpeg"),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              RowAlbumCard(
                                label: "Top 50 - USA",
                                image:
                                    AssetImage("assets/images/covers/9.jpeg"),
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: "Pop Remix",
                                image:
                                    AssetImage("assets/images/covers/12.jpeg"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Based on your recent listening",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Row(
                            children: [
                              SongCard(
                                image:
                                    AssetImage("assets/images/covers/13.jpeg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image:
                                    AssetImage("assets/images/covers/14.jpeg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image:
                                    AssetImage("assets/images/covers/14.jpeg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image:
                                    AssetImage("assets/images/covers/15.jpeg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image:
                                    AssetImage("assets/images/covers/16.jpeg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image:
                                    AssetImage("assets/images/covers/17.jpeg"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Recommended radio",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Row(
                            children: [
                              SongCard(
                                image:
                                    AssetImage("assets/images/covers/15.jpeg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image:
                                    AssetImage("assets/images/covers/10.jpeg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image:
                                    AssetImage("assets/images/covers/21.jpeg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image:
                                    AssetImage("assets/images/covers/20.jpeg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image:
                                    AssetImage("assets/images/covers/19.jpeg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image:
                                    AssetImage("assets/images/covers/18.jpeg"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RowAlbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  const RowAlbumCard({
    Key key,
    this.image,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(4),
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Image(
              image: image,
              height: 48,
              width: 48,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 8),
            Text(label)
          ],
        ),
      ),
    );
  }
}
