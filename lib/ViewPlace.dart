import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ViewPlace extends StatelessWidget {
  String img = "";
  String name = "";
  String country = "";
  int price = 0;
  ViewPlace(String img, String name, String country, int price, {super.key}) {
    this.img = img;
    this.name = name;
    this.country = country;
    this.price = price;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/$img'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: ListTile(
                leading: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.grey,
                      size: 18.0,
                    ),
                  ),
                ),
                trailing: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.more_horiz,
                    color: Colors.grey,
                    size: 18.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 260.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  ),
                ),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 26.0,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                '\$$price',
                                style: const TextStyle(
                                  fontSize: 22.0,
                                  color: Color(0xff2ea3d4),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.black26,
                                    size: 17.0,
                                  ),
                                  Text(
                                    ' $country',
                                    style: const TextStyle(
                                      color: Colors.black26,
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                '/person',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.black26,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton.icon(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  backgroundColor:
                                      const Color(0xffe8f5e9).withOpacity(.4),
                                  shape: BeveledRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                              icon: const Icon(
                                Icons.watch_later_outlined,
                                color: Colors.black26,
                                size: 15.0,
                              ),
                              label: const Text(
                                '3 Days',
                                style: TextStyle(
                                    color: Colors.black26, fontSize: 14.0),
                              ),
                            ),
                            TextButton.icon(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  backgroundColor:
                                      const Color(0xffe8f5e9).withOpacity(.4),
                                  shape: BeveledRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                              icon: const Icon(
                                Icons.star_border_rounded,
                                color: Colors.black26,
                                size: 15.0,
                              ),
                              label: const Text(
                                '4.5 Ratings',
                                style: TextStyle(
                                    color: Colors.black26, fontSize: 14.0),
                              ),
                            ),
                            TextButton.icon(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  backgroundColor:
                                      const Color(0xffe8f5e9).withOpacity(.4),
                                  shape: BeveledRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                              icon: const Icon(
                                Icons.perm_identity,
                                color: Colors.black26,
                                size: 15.0,
                              ),
                              label: const Text(
                                'With guide',
                                style: TextStyle(
                                    color: Colors.black26, fontSize: 14.0),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        const Text(
                          'Overviews',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: ReadMoreText(
                            'This is the largest pyramid among the pyramid complex located at El Giza in Egypt. The pyramid is better known as the Pyramid of Khufu. Moreover, this is one of the oldest Seven Wonders of the Ancient World. This is the only one that has been not been damaged so far. It is known that the pyramid was made by Pharaoh Khufu who belonged to the fourth dynasty of Egypt. The pyramid was built as a royal tomb with a span of 20 years. The pyramid is also famous as it remained as the tallest man-made structure on the planet for a longer time.',
                            trimLines: 2,
                            colorClickableText: Color(0xff2ea3d4),
                            trimCollapsedText: 'Read more',
                            trimExpandedText: 'Show less',
                            style: TextStyle(
                              color: Colors.black26,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.30,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            image: DecorationImage(
                              image: AssetImage('assets/images/map.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 80.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 10.0),
              child: Column(
                children: [
                  Expanded(
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.10,
                        decoration: BoxDecoration(
                          color: const Color(0xff2ea3d4),
                          borderRadius: BorderRadius.circular(50.0),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 340.0,
                              offset: Offset(60.0, 60.0),
                            ),
                          ],
                        ),
                        child: MaterialButton(
                          onPressed: () => {},
                          child: const Text(
                            'Book Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
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














// class DetailScreen extends StatefulWidget {
//   const DetailScreen({Key? key}) : super(key: key);

//   @override
//   State<DetailScreen> createState() => _DetailScreenState();
// }

// class _DetailScreenState extends State<DetailScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Stack(
//           children: [
//             Container(
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height * 0.5,
//               decoration: const BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage('assets/images/six.jpeg'),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 30.0),
//               child: ListTile(
//                 leading: GestureDetector(
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                   child: const CircleAvatar(
//                     backgroundColor: Colors.white,
//                     child: Icon(
//                       Icons.arrow_back_ios_new,
//                       color: Colors.grey,
//                       size: 18.0,
//                     ),
//                   ),
//                 ),
//                 trailing: const CircleAvatar(
//                   backgroundColor: Colors.white,
//                   child: Icon(
//                     Icons.more_horiz,
//                     color: Colors.grey,
//                     size: 18.0,
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 260.0),
//               child: Container(
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     topRight: Radius.circular(30.0),
//                     topLeft: Radius.circular(30.0),
//                   ),
//                 ),
//                 height: MediaQuery.of(context).size.height,
//                 width: MediaQuery.of(context).size.width,
//                 child: SingleChildScrollView(
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 20.0, right: 20.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(top: 40.0),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: const [
//                               Text(
//                                 'Popular Places',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.w700,
//                                   fontSize: 26.0,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               Text(
//                                 '\$350',
//                                 style: TextStyle(
//                                   fontSize: 22.0,
//                                   color: Color(0xff2ea3d4),
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 10.0),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Row(
//                                 children: const [
//                                   Icon(
//                                     Icons.location_on_outlined,
//                                     color: Colors.black26,
//                                     size: 17.0,
//                                   ),
//                                   Text(
//                                     ' Switzerland',
//                                     style: TextStyle(
//                                       color: Colors.black26,
//                                       fontSize: 17.0,
//                                       fontWeight: FontWeight.w500,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               const Text(
//                                 '/person',
//                                 style: TextStyle(
//                                   fontSize: 17.0,
//                                   color: Colors.black26,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 20.0,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             TextButton.icon(
//                               onPressed: () {},
//                               style: TextButton.styleFrom(
//                                   backgroundColor:
//                                       const Color(0xffe8f5e9).withOpacity(.4),
//                                   shape: BeveledRectangleBorder(
//                                       borderRadius:
//                                           BorderRadius.circular(5.0))),
//                               icon: const Icon(
//                                 Icons.watch_later_outlined,
//                                 color: Colors.black26,
//                                 size: 15.0,
//                               ),
//                               label: const Text(
//                                 '3 Days',
//                                 style: TextStyle(
//                                     color: Colors.black26, fontSize: 14.0),
//                               ),
//                             ),
//                             TextButton.icon(
//                               onPressed: () {},
//                               style: TextButton.styleFrom(
//                                   backgroundColor:
//                                       const Color(0xffe8f5e9).withOpacity(.4),
//                                   shape: BeveledRectangleBorder(
//                                       borderRadius:
//                                           BorderRadius.circular(5.0))),
//                               icon: const Icon(
//                                 Icons.star_border_rounded,
//                                 color: Colors.black26,
//                                 size: 15.0,
//                               ),
//                               label: const Text(
//                                 '4.5 Ratings',
//                                 style: TextStyle(
//                                     color: Colors.black26, fontSize: 14.0),
//                               ),
//                             ),
//                             TextButton.icon(
//                               onPressed: () {},
//                               style: TextButton.styleFrom(
//                                   backgroundColor:
//                                       const Color(0xffe8f5e9).withOpacity(.4),
//                                   shape: BeveledRectangleBorder(
//                                       borderRadius:
//                                           BorderRadius.circular(5.0))),
//                               icon: const Icon(
//                                 Icons.perm_identity,
//                                 color: Colors.black26,
//                                 size: 15.0,
//                               ),
//                               label: const Text(
//                                 'With guide',
//                                 style: TextStyle(
//                                     color: Colors.black26, fontSize: 14.0),
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 15.0,
//                         ),
//                         const Text(
//                           'Overviews',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20.0,
//                             color: Colors.black,
//                           ),
//                         ),
//                         const Padding(
//                           padding: EdgeInsets.only(top: 20.0,bottom: 20.0),
//                           child: ReadMoreText(
//                               'This is the largest pyramid among the pyramid complex located at El Giza in Egypt. The pyramid is better known as the Pyramid of Khufu. Moreover, this is one of the oldest Seven Wonders of the Ancient World. This is the only one that has been not been damaged so far. It is known that the pyramid was made by Pharaoh Khufu who belonged to the fourth dynasty of Egypt. The pyramid was built as a royal tomb with a span of 20 years. The pyramid is also famous as it remained as the tallest man-made structure on the planet for a longer time.',
//                           trimLines: 2,
//                           colorClickableText: Color(0xff2ea3d4),
//                           trimCollapsedText: 'Read more',
//                           trimExpandedText: 'Show less',
//                             style: TextStyle(
//                               color: Colors.black26,
//                               fontSize: 15.0,
//                               fontWeight: FontWeight.w500,
//                               height: 1.5,
//                             ),
//                           ),
//                         ),
//                         Container(
//                           height: MediaQuery.of(context).size.height * 0.30,
//                           width: MediaQuery.of(context).size.width,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(30.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/images/map.webp'),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 80.0,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 15.0,right: 15.0,bottom: 10.0),
//               child:  Column(
//                       children: [
//                         Expanded(
//                           child: Align(
//                             alignment: FractionalOffset.bottomCenter,
//                             child: Container(
//                               width: MediaQuery.of(context).size.width,
//                               height: MediaQuery.of(context).size.height * 0.10,
//                               decoration: BoxDecoration(
//                                 color: const Color(0xff2ea3d4),
//                                 borderRadius: BorderRadius.circular(50.0),
//                                 boxShadow: const [
//                                   BoxShadow(
//                                     color: Colors.black26,
//                                     blurRadius: 340.0,
//                                     offset: Offset(60.0, 60.0),
//                                   ),
//                                 ],
//                               ),
//                               child: MaterialButton(
//                                 onPressed: () => {},
//                                 child: const Text(
//                                   'Book Now',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 16.0,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//           ],
//         ),
//       ),
//     );
//   }
// }