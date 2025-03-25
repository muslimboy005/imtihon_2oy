import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:imtihon2_oy/extations/moslashuvchanui.dart';
import 'package:imtihon2_oy/extations/sizedBox.dart';
import 'package:imtihon2_oy/utils/appColors.dart';
import 'package:imtihon2_oy/utils/appFonts.dart';
import 'package:imtihon2_oy/utils/appImage.dart';
import 'package:imtihon2_oy/utils/items.dart';
import 'package:imtihon2_oy/widgets/bigfoto.dart';
import 'package:imtihon2_oy/widgets/bottomBar.dart';
import 'package:imtihon2_oy/widgets/drewer.dart';
import 'package:imtihon2_oy/widgets/elements.dart';
import 'package:imtihon2_oy/widgets/genres.dart';
import 'package:imtihon2_oy/widgets/popopMenyuButton.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MainscreenState();
  }
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 167,
          backgroundColor: AppColors.mainAppBarColor,
          leading: Builder(
            builder: (ctx) {
              // BU YERDA CONTEXT TO‘G‘RI BERILGAN
              return IconButton(
                onPressed: () {
                  Scaffold.of(ctx).openDrawer(); // DRAWER OCHILADI
                },
                icon: SvgPicture.asset(
                  AppImage.drawer,
                ),
              );
            },
          ),
          actions: [
            Row(
              spacing: 20,
              children: [
                SvgPicture.asset(
                  AppImage.backet,
                ),
                MenyuButton()
              ],
            ),
            18.w,
          ],
        ),
        drawer: Drawer(
          width: 330.eni,
          child: Drawer2(),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: TabBar(
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                automaticIndicatorColorAdjustment: false,
                indicatorColor: Colors.transparent,
                labelColor: AppColors.mainRed,
                dividerColor: Colors.transparent,
                tabs: [
                  Tab(
                    child: Text(
                      "PC",
                      style: TextStyle(
                          fontFamily: AppFonts.poppins,
                          fontWeight: FontWeight.w400,
                          fontSize: 17),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Playstation",
                      style: TextStyle(
                          fontFamily: AppFonts.poppins,
                          fontWeight: FontWeight.w400,
                          fontSize: 17),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Xbox",
                      style: TextStyle(
                          fontFamily: AppFonts.poppins,
                          fontWeight: FontWeight.w400,
                          fontSize: 17),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Nintendo",
                      style: TextStyle(
                          fontFamily: AppFonts.poppins,
                          fontWeight: FontWeight.w400,
                          fontSize: 17),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                      child: Padding(
                    padding:
                        const EdgeInsets.only(left: 28, top: 28, bottom: 28),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        48.h,
                        text("What's New"),
                        22.h,
                        Elements(
                          item: item1,
                          height: 263,
                          widht: 194,
                        ),
                        96.h,
                        text("Featured Game"),
                        18.h,
                        Bigfoto(
                          item: Items(
                            image: AppImage.cyberpunk,
                            mainText: "Cyberpunk 2077",
                            text: "Cross-platform",
                            stars: 3,
                            color: AppColors.mainBlue,
                          ),
                        ),
                        75.h,
                        text("Popular Games"),
                        22.h,
                        Elements(
                          item: item2,
                        ),
                        75.h,
                        text("Recommended"),
                        22.h,
                        Elements(
                          item: item3,
                        ),
                        75.h,
                        text("Coming Soon"),
                        22.h,
                        Elements(
                          item: item4,
                        ),
                        75.h,
                        text("Genres"),
                        18.h,
                        Genres(item: genres),
                        75.h,
                        text("Discounted Games"),
                        18.h,
                        Bigfoto(
                          item: Items(
                            image: AppImage.discount,
                            mainText: "Ori and the Will of the Wisps",
                            text: "Cross-platform",
                            stars: 4,
                            color: AppColors.mainBlue,
                          ),
                        ),
                        75.h,
                      ],
                    ),
                  )),
                  SingleChildScrollView(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 28, top: 28, bottom: 28),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          48.h,
                          text("Trending PC"),
                          22.h,
                          Elements(
                            item: item5,
                            height: 263,
                            widht: 194,
                          ),
                          75.h,
                          text("New on PC"),
                          22.h,
                          Elements(
                            item: newpc,
                          ),
                          75.h,
                          text("FPS Games"),
                          22.h,
                          Elements(
                            item: fps,
                          ),
                          96.h,
                          text("You Might Like"),
                          18.h,
                          Bigfoto(
                            item: Items(
                              image: AppImage.you,
                              mainText: "Outriders",
                              text: "Cross-platform",
                              stars: 5,
                              color: AppColors.mainBlue,
                            ),
                          ),
                          75.h,
                          text("Immersive RPGs"),
                          22.h,
                          Elements(
                            item: immersiv,
                          ),
                          75.h,
                          text("Action/Adventure"),
                          22.h,
                          Elements(
                            item: action,
                          ),
                          75.h,
                          text("Puzzle"),
                          22.h,
                          Elements(
                            item: puzzle,
                          ),
                          75.h,
                          text("Multiplayer"),
                          22.h,
                          Elements(
                            item: multip,
                          ),
                          75.h,
                          text("Simulation"),
                          22.h,
                          Elements(
                            item: simul,
                          ),
                          75.h,
                          text("Horror"),
                          22.h,
                          Elements(
                            item: horror,
                          ),
                          75.h,
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 28,
                        top: 28,
                        bottom: 28,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          48.h,
                          text("Trending Wii"),
                          22.h,
                          Elements(
                            item: trendwi,
                            height: 263,
                            widht: 194,
                          ),
                          75.h,
                          text("Fan Favorites"),
                          22.h,
                          Elements(
                            item: fan1,
                          ),
                          40.h,
                          Elements(
                            item: fan2,
                          ),
                          96.h,
                          text("You Might Like"),
                          18.h,
                          Bigfoto(
                            item: Items(
                              image: AppImage.animal,
                              mainText: "Animal Crossing",
                              text: "Nintendo Wii",
                              stars: 5,
                              color: AppColors.mainBlue,
                            ),
                          ),
                          75.h,
                          text("Action/Adventure"),
                          22.h,
                          Elements(
                            item: adventure1,
                          ),
                          40.h,
                          Elements(
                            item: adventure2,
                          ),
                          40.h,
                          Elements(
                            item: adventure3,
                          ),
                          324.h,
                          text("Roleplaying"),
                          22.h,
                          Elements(
                            item: role1,
                          ),
                          40.h,
                          Elements(
                            item: role2,
                          ),
                          40.h,
                          Elements(
                            item: role2,
                          ),
                          96.h,
                          text("You Might Like"),
                          18.h,
                          Bigfoto(
                            item: Items(
                              image: AppImage.sale,
                              mainText: "Fitness Boxing 2",
                              text: "Nintendo",
                              stars: 4,
                              color: AppColors.mainBlue,
                            ),
                          ),
                          108.h,
                          text("Multiplayer"),
                          22.h,
                          Elements(
                            item: multiplayer1,
                          ),
                          40.h,
                          Elements(
                            item: multiplayer2,
                          ),
                          108.h,
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 28,
                        top: 28,
                        bottom: 28,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          48.h,
                          text("Trending Wii"),
                          22.h,
                          Elements(
                            item: trendwi,
                            height: 263,
                            widht: 194,
                          ),
                          75.h,
                          text("Fan Favorites"),
                          22.h,
                          Elements(
                            item: fan1,
                          ),
                          40.h,
                          Elements(
                            item: fan2,
                          ),
                          96.h,
                          text("You Might Like"),
                          18.h,
                          Bigfoto(
                            item: Items(
                              image: AppImage.animal,
                              mainText: "Animal Crossing",
                              text: "Nintendo Wii",
                              stars: 5,
                              color: AppColors.mainBlue,
                            ),
                          ),
                          75.h,
                          text("Action/Adventure"),
                          22.h,
                          Elements(
                            item: adventure1,
                          ),
                          40.h,
                          Elements(
                            item: adventure2,
                          ),
                          40.h,
                          Elements(
                            item: adventure3,
                          ),
                          324.h,
                          text("Roleplaying"),
                          22.h,
                          Elements(
                            item: role1,
                          ),
                          40.h,
                          Elements(
                            item: role2,
                          ),
                          40.h,
                          Elements(
                            item: role2,
                          ),
                          96.h,
                          text("You Might Like"),
                          18.h,
                          Bigfoto(
                            item: Items(
                              image: AppImage.sale,
                              mainText: "Fitness Boxing 2",
                              text: "Nintendo",
                              stars: 4,
                              color: AppColors.mainBlue,
                            ),
                          ),
                          108.h,
                          text("Multiplayer"),
                          22.h,
                          Elements(
                            item: multiplayer1,
                          ),
                          40.h,
                          Elements(
                            item: multiplayer2,
                          ),
                          108.h,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: IconButton.filled(
          onPressed: () {},
          style: IconButton.styleFrom(
            fixedSize: Size(60, 60),
          ),
          icon: Icon(
            Icons.search,
            size: 35,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          color: Colors.white,
          child: BottomBar(),
        ),
      ),
    );
  }
}

List<Items> item1 = [
  Items(
      image: AppImage.witcher,
      mainText: "The Witcher",
      text: "Cross-platform",
      stars: 5,
      color: AppColors.mainPurple),
  Items(
    image: AppImage.halo3,
    mainText: "Halo 3",
    text: "Xbox Consoles",
    stars: 4,
    color: AppColors.mainGreen,
  ),
  Items(
    image: AppImage.witcher,
    mainText: "The Witcher",
    text: "Cross-platform",
    stars: 3,
    color: AppColors.mainBlue,
  ),
];

List<Items> item2 = [
  Items(
      image: AppImage.popular1,
      mainText: "Breath of the Wild",
      text: "Nintendo",
      stars: 5,
      color: AppColors.mainBlue),
  Items(
    image: AppImage.popular2,
    mainText: "Animal Crossing",
    text: "Nintendo",
    stars: 5,
    color: AppColors.mainGreen,
  ),
  Items(
    image: AppImage.popular3,
    mainText: "Destiny 2",
    text: "Cross-platform",
    stars: 3,
    color: AppColors.mainRed,
  ),
  Items(
      image: AppImage.popular1,
      mainText: "Breath of the Wild",
      text: "Nintendo",
      stars: 5,
      color: AppColors.mainPurple),
];

List<Items> item3 = [
  Items(
      image: AppImage.reconment1,
      mainText: "Overwatch",
      text: "Cross-platform",
      stars: 5,
      color: AppColors.mainRed),
  Items(
    image: AppImage.reconment2,
    mainText: "The Last of Us 2",
    text: "Playstation",
    stars: 4,
    color: AppColors.mainBlue,
  ),
  Items(
    image: AppImage.reconment3,
    mainText: "Minecraft",
    text: "Cross-platform",
    stars: 3,
    color: AppColors.mainGreen,
  ),
  Items(
      image: AppImage.reconment1,
      mainText: "Overwatch",
      text: "Cross-platform",
      stars: 4,
      color: AppColors.mainPurple),
];

List<Items> item4 = [
  Items(
    image: AppImage.comig1,
    mainText: "Little Nightmares 2",
    text: "Nintendo",
    stars: 5,
    color: AppColors.mainPurple,
  ),
  Items(
    image: AppImage.comig2,
    mainText: "Super Mario Bros",
    text: "Nintendo",
    stars: 4,
    color: AppColors.mainGreen,
  ),
  Items(
    image: AppImage.comig3,
    mainText: "Gotham Knights",
    text: "Cross-platform",
    stars: 3,
    color: AppColors.mainBlue,
  ),
  Items(
    image: AppImage.comig1,
    mainText: "Little Nightmares 2",
    text: "Nintendo",
    stars: 5,
    color: AppColors.mainRed,
  ),
];

List<Items> genres = [
  Items(
    image: AppImage.genres1,
    mainText: "Action & Adventure",
    text: "Over 2,000 games",
    stars: 0,
    color: AppColors.mainGreen,
  ),
  Items(
    image: AppImage.genres1,
    mainText: "Roleplaying",
    text: "Over 3,200 games",
    stars: 0,
    color: AppColors.mainPurple,
  ),
  Items(
    image: AppImage.genres1,
    mainText: "Action & Adventure",
    text: "Over 2,000 games",
    stars: 0,
    color: AppColors.mainBlue,
  ),
  Items(
    image: AppImage.genres1,
    mainText: "Roleplaying",
    text: "Over 3,200 games",
    stars: 0,
    color: AppColors.mainRed,
  ),
];

//////////////////////////////////////////////////////////
List<Items> item5 = [
  Items(
    image: AppImage.trendpc1,
    mainText: "Half-Life 3",
    text: "PC Exclusive",
    stars: 5,
    color: AppColors.mainBlue,
  ),
  Items(
    image: AppImage.trendpc2,
    mainText: "Fortnite",
    text: "Cross-Platform",
    stars: 3,
    color: AppColors.mainRed,
  ),
  Items(
    image: AppImage.trendpc1,
    mainText: "Half-Life 3",
    text: "PC Exclusive",
    stars: 5,
    color: AppColors.mainPurple,
  ),
  Items(
    image: AppImage.trendpc2,
    mainText: "Fortnite",
    text: "Cross-Platform",
    stars: 4,
    color: AppColors.mainGreen,
  ),
];

List<Items> newpc = [
  Items(
    image: AppImage.new1,
    mainText: "Fallout 5",
    text: "Cross-Platform",
    stars: 5,
    color: AppColors.mainRed,
  ),
  Items(
    image: AppImage.new2,
    mainText: "GTA 6",
    text: "PC Exclusive",
    stars: 5,
    color: AppColors.mainBlue,
  ),
  Items(
    image: AppImage.new3,
    mainText: "Sekiro: Shadows",
    text: "Cross-platform",
    stars: 4,
    color: AppColors.mainGreen,
  ),
  Items(
    image: AppImage.new1,
    mainText: "Fortnite",
    text: "Cross-Platform",
    stars: 3,
    color: AppColors.mainPurple,
  ),
];

List<Items> fps = [
  Items(
    image: AppImage.fps1,
    mainText: "Overwatch",
    text: "Cross-Platform",
    stars: 5,
    color: AppColors.mainPurple,
  ),
  Items(
    image: AppImage.fps2,
    mainText: "Borderlands 2",
    text: "Cross-platform",
    stars: 4,
    color: AppColors.mainGreen,
  ),
  Items(
    image: AppImage.fps3,
    mainText: "Modern Warfare",
    text: "Cross-platform",
    stars: 3,
    color: AppColors.mainBlue,
  ),
  Items(
    image: AppImage.fps1,
    mainText: "Overwatch",
    text: "Cross-Platform",
    stars: 1,
    color: AppColors.mainRed,
  ),
];

List<Items> immersiv = [
  Items(
    image: AppImage.immersiv1,
    mainText: "Divinity 2",
    text: "PC Exclusive",
    stars: 4,
    color: AppColors.mainBlue,
  ),
  Items(
    image: AppImage.immersiv2,
    mainText: "Mass Effect",
    text: "Cross-platform",
    stars: 5,
    color: AppColors.mainRed,
  ),
  Items(
    image: AppImage.immersiv3,
    mainText: "Diablo",
    text: "Cross-platform",
    stars: 3,
    color: AppColors.mainPurple,
  ),
  Items(
    image: AppImage.immersiv1,
    mainText: "Overwatch",
    text: "Cross-Platform",
    stars: 1,
    color: AppColors.mainGreen,
  ),
];

List<Items> action = [
  Items(
    image: AppImage.action1,
    mainText: "The Walking Dead",
    text: "PC Exclusive",
    stars: 5,
    color: AppColors.mainPurple,
  ),
  Items(
    image: AppImage.action2,
    mainText: "Path of Exile",
    text: "PC Exclusive",
    stars: 4,
    color: AppColors.mainBlue,
  ),
  Items(
    image: AppImage.action3,
    mainText: "Monster Hunter",
    text: "PC Exclusive",
    stars: 3,
    color: AppColors.mainGreen,
  ),
  Items(
    image: AppImage.action1,
    mainText: "Overwatch",
    text: "Cross-Platform",
    stars: 1,
    color: AppColors.mainRed,
  ),
];

List<Items> puzzle = [
  Items(
    image: AppImage.puzzle1,
    mainText: "Human: Fall Flat",
    text: "PC Exclusive",
    stars: 4,
    color: AppColors.mainGreen,
  ),
  Items(
    image: AppImage.puzzle2,
    mainText: "Fez",
    text: "PC Exclusive",
    stars: 4,
    color: AppColors.mainRed,
  ),
  Items(
    image: AppImage.puzzle3,
    mainText: "Resident Evil 2",
    text: "PC Exclusive",
    stars: 3,
    color: AppColors.mainPurple,
  ),
  Items(
    image: AppImage.action1,
    mainText: "Overwatch",
    text: "Cross-Platform",
    stars: 1,
    color: AppColors.mainBlue,
  ),
];

List<Items> multip = [
  Items(
    image: AppImage.multip1,
    mainText: "Overcooked 2",
    text: "PC Exclusive",
    stars: 4,
    color: AppColors.mainRed,
  ),
  Items(
    image: AppImage.multip2,
    mainText: "Injustice 2",
    text: "Cross-Platform",
    stars: 5,
    color: AppColors.mainBlue,
  ),
  Items(
    image: AppImage.multip3,
    mainText: "Dota 2",
    text: "PC Exclusive",
    stars: 3,
    color: AppColors.mainGreen,
  ),
  Items(
    image: AppImage.action1,
    mainText: "Overwatch",
    text: "Cross-Platform",
    stars: 1,
    color: AppColors.mainPurple,
  ),
];

List<Items> simul = [
  Items(
    image: AppImage.simul1,
    mainText: "The Sims 4",
    text: "Cross-platform",
    stars: 4,
    color: AppColors.mainBlue,
  ),
  Items(
    image: AppImage.simul2,
    mainText: "Stardew Valley",
    text: "Cross-Platform",
    stars: 5,
    color: AppColors.mainPurple,
  ),
  Items(
    image: AppImage.simul3,
    mainText: "Farming Simulator",
    text: "PC Exclusive",
    stars: 3,
    color: AppColors.mainGreen,
  ),
  Items(
    image: AppImage.simul1,
    mainText: "Overwatch",
    text: "Cross-Platform",
    stars: 1,
    color: AppColors.mainPurple,
  ),
];

List<Items> horror = [
  Items(
    image: AppImage.horror1,
    mainText: "Amnesia",
    text: "PC Exclusive",
    stars: 4,
    color: AppColors.mainRed,
  ),
  Items(
    image: AppImage.horror2,
    mainText: "Resident Evil 7",
    text: "Cross-Platform",
    stars: 5,
    color: AppColors.mainBlue,
  ),
  Items(
    image: AppImage.horror3,
    mainText: "Minecraft",
    text: "Cross-platform",
    stars: 3,
    color: AppColors.mainGreen,
  ),
  Items(
    image: AppImage.simul1,
    mainText: "Overwatch",
    text: "Cross-Platform",
    stars: 1,
    color: AppColors.mainPurple,
  ),
];

//////////////////////////////////////////////////////////////////////////////

List<Items> trendwi = [
  Items(
    image: AppImage.trendwi1,
    mainText: "Wii Sports",
    text: "Nintendo Wii",
    stars: 4,
    color: AppColors.mainBlue,
  ),
  Items(
    image: AppImage.trendwi2,
    mainText: "Mario Party 8",
    text: "Nintendo Wii",
    stars: 5,
    color: AppColors.mainGreen,
  ),
  Items(
    image: AppImage.trendwi1,
    mainText: "Wii Sports",
    text: "Nintendo Wii",
    stars: 3,
    color: AppColors.mainPurple,
  ),
  Items(
    image: AppImage.trendwi1,
    mainText: "Mario Party 8",
    text: "Nintendo Wii",
    stars: 1,
    color: AppColors.mainRed,
  ),
];

List<Items> fan1 = [
  Items(
    image: AppImage.fan1,
    mainText: "Kingdom Hearts",
    text: "Nintendo Wii",
    stars: 5,
    color: AppColors.mainPurple,
  ),
  Items(
    image: AppImage.fan2,
    mainText: "Kirby Dreamland",
    text: "Nintendo Wii",
    stars: 4,
    color: AppColors.mainGreen,
  ),
  Items(
    image: AppImage.fan3,
    mainText: "Epic Mickey",
    text: "Nintendo Wii",
    stars: 3,
    color: AppColors.mainRed,
  ),
  Items(
    image: AppImage.fan1,
    mainText: "Kingdom Hearts",
    text: "Nintendo Wii",
    stars: 1,
    color: AppColors.mainBlue,
  ),
];

List<Items> fan2 = [
  Items(
    image: AppImage.fan4,
    mainText: "Ocarina of TIme",
    text: "Nintendo Wii",
    stars: 5,
    color: AppColors.mainBlue,
  ),
  Items(
    image: AppImage.fan5,
    mainText: "Disney Infinity",
    text: "Nintendo Wii",
    stars: 4,
    color: AppColors.mainRed,
  ),
  Items(
    image: AppImage.fan6,
    mainText: "Mario Kart",
    text: "Nintendo Wii",
    stars: 3,
    color: AppColors.mainPurple,
  ),
  Items(
    image: AppImage.fan4,
    mainText: "Ocarina of TIme",
    text: "Nintendo Wii",
    stars: 1,
    color: AppColors.mainGreen,
  ),
];

List<Items> adventure1 = [
  Items(
    image: AppImage.adven1,
    mainText: "PokéPark",
    text: "Nintendo Wii",
    stars: 5,
    color: AppColors.mainBlue,
  ),
  Items(
    image: AppImage.adven2,
    mainText: "Metroid Prime 3",
    text: "Nintendo Wii",
    stars: 5,
    color: AppColors.mainRed,
  ),
  Items(
    image: AppImage.adven3,
    mainText: "Lego Harry Potter",
    text: "Nintendo Wii",
    stars: 5,
    color: AppColors.mainPurple,
  ),
  Items(
    image: AppImage.adven1,
    mainText: "PokéPark",
    text: "Nintendo Wii",
    stars: 1,
    color: AppColors.mainGreen,
  ),
];

List<Items> adventure2 = [
  Items(
    image: AppImage.adven4,
    mainText: "Dead Space 2",
    text: "Nintendo Wii",
    stars: 4,
    color: AppColors.mainRed,
  ),
  Items(
    image: AppImage.adven5,
    mainText: "Rayman",
    text: "Nintendo Wii",
    stars: 5,
    color: AppColors.mainGreen,
  ),
  Items(
    image: AppImage.adven6,
    mainText: "De Blob",
    text: "Nintendo Wii",
    stars: 5,
    color: AppColors.mainBlue,
  ),
  Items(
    image: AppImage.adven4,
    mainText: "Dead Space 2",
    text: "Nintendo Wii",
    stars: 1,
    color: AppColors.mainPurple,
  ),
];

List<Items> adventure3 = [
  Items(
    image: AppImage.adven7,
    mainText: "Red Steel 2",
    text: "Nintendo Wii",
    stars: 4,
    color: AppColors.mainGreen,
  ),
  Items(
    image: AppImage.adven8,
    mainText: "Ghostbusters",
    text: "Nintendo Wii",
    stars: 4,
    color: AppColors.mainPurple,
  ),
  Items(
    image: AppImage.adven9,
    mainText: "Sonic Colors",
    text: "Nintendo Wii",
    stars: 4,
    color: AppColors.mainRed,
  ),
  Items(
    image: AppImage.adven7,
    mainText: "Red Steel 2",
    text: "Nintendo Wii",
    stars: 1,
    color: AppColors.mainBlue,
  ),
];

List<Items> party = [
  Items(
    image: AppImage.party1,
    mainText: "Pac-Man Party",
    text: "Nintendo Wii",
    stars: 4,
    color: AppColors.mainGreen,
  ),
  Items(
    image: AppImage.party2,
    mainText: "Shrek's Carnival",
    text: "Nintendo Wii",
    stars: 4,
    color: AppColors.mainPurple,
  ),
  Items(
    image: AppImage.party3,
    mainText: "Chuck E. Cheese's Party",
    text: "Nintendo Wii",
    stars: 4,
    color: AppColors.mainRed,
  ),
  Items(
    image: AppImage.party1,
    mainText: "Pac-Man Party",
    text: "Nintendo Wii",
    stars: 5,
    color: AppColors.mainBlue,
  ),
];

List<Items> role1 = [
  Items(
    image: AppImage.role1,
    mainText: "Two Point Hospital",
    text: "Nintendo Exclusive",
    stars: 4,
    color: AppColors.mainBlue,
  ),
  Items(
    image: AppImage.role2,
    mainText: "Lego Games",
    text: "Cross-Platform",
    stars: 4,
    color: AppColors.mainPurple,
  ),
  Items(
    image: AppImage.role3,
    mainText: "Breath of the WIld",
    text: "Nintendo Exclusive",
    stars: 4,
    color: AppColors.mainGreen,
  ),
  Items(
    image: AppImage.role1,
    mainText: "Two Point Hospital",
    text: "Nintendo Exclusive",
    stars: 5,
    color: AppColors.mainRed,
  ),
];

List<Items> role2 = [
  Items(
    image: AppImage.role4,
    mainText: "Diablo 2",
    text: "Cross-platform",
    stars: 4,
    color: AppColors.mainRed,
  ),
  Items(
    image: AppImage.role5,
    mainText: "Super Metroid",
    text: "Nintendo Exclusive",
    stars: 5,
    color: AppColors.mainBlue,
  ),
  Items(
    image: AppImage.role6,
    mainText: "Diddy Kong Racing",
    text: "Nintendo Exclusive",
    stars: 5,
    color: AppColors.mainGreen,
  ),
  Items(
    image: AppImage.role4,
    mainText: "Diablo 2",
    text: "Cross-platform",
    stars: 3,
    color: AppColors.mainPurple,
  ),
];

List<Items> multiplayer1 = [
  Items(
    image: AppImage.play1,
    mainText: "Roblox Sports",
    text: "Cross-platform",
    stars: 3,
    color: AppColors.mainGreen,
  ),
  Items(
    image: AppImage.play2,
    mainText: "Mario Tennis",
    text: "Nintendo Exclusive",
    stars: 5,
    color: AppColors.mainRed,
  ),
  Items(
    image: AppImage.play3,
    mainText: "Rec Room",
    text: "Cross-platform",
    stars: 5,
    color: AppColors.mainPurple,
  ),
  Items(
    image: AppImage.play1,
    mainText: "Diablo 2",
    text: "Cross-platform",
    stars: 3,
    color: AppColors.mainPurple,
  ),
];

List<Items> multiplayer2 = [
  Items(
    image: AppImage.play4,
    mainText: "Super Smash Bros",
    text: "Nintendo Exclusive",
    stars: 5,
    color: AppColors.mainRed,
  ),
  Items(
    image: AppImage.play5,
    mainText: "Splatoon 2",
    text: "Cross-platform",
    stars: 5,
    color: AppColors.mainBlue,
  ),
  Items(
    image: AppImage.play6,
    mainText: "Captain Toad",
    text: "Nintendo Exclusive",
    stars: 5,
    color: AppColors.mainPurple,
  ),
  Items(
    image: AppImage.play4,
    mainText: "Super Smash Bros",
    text: "Cross-platform",
    stars: 3,
    color: AppColors.mainGreen,
  ),
];

Widget text(String text) {
  return Text(
    text,
    style: TextStyle(
      fontFamily: AppFonts.poppins,
      fontSize: 32,
      color: Colors.black,
    ),
  );
}
