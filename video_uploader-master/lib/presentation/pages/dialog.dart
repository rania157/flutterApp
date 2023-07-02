import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:video_uploader/presentation/cubit/app_states.dart';
class DialogBuild extends StatelessWidget {
  const DialogBuild({ required this.state, required this.text});
  final AppStates state;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0)), //this right here
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 2.5,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConditionalBuilder(
              condition: state is! GetDataLoadingState,
              fallback: (context) =>
                  const Center(child: CircularProgressIndicator()),
              builder: (context) => Text(
                text,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 8,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'close',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ))
          ],
        ),
      ),
    );
  }
}


