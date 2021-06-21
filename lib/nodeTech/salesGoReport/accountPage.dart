// import 'package:flutter/material.dart';
//
// class Accounts extends StatefulWidget {
//   @override
//   _AccountsState createState() => _AccountsState();
// }
//
// class _AccountsState extends State<Accounts> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(MediaQuery.of(context).size.height*.1),
//         child: _appBar(),
//       ),
//       body: _accountsBody(),
//     );
//   }
//
//   _accountsBody(){
//     return SingleChildScrollView(
//       child: Column(
//         children: List.generate(5, (index) {
//           return _listCardWidget('Name ${index.toString()}');
//         }),
//       ),
//     );
//   }
//
//   _listCardWidget(_accountName){
//     Size _pageSize = MediaQuery.of(context).size;
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: _pageSize.width*.025, vertical: _pageSize.height*.01),
//       child: Card(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(15)
//         ),
//         elevation: 8,
//         child: Container(
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15)
//           ),
//           width: _pageSize.width,
//           padding: EdgeInsets.symmetric(horizontal: 10),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 10,),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(_accountName),
//
//                   Icon(Icons.star)
//                 ],
//               ),
//
//               SizedBox(height: 10,),
//
//               Text("PoC"),
//
//               SizedBox(height: 10,),
//
//               Text("Last Met"),
//
//               SizedBox(height: 10,),
//
//               Text("Next Meeting"),
//
//               SizedBox(height: 10,),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   _appBar() {
//     return AppBar(
//       backgroundColor: Colors.white,
//       flexibleSpace: SafeArea(
//         child: Container(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Icon(Icons.arrow_back_ios_outlined),
//
//                   Container(
//                     child: Text("Create"),
//                   )
//                 ],
//               ),
//
//               Row(
//                 children: <Widget>[
//                   Expanded(
//                     child: Column(
//                       children: <Widget>[
//                         TextFormField(
//                           decoration: InputDecoration(
//                               hintText: "Search..",
//                               hintStyle: TextStyle(
//                                 // color: SGColors.MEDIUM_GREY_COLOUR,
//                                 color: Colors.black
//                               ),
//                               contentPadding: EdgeInsets.all(10),
//                               errorBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                       // color: SGColors.LIGHT_GREY_COLOUR
//                                     color: Colors.grey
//                                   ),
//                                   borderRadius: BorderRadius.all(Radius.circular(10.0))
//                               ),
//                               enabledBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     // color: SGColors.LIGHT_GREY_COLOUR
//                                       color: Colors.grey
//                                   ),
//                                   borderRadius: BorderRadius.all(Radius.circular(10.0))
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     // color: SGColors.LIGHT_GREY_COLOUR
//                                       color: Colors.grey
//                                   ),
//                                   borderRadius: BorderRadius.all(Radius.circular(10.0))
//                               ),
//                               focusedErrorBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     // color: SGColors.LIGHT_GREY_COLOUR
//                                       color: Colors.grey
//                                   ),
//                                   borderRadius: BorderRadius.all(Radius.circular(10.0))
//                               ),
//                               filled: true,
//                               fillColor:Colors.grey, // SGColors.LIGHT_GREY_COLOUR,
//                               prefixIcon: Icon(
//                                 Icons.search,
//                                 color: Colors.black, // SGColors.MEDIUM_GREY_COLOUR,
//                                 size: 20,
//                               ),
//                               // suffixIcon: crossIcon()
//                           ),
//                           style: TextStyle(
//                               color: Colors.white, // SGColors.BLACK_COLOUR
//                           ),
//                           onChanged: (value) {
//                             setState(() {
//                               // searchText = value;
//                             });
//                             print(value);
//                             // this.widget.searchUsers(searchText);
//                           },
//                           // controller: _textEditingController,
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
