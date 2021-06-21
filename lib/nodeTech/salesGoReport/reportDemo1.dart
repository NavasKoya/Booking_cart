// import 'package:flutter/material.dart';
//
// class ReportDemo1 extends StatefulWidget {
//   @override
//   _ReportDemo1State createState() => _ReportDemo1State();
// }
//
// class _ReportDemo1State extends State<ReportDemo1> {
//
//   String _filterVal = 'master';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _demoReport(),
//     );
//   }
//
//   TextStyle _reportTableHeadingTextStyle(){
//     return TextStyle(
//         fontSize: 18, color: Colors.white70, fontWeight: FontWeight.bold
//     );
//   }
//
//   _reportTableDataTextStyle(){
//     return TextStyle(
//         fontSize: 16, color: Colors.black87
//     );
//   }
//
//   _demoReport() {
//     Size _pageSize = MediaQuery.of(context).size;
//
//     return Card(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   width: _pageSize.width*.6,
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: 'Search Report',
//                       filled: true,
//                       fillColor: Colors.white,
//                       contentPadding: const EdgeInsets.only(
//                           left: 14.0, bottom: 6.0, top: 8.0),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.red),
//                         borderRadius: BorderRadius.circular(25.0),
//                       ),
//                       enabledBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(color: Colors.black54),
//                         borderRadius: BorderRadius.circular(25.0),
//                       ),
//                     ),
//                     // onChanged: (value) {
//                     //   bloc.feedSearchVal(value);
//                     // },
//                   ),
//                 ),
//
//                 DropdownButton(
//                     dropdownColor: Colors.white,
//                     // focusColor: Theme.of(context).primaryColor,
//                     value: _filterVal,
//                     items: [
//                       DropdownMenuItem(
//                         child: Text("MasterTrust", style: TextStyle(color: Colors.black87),),
//                         value: 'master',
//                       ),
//                       DropdownMenuItem(
//                         child: Text("Bonanza", style: TextStyle(color: Colors.black87),),
//                         value: 'bonanza',
//                       ),
//                     ],
//                     onChanged: (value) {
//                       setState(() {
//                         _filterVal = value.toString();
//                       });
//                     }
//                 ),
//               ],
//             ),
//           ),
//           Card(
//             elevation: 9,
//             child: Table(
//               // border: TableBorder.all(color: Colors.black ),
//               children: [
//                 TableRow(
//                     decoration: BoxDecoration(
//                       // color: Colors.white,
//                       color: Color(0xFF13508A)
//                     ),
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(20),
//                         child: Text("Name Of the User", style: _reportTableHeadingTextStyle(),textAlign: TextAlign.center,),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(20),
//                         child: Text("Manager", style: _reportTableHeadingTextStyle(),textAlign: TextAlign.center,),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(20),
//                         child: Text("Last Login Date Mobile", style: _reportTableHeadingTextStyle(),textAlign: TextAlign.center,),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(20),
//                         child: Text("Last Login Date Web", style: _reportTableHeadingTextStyle(),textAlign: TextAlign.center,),
//                       ),
//
//                       Padding(
//                         padding: const EdgeInsets.all(20),
//                         child: Text("App Version", style: _reportTableHeadingTextStyle(), textAlign: TextAlign.center,),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(20),
//                         child: Text("No. of time Logged in a week", style: _reportTableHeadingTextStyle(), textAlign: TextAlign.center,),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(20),
//                         child: Text("No. of time Logged in a month", style: _reportTableHeadingTextStyle(),textAlign: TextAlign.center,),
//                       ),
//
//                       Padding(
//                         padding: const EdgeInsets.all(20),
//                         child: Text("Lead Load", style: _reportTableHeadingTextStyle(), textAlign: TextAlign.center,),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(20),
//                         child: Text("No. of leads WON", style: _reportTableHeadingTextStyle(), textAlign: TextAlign.center,),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(20),
//                         child: Text("No. of leads LOST", style: _reportTableHeadingTextStyle(),textAlign: TextAlign.center,),
//                       ),
//
//                       Padding(
//                         padding: const EdgeInsets.all(20),
//                         child: Text("View Delay", style: _reportTableHeadingTextStyle(), textAlign: TextAlign.center,),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(20),
//                         child: Text("In progress Delay", style: _reportTableHeadingTextStyle(), textAlign: TextAlign.center,),
//                       ),
//                     ]
//                 ),
//               ],
//             ),
//           ),
//
//           Container(
//             height: _pageSize.height*.7,
//             child: SingleChildScrollView(
//               child: Scrollbar(
//                 child: Column(
//                     children: List.generate(5, (index)  {
//                       return Table(
//                         border: TableBorder.all(color: Colors.black12),
//                         children: [
//                           TableRow(
//                               decoration: BoxDecoration(
//                                 color: index%2==0 ? Colors.white54 : Colors.white,
//                               ),
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.all(20),
//                                   child: Text("Name Of the User", style: _reportTableDataTextStyle(),textAlign: TextAlign.center,),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.all(20),
//                                   child: Text("Manager", style: _reportTableDataTextStyle(),textAlign: TextAlign.center,),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.all(20),
//                                   child: Text("Last Login Date Mobile", style: _reportTableDataTextStyle(),textAlign: TextAlign.center,),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.all(20),
//                                   child: Text("Last Login Date Web", style: _reportTableDataTextStyle(),textAlign: TextAlign.center,),
//                                 ),
//
//                                 Padding(
//                                   padding: const EdgeInsets.all(20),
//                                   child: Text("App Version", style: _reportTableDataTextStyle(), textAlign: TextAlign.center,),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.all(20),
//                                   child: Text("No. of time Logged in a week", style: _reportTableDataTextStyle(), textAlign: TextAlign.center,),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.all(20),
//                                   child: Text("No. of time Logged in a month", style: _reportTableDataTextStyle(),textAlign: TextAlign.center,),
//                                 ),
//
//                                 Padding(
//                                   padding: const EdgeInsets.all(20),
//                                   child: Text("Lead Load", style: _reportTableDataTextStyle(), textAlign: TextAlign.center,),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.all(20),
//                                   child: Text("No. of leads WON", style: _reportTableDataTextStyle(), textAlign: TextAlign.center,),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.all(20),
//                                   child: Text("No. of leads LOST", style: _reportTableDataTextStyle(),textAlign: TextAlign.center,),
//                                 ),
//
//                                 Padding(
//                                   padding: const EdgeInsets.all(20),
//                                   child: Text("View Delay", style: _reportTableDataTextStyle(), textAlign: TextAlign.center,),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.all(20),
//                                   child: Text("In progress Delay", style: _reportTableDataTextStyle(), textAlign: TextAlign.center,),
//                                 ),
//                               ]
//                           ),
//                         ],
//                       );
//
//                     })
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
