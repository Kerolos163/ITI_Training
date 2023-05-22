// import 'package:finail/Bloc/App_State.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../Bloc/App_Logic.dart';
// import '../DataBase/Database2.dart';
// import '../data/app_data.dart';
// import 'my_cart.dart';
// class ITEM_DETAIL extends StatelessWidget {
//   int V;
//   Map item;
//   DatabaseApp2 d = DatabaseApp2();
//   ITEM_DETAIL(Map im) {
//     this.item = im;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => Appcubit(),
//       child: BlocConsumer<Appcubit, BuyState>(
//         listener: (context, state) {},
//         builder: (context, state) {
//           var ob = Appcubit.getobject(context);
//           // MY_CART(x:ob);
//           return Scaffold(
//               appBar: AppBar(
//                 title: Text('${item['type']}'),
//                 centerTitle: true,
//                 iconTheme: IconThemeData(size: 40),
//               ),
//               body: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     Container(
//                       alignment: Alignment.topLeft,
//                       width: double.infinity,
//                       child: Column(children: [
//                         InteractiveViewer(
//                           child: Image.network(
//                             "${item['image']}",
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                         SizedBox(height: 20),
//                         Container(
//                             decoration: BoxDecoration
//                             (
//                               borderRadius: BorderRadius.circular(20),
//                                color: Colors.amber,
//                             ),
//                           margin: EdgeInsets.all(20),
//                           padding: EdgeInsets.all(10),
//                           alignment: Alignment.topLeft,
//                           child: Text(
//                             "type :   ${item['type']}",
//                             style: TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         SizedBox(height: 20),
//                         Container(
//                             decoration: BoxDecoration
//                             (
//                               borderRadius: BorderRadius.circular(20),
//                                color: Colors.amber,
//                             ),
//                           margin: EdgeInsets.all(20),
//                           padding: EdgeInsets.all(10),
//                           alignment: Alignment.topLeft,
//                           child: Text(
//                             "price :   ${item['price']}",
//                             style: TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         SizedBox(height: 20),
//                         Container(
//                             decoration: BoxDecoration
//                             (
//                               borderRadius: BorderRadius.circular(20),
//                                color: Colors.amber,
//                             ),
//                           margin: EdgeInsets.all(20),
//                           padding: EdgeInsets.all(10),
//                           alignment: Alignment.topLeft,
//                           child: Text(
//                             "size :   ${item['size']}",
//                             style: TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         SizedBox(height: 20),
//                         Container(
//                             decoration: BoxDecoration
//                             (
//                               borderRadius: BorderRadius.circular(20),
//                                color: Colors.amber,
//                             ),
//                           margin: EdgeInsets.all(20),
//                           padding: EdgeInsets.all(10),
//                           alignment: Alignment.topLeft,
//                           child: Text(
//                             "color :   ${item['color']}",
//                             style: TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         SizedBox(height: 20),
//                         Text(
//                           "${ob.num_Items}",
//                           style: TextStyle(
//                               fontSize: 30,
//                               color: ob.num_Items == 0
//                                   ? Colors.red
//                                   : Colors.green),
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             IconButton(
//                               onPressed: () {
//                                 ob.Increase_ele(item);
//                                  V=ob.num_Items;
//                               },
//                               icon: Icon(
//                                 Icons.add,
//                                 size: 50,
//                               ),
//                               color: Colors.green,
//                             ),
//                             IconButton(
//                               onPressed: () {
//                                 ob.decrease_ele(item);
//                                 V=ob.num_Items;
//                               },
//                               icon: const Icon(
//                                 Icons.remove,
//                                 size: 50,
//                               ),
//                               color: Colors.red,
//                             ),
//                           ],
//                         ),
//                         MaterialButton(
//                           onPressed: () async{
//                               d.insertData(item['type'], item['image'],
//                                 item['size'], item['color'], item['price'],V);
//                                 List ll=await d.getData(d.db);
//                                 print("*"*200);
//                                 print(ll);
//                           },
//                           child: Container(
//                             decoration: BoxDecoration
//                             (
//                               borderRadius: BorderRadius.circular(20),
//                                color: Colors.amber,
//                             ),                           
//                             padding: EdgeInsets.all(8),
//                               child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 children:const [
//                                   Icon(Icons.send_to_mobile_outlined,size: 30,),
//                                   SizedBox(width: 10,),
//                                    Text(
//                                         "Submit",style: TextStyle(fontSize: 20),
//                                       ),
//                                 ],
//                               )),
//                         )
//                       ]),
//                     )
//                   ],
//                 ),
//               ));
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../DataBase/Database2.dart';
import '../bloc/App_Logic.dart';
import '../bloc/App_State.dart';


class ITEM_DETAIL extends StatefulWidget {
  Map item;

  ITEM_DETAIL(Map im) {
    this.item = im;
  }

  @override
  State<StatefulWidget> createState() {
    return ITEM_DETAIL_STATE(item);
  }
}

class ITEM_DETAIL_STATE extends State<ITEM_DETAIL> {
  Map item;

  ITEM_DETAIL_STATE(Map im) {
    this.item = im;
  }

  DatabaseApp2 items = DatabaseApp2();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Appcubit(),
      child: BlocConsumer<Appcubit, BuyState>(
        listener: (context, state) {},
        builder: (context, state) {
          var ob = Appcubit.getobject(context);
          return Scaffold(
              appBar: AppBar(
                title: Text('${item['type']}'),
                centerTitle: true,
                iconTheme: IconThemeData(size: 40),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      width: double.infinity,
                      child: Column(children: [
                        InteractiveViewer(
                          child: Image.network(
                            "${item['image']}",
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                            decoration: BoxDecoration
                            (
                              borderRadius: BorderRadius.circular(20),
                               color: Colors.amber,
                            ),
                          margin: EdgeInsets.all(20),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "type :   ${item['type']}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                            decoration: BoxDecoration
                            (
                              borderRadius: BorderRadius.circular(20),
                               color: Colors.amber,
                            ),
                          margin: EdgeInsets.all(20),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "price :   ${item['price']}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                            decoration: BoxDecoration
                            (
                              borderRadius: BorderRadius.circular(20),
                               color: Colors.amber,
                            ),
                          margin: EdgeInsets.all(20),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "size :   ${item['size']}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                            decoration: BoxDecoration
                            (
                              borderRadius: BorderRadius.circular(20),
                               color: Colors.amber,
                            ),
                          margin: EdgeInsets.all(20),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "color :   ${item['color']}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "${ob.num_Items}",
                          style: TextStyle(fontSize: 30,
                              color: ob.num_Items == 0 ? Colors.red : Colors
                                  .green),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {
                                ob.Increase_ele(item);
                              },
                              icon: Icon(
                                Icons.add,
                                size: 30,
                               color: Colors.green,
                              ),
                              label:Text("Add"),
                            ),
                            SizedBox(width: 10,),
                            ElevatedButton.icon(
                              onPressed: () {
                                ob.decrease_ele(item);
                              },
                              icon: Icon(
                                Icons.remove,
                                color: Colors.red,
                                size: 30,
                              ),
                             label: Text("minus"),
                            ),

                          ],
                        )
                      ]),
                    )
                  ],
                ),
              ),
            floatingActionButton: FloatingActionButton(
                onPressed: () async {
                  int insert = await items.insertData(
                      'insert into item (type,img,size,color,price,num)values("${item['type']}","${item['image']}","${item['size']}","${item['color']}","${item['price']}","${ob.num_Items.toString()}")');
                },
                child: Icon(Icons.add_shopping_cart))
          );
        },
      ),
    );
  }
}