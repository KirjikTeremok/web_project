import 'package:flutter/material.dart';


class TrueInformationCardWidget extends StatefulWidget {
  const TrueInformationCardWidget({
    super.key,
    required this.textCard,
    required this.hitsCount,
  });
  final TextStyle textCard;
  final hitsCount;

  @override
  State<TrueInformationCardWidget> createState() => _TrueInformationCardWidgetState();
}

class _TrueInformationCardWidgetState extends State<TrueInformationCardWidget> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 660,
      child: Card(
        // key: Key(snaps),
        margin: const EdgeInsets.all(7),
        color: Colors.orangeAccent,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Процент попаданий', style: widget.textCard,), Text((int.parse(widget.hitsCount.toString().split(" ")[2])/int.parse(widget.hitsCount.toString().split(" ")[0])*100).toStringAsFixed(0)),],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Процент попаданий трешек', style: widget.textCard,), Text((int.parse(widget.hitsCount.toString().split(" ")[3])/int.parse(widget.hitsCount.toString().split(" ")[1])*100).toStringAsFixed(0)),],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text("Количество подборов", style: widget.textCard,), Text(widget.hitsCount.toString().split(" ")[4])
                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text("Количество перехватов", style: widget.textCard,), Text(widget.hitsCount.toString().split(" ")[5])
                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text("Количество блок-шотов", style: widget.textCard,), Text(widget.hitsCount.toString().split(" ")[6])
                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Процент очков', style: widget.textCard,), Text((int.parse(widget.hitsCount.toString().split(" ")[2]) - int.parse(widget.hitsCount.toString().split(" ")[3])*2 + int.parse(widget.hitsCount.toString().split(" ")[3]*3)).toStringAsFixed(0)),],),

            ],
          ),
        ),
      ),
    );
  }
}
