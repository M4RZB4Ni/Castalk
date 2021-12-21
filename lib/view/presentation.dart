import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Presentation extends StatefulWidget{
  const Presentation({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PresentationState();
  }


}
class PresentationState extends State<Presentation>{
  
  List<dynamic> routes=[
    "/Intro",
    "/SignIn",
    "/EnterCode",
    "/AddAccountInfo",
    "/Congratulations",
    "/Player",
    "/Profile",
    "/DriveMode",
    "/SavePlayList",
    "/Playlist",
    "/Downloads",
    "/LikedEpisodes",
    "/PlayListEpisodes",
    "/Market",
    "/Products",
    "/Purchases",
    "/PromotionList",
    "/Promotion",
    "/PromotionAnalytics",
    "/Achivments",
    "/Monetization",
    "/RequestVerifyBadge",
    "/ProfileEdit",
    "/ListeningStatistics",
    "/MyCasts",
    "/OwnedPodcast",
    "/OwnedSeasons",
    "/OwnedEpisodes" ,
    "/HomeFeed"  ,
    "/HomeItemsExpanded"  ,
    "/Explore"  ,
    "/PodcastView"  ,
    "/SeasonView"  ,
    "/EpisodeView"  ,
    "/Notifications"  ,
    "/OtherUserProfile"  ,
    "/Comments"  ,
    "/Editor"  ,
    "/Exported"  ,
    "/SavedProjects"  ,
    "/RecordedList"  ,
    "/Recorder"  ,
    "/Wallet"  ,
    "/NavMother"  ,
    "/TransactionHistory"  ,
    "/WalletAnalytics"  ,
    "/Deposit"  ,
    "/Withdraw"  ,
    "/TransactionDetails"  ,
    "/SetPlan"  ,
    "/Drafts"  ,
    "/DraftItem"  ,
    "/NewPost"  ,
    "/NewPodcast"  ,
    "/NewSeason"  ,
    "/NewEpisode"  ,
    "/ChooseSubscription"  ,
    "/CartProceed"  ,
    "/PaymentResponse"  ,
    "/Presentation"  ,
  ];
  
  @override
  Widget build(BuildContext context) {


    double w = MediaQuery.of(context).size.width;
   // double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Style.background,
      appBar: PreferredSize(preferredSize: Size(w, 100), child: header(w)),
      body: ListView.builder(
        itemCount: routes.length,
        itemBuilder: (BuildContext context, int index) {
          return _routesItem(routes[index], w);

        },



      ),


    );
  }
  
  _routesItem(name,w){
    return  Padding(
      padding: const EdgeInsets.all(8),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(name);

        },
        child: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Text(
            name.toString().substring(1,name.toString().length),
            style: Style.t_500_18_back,
          ),
        ),
        style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size(w, 54)),
            padding: MaterialStateProperty.all(
                const EdgeInsets.only(left: 6, top: 6, bottom: 6)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    side: const BorderSide(color: Style.accentGold))),
            backgroundColor: MaterialStateProperty.all(Style.accentGold)),
      ),
    );
    
  }

  header(w) {
    return Padding(
      padding: const EdgeInsets.only(top: 38, left: 24, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Text("Phase one Presentation", style: Style.t_500_24w),


        ],
      ),
    );
  }


}
