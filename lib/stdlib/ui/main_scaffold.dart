
import 'package:flutter/material.dart';
import 'package:flutterblog/features/draft/persentation/draft_sheet.dart';

class MainScaffold extends StatefulWidget {
  final Widget body;

  const MainScaffold({Key key , this.body}) : super(key : key);

  @override
  _MainScaffoldState createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {

  PersistentBottomSheetController bsController;
  bool bsIsOpen = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {
        FocusScope.of(context).requestFocus(FocusNode());
        },
      child: Scaffold(
        appBar: AppBar(
          title: TextField(
            maxLines: 1,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
            ),
          ),
          backgroundColor: const Color(0xffF5F5F5),
          leading: Icon(Icons.person , color: Colors.grey,),
         actions: [
           Padding(
             padding: EdgeInsets.all(16.0),
             child: Builder(
               builder: (context) => GestureDetector(
                 onTap: ( ) { _toggelBs(context);},
                 child: Icon(
                   Icons.create,
                   color: Colors.grey,
                 ),
               ),
             ),
           )
         ],
        ),
        body: widget.body,
      ),
    );
  }
  void _toggelBs(BuildContext context){
      if(bsIsOpen){

      }
      else{
        setState(() {
          bsController = showBottomSheet(context: context, builder: _buildBottomSheet);
        });
        bsIsOpen = true;
      }
  }
  Widget _buildBottomSheet(BuildContext context){
      return DraftSheet();
  }
}