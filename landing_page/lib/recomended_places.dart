// import 'package:flutter/material.dart';
// // import 'package:landing_page/page/recomended_places_models.dart';

// class RecomendedPlaces extends StatelessWidget {
//   // static var length;

//   const RecomendedPlaces({super.key});


//   @override
//   Widget build(BuildContext context) {

//     return SizedBox(
//       height: 235,
//       child: ListView.separated(
//         physics: BouncingScrollPhysics(),
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) {
//           return SizedBox(
//             width: 220,
//             child: Card(
//               elevation: 0.4,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(12),
//                 ),
//               ),
//               child: InkWell(
//                 borderRadius: BorderRadius.circular(12),
//                 onTap: () {},
//                 child: Padding(
//                   padding: const EdgeInsets.all(10),
//                   child: Column(
//                     children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(12),
//                         child: Image.asset(
//                           "assets/place/kakaban.jpg",
//                           fit: BoxFit.cover,
//                           height: 150,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 5,
//                       ),
//                       Row(
//                         children: [
//                           Text(
//                             "Pulau Kakaban",
//                             style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Spacer(),
//                           Icon(
//                             Icons.star,
//                             color: Colors.yellow,
//                             size: 14,
//                           ),
//                           Text(
//                             "4,4",
//                             style: TextStyle(
//                               fontSize: 12,
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 5,
//                       ),
//                       Row(
//                         children: [
//                           Icon(
//                             Icons.location_on,
//                             color: Theme.of(context).primaryColor,
//                             size: 16,
//                           ),
//                           SizedBox(
//                             width: 5,
//                           ),
//                           Text(
//                             "Berau, Kaltim",
//                             style: TextStyle(
//                               fontSize: 12,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           );
//         },
//         separatorBuilder: (context, index) => const Padding(
//           padding: EdgeInsets.only(right: 10),
//         ),
//         itemCount: 5,
//       ),
//     );
//   }
// }
