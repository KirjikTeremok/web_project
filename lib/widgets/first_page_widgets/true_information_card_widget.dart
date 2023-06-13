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
                  Text('Процент попаданий', style: widget.textCard,), Text('${widget.hitsCount}'),],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Процент попаданий', style: widget.textCard,), Text(''),],),

            ],
          ),
        ),
      ),
    );
  }
}
