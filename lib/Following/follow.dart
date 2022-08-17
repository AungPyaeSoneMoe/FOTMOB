import 'package:flutter/material.dart';

class Follow extends StatefulWidget {
  Follow({Key? key}) : super(key: key);

  @override
  State<Follow> createState() => _FollowState();
}

class _FollowState extends State<Follow> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          title: const Text('Following'),
          bottom: const TabBar(
            labelColor: Colors.black,
            tabs: [
              Tab(
                child: Text('Teams'),
              ),
              Tab(
                child: Text('Players'),
              )
            ],
          ),
        ),
        body: Container(
          color: Colors.grey.shade300,
          child: TabBarView(children: [
            ListView.builder(
              itemCount: footballTeam.length,
              itemBuilder: ((context, index) {
                return Card(
                  margin: EdgeInsets.only(left: 7, top: 5, bottom: 5, right: 7),
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 15,
                      backgroundImage:
                          NetworkImage('${footballTeam[index]['icon']}'),
                    ),
                    title: Text('${footballTeam[index]['name']}'),
                    trailing: ElevatedButton(
                        style: TextButton.styleFrom(
                          primary: Colors.green,
                          backgroundColor: Colors.grey.shade300,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Follow',
                        )),
                  ),
                );
              }),
            ),
            ListView.builder(
              itemCount: footballPlayer.length,
              itemBuilder: ((context, index) {
                return Card(
                  margin: EdgeInsets.only(left: 7, top: 5, bottom: 5, right: 7),
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 15,
                      backgroundImage:
                          NetworkImage('${footballPlayer[index]['icon']}'),
                    ),
                    title: Text('${footballPlayer[index]['name']}'),
                    trailing: ElevatedButton(
                      style: TextButton.styleFrom(
                        primary: Colors.green,
                        backgroundColor: Colors.grey.shade300,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Follow',
                      ),
                    ),
                  ),
                );
              }),
            ),
          ]),
        ),
      ),
    );
  }
}

var footballPlayer = [
  {
    'icon':
        'https://media.gettyimages.com/photos/cristiano-ronaldo-of-manchester-united-poses-after-signing-for-the-picture-id1337497847?k=20&m=1337497847&s=612x612&w=0&h=cqFXCODAceG5RwnQXRmOorl9MRR7DUfcBtqFH2b30No=',
    'name': 'Cristiano Ronaldo'
  },
  {
    'icon':
        'https://media.gettyimages.com/photos/barcelonas-argentine-forward-lionel-messi-celebrates-after-scoring-a-picture-id1232931689?k=20&m=1232931689&s=612x612&w=0&h=gfsqXO-49tz0v6_pAsiYwtpIHCIQGpx_aQYhXRUKnCw=',
    'name': 'Lionel Messi'
  },
  {
    'icon':
        'https://media.gettyimages.com/photos/neymar-of-paris-saintgermain-celebrates-victory-after-the-uefa-semi-picture-id1267029271?k=20&m=1267029271&s=612x612&w=0&h=kSul2PYoafuhqj1tGz27QuUZ99GD7xeQfseT839f6PA=',
    'name': 'Neymar'
  },
  {
    'icon':
        'https://media.gettyimages.com/photos/kylian-mbappe-of-paris-saintgermain-celebrates-after-scoring-their-picture-id1311328146?k=20&m=1311328146&s=612x612&w=0&h=jkkY9EXjeNqJ1jSyFmtSA5ScUo3JjRWfdQ9iwdjlxwo=',
    'name': 'Mbappe'
  },
  {
    'icon':
        'https://media.gettyimages.com/photos/luis-suarez-of-atletico-de-madrid-celebrates-after-scoring-their-picture-id1319486509?k=20&m=1319486509&s=612x612&w=0&h=cl03q49ZbJQnyDDFQ7tXMMr58M4VMJPvDFaIgx3Dk9o=',
    'name': 'Suarez '
  },
  {
    'icon':
        'https://media.gettyimages.com/photos/marcus-rashford-of-manchester-united-celebrates-scoring-a-goal-to-picture-id1230349191?k=20&m=1230349191&s=612x612&w=0&h=vQfpgbdI1nLXxNVSR4CIYevtPpWcyjyrYEmFsCu0tOA=',
    'name': 'Rashford'
  },
  {
    'icon':
        'https://media.gettyimages.com/photos/in-this-photo-released-on-june-13-2022-manchester-city-unveil-new-picture-id1402617924?k=20&m=1402617924&s=612x612&w=0&h=7a2cNmBKnjbOlWsEqbL8Yik_mJ3u6hs54TwWrK_DcX4=',
    'name': 'Haaland '
  },
  {
    'icon':
        'https://media.gettyimages.com/photos/robert-lewandowski-poses-for-the-media-as-he-is-presented-as-a-fc-picture-id1413053199?k=20&m=1413053199&s=612x612&w=0&h=w5Yt0bq7K490x9GbBp-rFKF2CaixBuRCqO55iAw8zXk=',
    'name': 'Lewandowski '
  },
  {
    'icon':
        'https://media.gettyimages.com/photos/barcelonas-french-midfielder-antoine-griezmann-celebrates-his-teams-picture-id1230645897?k=20&m=1230645897&s=612x612&w=0&h=wjpHCYeaLJSwFd_XJBpgIbATVDQ5PEDpWAhNBA_3fng=',
    'name': 'Griezmann'
  },
  {
    'icon':
        'https://media.gettyimages.com/photos/karim-benzema-of-real-madrid-celebrates-after-scoring-his-sides-goal-picture-id1291495573?k=20&m=1291495573&s=612x612&w=0&h=rgW7hYJdikFLDO2CGKWXqLipuWk1IDV3BOVrTjGtgGU=',
    'name': 'Benzama '
  },
  {
    'icon':
        'https://media.gettyimages.com/photos/rodrygo-of-real-madrid-celebrates-with-the-uefa-champions-league-picture-id1399809507?k=20&m=1399809507&s=612x612&w=0&h=lT6vQTMiaRiEMxdPjrNsFTpWpV8NDoLR3nH_zLEsIdU=',
    'name': 'Rodrygo '
  },
];
var footballTeam = [
  {
    'icon':
        'https://media.gettyimages.com/photos/logo-manchester-united-during-the-uefa-europa-league-group-l-match-picture-id1189432649?k=20&m=1189432649&s=612x612&w=0&h=lK5t70D_EPWoQssOPoowHjxFImLc4URVLrd-GZE3K-0=',
    'name': 'Man Utd'
  },
  {'icon': 'https://wallpapercave.com/wp/iBcDdzr.jpg', 'name': 'Chelsea'},
  {'icon': 'https://wallpapercave.com/wp/wp2956720.jpg', 'name': 'Dortmond'},
  {'icon': 'https://wallpapercave.com/wp/wp2802797.jpg', 'name': 'Liverpool'},
  {'icon': 'https://wallpapercave.com/wp/wp2802807.jpg', 'name': 'Barcelona'},
  {'icon': 'https://wallpapercave.com/wp/wp1943857.jpg', 'name': 'Real Madrid'},
  {'icon': 'https://wallpapercave.com/wp/K8GqDk9.jpg', 'name': 'Juventus'},
  {'icon': 'https://wallpapercave.com/wp/wp2956738.jpg', 'name': 'Arsenal'},
  {
    'icon': 'https://wallpapercave.com/wp/wp2802800.jpg',
    'name': 'Bayern Munich'
  },
  {'icon': 'https://wallpapercave.com/wp/wp2956754.jpg', 'name': 'Roma'},
  {'icon': 'https://wallpapercave.com/wp/wp2542454.jpg', 'name': 'Man city'},
];
