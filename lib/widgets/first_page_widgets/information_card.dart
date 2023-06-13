

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class InformationCard extends StatefulWidget {
  const InformationCard({
    super.key,
    required this.textCard,
  });

  final TextStyle textCard;

  @override
  State<InformationCard> createState() => _InformationCardState();
}

class _InformationCardState extends State<InformationCard> {
  final _textController1 = TextEditingController();
  final _textController2 = TextEditingController();
  final _textController3 = TextEditingController();
  final _textController4 = TextEditingController();
  final _textController5 = TextEditingController();
  final _textController6 = TextEditingController();
  final _textController7 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 660,
          child: Card(

            margin: const EdgeInsets.all(8),
            color: Colors.orangeAccent,
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              splashColor: Colors.red.withAlpha(50),
              onTap: () {
                if(_textController1.text!="" && _textController2.text!="" && _textController3.text!="" && _textController4.text!="" && _textController5.text!="" && _textController6.text!="" && _textController7.text!="") {
                  String v = '${_textController1.text} ${_textController2.text} ${_textController3.text} ${_textController4.text} ${_textController5.text} ${_textController6.text} ${_textController7.text}';
                  FirebaseFirestore.instance.collection('basket').add(
                      {'points': v,});

                  _textController1.text = "";
                  _textController2.text = "";
                  _textController3.text = "";
                  _textController4.text = "";
                  _textController5.text = "";
                  _textController6.text = "";
                  _textController7.text = "";

                }
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(title: Text("Карточка ${DateTime.now()}", style: const TextStyle(fontSize: 20),),),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Количество бросков", style: widget.textCard,),
                        SizedBox(
                          width: 200,
                          child: TextField(
                            controller: _textController1,

                          ),
                        ),],),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Количество техочковых бросков", style: widget.textCard,),
                        SizedBox(
                          width: 200,
                          child: TextField(
                              controller: _textController2,

                          ),
                        ),],),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Количество попаданий", style: widget.textCard,),
                        SizedBox(
                          width: 200,
                          child: TextField(
                            controller: _textController3,
                          ),
                        ),],),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [Text("Количество попаданий трехочковых бросков", style: widget.textCard,),
                        SizedBox(
                          width: 200,
                          child: TextField(
                            controller: _textController4,
                          ),)],),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Количество подборов", style: widget.textCard,),
                        SizedBox(
                          width: 200,
                          child: TextField(
                            controller: _textController5,
                          ),),],),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Количество перехватов", style: widget.textCard,),
                        SizedBox(
                          width: 200,
                          child: TextField(
                            controller: _textController6,
                          ),),],),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Количество блок-шотов", style: widget.textCard,),
                        SizedBox(
                          width: 200,
                          child: TextField(
                            controller: _textController7,
                          ),
                        ),],),

                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
