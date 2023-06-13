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

  TextStyle styleDigit = const TextStyle(fontSize: 18);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 660,
      child: Card(
        margin: const EdgeInsets.all(8),
        color: Colors.orangeAccent,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text('Процент попаданий', style: widget.textCard,), Text("${(int.parse(widget.hitsCount.toString().split(" ")[2])/int.parse(widget.hitsCount.toString().split(" ")[0])*100).toStringAsFixed(0)}%", style: styleDigit,),],),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Процент попаданий трешек', style: widget.textCard,), Text("${(int.parse(widget.hitsCount.toString().split(" ")[3])/int.parse(widget.hitsCount.toString().split(" ")[1])*100).toStringAsFixed(0)}%", style: styleDigit)],),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text("Количество подборов", style: widget.textCard,), Text(widget.hitsCount.toString().split(" ")[4], style: styleDigit)
                ],),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text("Количество перехватов", style: widget.textCard,), Text(widget.hitsCount.toString().split(" ")[5], style: styleDigit)
                ],),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text("Количество блок-шотов", style: widget.textCard,), Text(widget.hitsCount.toString().split(" ")[6], style: styleDigit)
                ],),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Количество очков', style: widget.textCard,), Text((int.parse(widget.hitsCount.toString().split(" ")[2]) - int.parse(widget.hitsCount.toString().split(" ")[3])*2 + int.parse(widget.hitsCount.toString().split(" ")[3]*3)).toStringAsFixed(0), style: styleDigit), ],),

            ],
          ),
        ),
      ),
    );
  }
}
