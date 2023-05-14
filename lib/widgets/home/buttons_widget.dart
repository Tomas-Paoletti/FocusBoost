import 'package:flutter/material.dart';

class ButtonsWidget extends StatelessWidget {
  final bool timerStarted;
  final Function() start;
  final Function() stop;
  final Function() restart;

  const ButtonsWidget({
    super.key,
    required this.timerStarted,
    required this.start,
    required this.stop,
    required this.restart,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (timerStarted == false)
          SizedBox(
            height: 60,
            width: 250,
            child: ElevatedButton.icon(
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
              label: const Text(
                'Start',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 22,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white30,
                shape: const StadiumBorder(),
              ),
              onPressed: start,
            ),
          ),
        if (timerStarted == true)
          SizedBox(
            height: 60,
            width: 250,
            child: ElevatedButton.icon(
              icon: const Icon(
                Icons.pause,
                color: Colors.white,
                size: 30,
              ),
              label: const Text(
                'Pause',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 22,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black54,
                shape: const StadiumBorder(),
              ),
              onPressed: stop,
            ),
          ),
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          height: 60,
          width: 250,
          child: ElevatedButton.icon(
            icon: const Icon(
              Icons.restart_alt_outlined,
              color: Colors.white,
              size: 30,
            ),
            label: const Text(
              'Restart',
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 22,
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple.withOpacity(0.4),
              shape: const StadiumBorder(),
            ),
            onPressed: restart,
          ),
        ),
      ],
    );
  }
}
