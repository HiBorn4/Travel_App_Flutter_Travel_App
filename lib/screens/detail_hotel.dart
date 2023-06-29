// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:myapp/widgets/offer.dart';

class HotelDetailScreen extends StatefulWidget {
  const HotelDetailScreen({super.key});

  static const routeName = '/hotel-detail';

  @override
  State<HotelDetailScreen> createState() => _HotelDetailScreenState();
}

class _HotelDetailScreenState extends State<HotelDetailScreen> {
  List<String> urls = [
    "https://resofrance.eu/wp-content/uploads/2018/09/hotel-luxe-mandarin-oriental-paris.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVxhEywKtPw82WX-VBfVz4q9ZtFnMUwTO8EH9_ndor&s",
    "https://lh3.googleusercontent.com/proxy/wTkD1USQGpbVXzZFNLCZBDCL1OQS1bFzSgPa44cHwiheaY9DpoqMdNjBgEJcCIZSQeSkCO-2q5gfuhtnuz4cDhtpansOcWos093YsGvogdQqWnpWlA",
    "https://images.squarespace-cdn.com/content/v1/57d5245815d5db80eadeef3b/1558864684068-1CX3SZ0SFYZA1DFJSCYD/ke17ZwdGBToddI8pDm48kIpXjvpiLxnd0TWe793Q1fcUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcZwk0euuUA52dtKj-h3u7rSTnusqQy-ueHttlzqk_avnQ5Fuy2HU38XIezBtUAeHK/Marataba+Safari+lodge",
    "https://lh3.googleusercontent.com/proxy/ovCSxeucYYoir_rZdSYq8FfCHPeot49lbYqlk7nXs7sXjqAfbZ2uw_1E9iivLT85LwIZiGSnXuqkdbQ_xKFhd91M7Y05G94d",
    "https://q-xx.bstatic.com/xdata/images/hotel/max500/216968639.jpg?k=a65c7ca7141416ffec244cbc1175bf3bae188d1b4919d5fb294fab5ec8ee2fd2&o=",
    "https://hubinstitute.com/sites/default/files/styles/1200x500_crop/public/2018-06/photo-1439130490301-25e322d88054.jpeg?h=f720410d&itok=HI5-oD_g",
    "https://cdn.contexttravel.com/image/upload/c_fill,q_60,w_2600/v1549318570/production/city/hero_image_2_1549318566.jpg",
    "https://www.shieldsgazette.com/images-i.jpimedia.uk/imagefetch/https://jpgreatcontent.co.uk/wp-content/uploads/2020/04/spain.jpg",
    "https://www.telegraph.co.uk/content/dam/Travel/2017/November/tunisia-sidi-bou-GettyImages-575664325.jpg",
    "https://lp-cms-production.imgix.net/features/2018/06/byrsa-hill-carthage-tunis-tunisia-2d96efe7b9bf.jpg",
    "https://www.newhomeco.com/sites/all/themes/nwhm/images/icons/Text_Orange.png",
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    _buildHospitality() {
      bool isClicked = false;

      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 110,
            child: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  offerCard("2 Bed", Icons.single_bed_sharp, isClicked),
                  offerCard("Dinner", Icons.dining_outlined, isClicked),
                  offerCard("Hot Tub", Icons.bathtub_outlined, isClicked),
                  offerCard("1 AC", Icons.ac_unit_rounded, isClicked),
                ],
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 310,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://lp-cms-production.imgix.net/features/2018/06/byrsa-hill-carthage-tunis-tunisia-2d96efe7b9bf.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 70,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 23,
                    child: Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 300,
              top: 70,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: Icon(
                      Icons.share_outlined,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 360,
              top: 70,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: Icon(
                      Icons.favorite_border_sharp,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 170,
              top: 250,
              child: Row(
                children: [
                  Container(
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ClipRect(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "124 photos",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 290,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 700,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(20),
                    right: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "BaLi Motel",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.3),
                              offset: Offset(0, 2),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Vung Tau",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.3),
                              offset: Offset(0, 2),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.place_outlined,
                          color: Colors.grey,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Indonesia",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 23,
                        ),
                        Text(
                          " 4.9",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "(6.8K review)",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Text(
                          "\$580/",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            shadows: [
                              Shadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: Offset(0, 3),
                                blurRadius: 5,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "night",
                          style: TextStyle(
                            color: Colors.grey.shade900,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 15),
                      child: SizedBox(
                        width: 500,
                        child: Divider(
                          color: Colors.grey.shade300,
                          thickness: 1.5,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'Set in Vung Tau, 100 meters from Front Beach, BaLi Motel Vung Tau offers accommodation with a garden, private parking and a shared...',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'Read more',
                              style: TextStyle(color: Colors.amber),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "What we offer",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.3),
                              offset: Offset(0, 2),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 130, // Set the desired height
                      child: _buildHospitality(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Hosted by",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.3),
                              offset: Offset(0, 2),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  image: NetworkImage(urls[1]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  "  Harleen Smith",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 23,
                                    ),
                                    Text(
                                      " 4.9",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "(6.8K review)",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: Image(
                                image: NetworkImage(urls[11]),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Container(
                        width: 390,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade300,
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Book Now",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
