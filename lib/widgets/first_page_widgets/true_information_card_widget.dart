import 'package:flutter/material.dart';
import 'package:web_project/widgets/first_page_widgets/information_card.dart';

class TrueInformationCardWidget extends StatefulWidget {
  const TrueInformationCardWidget({
    super.key,
    required this.textCard,
    required this.hitsPercentage,
  });
  final TextStyle textCard;
  final hitsPercentage;

  @override
  State<TrueInformationCardWidget> createState() => _TrueInformationCardWidgetState();
}

class _TrueInformationCardWidgetState extends State<TrueInformationCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
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
                Text('Процент попаданий', style: widget.textCard,), Text(widget.hitsPercentage),],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Процент попаданий', style: widget.textCard,), Text(''),],),

          ],
        ),
      ),
    );
  }
}
