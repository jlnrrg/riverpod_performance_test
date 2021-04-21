import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_performance_test/statenotifier.dart';

class ProblemPage extends HookWidget {
  const ProblemPage({Key? key, this.initialDanceStyles, this.doneCallback})
      : super(key: key);

  final Iterable<String>? initialDanceStyles;
  final Function(List<String>)? doneCallback;

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<String>> danceState =
        useProvider(listStateNotifierProvider);

    final ValueNotifier<List<String>> selectedStringVN =
        useState(initialDanceStyles?.toList() ?? <String>[]);

    return SafeArea(
        child: Scaffold(
      body: danceState.when(
        data: (list) => ListView.builder(
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              final String str = list[index];
              return CheckboxListTile(
                  title: Text(str),
                  value: selectedStringVN.value.contains(str),
                  onChanged: (b) {
                    if (b != null) {
                      if (b) {
                        selectedStringVN.value = List.of(selectedStringVN.value)
                          ..add(str);
                      } else {
                        selectedStringVN.value = List.of(selectedStringVN.value)
                          ..remove(str);
                      }
                    }
                  });
            }),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Container(
            color: Colors.red,
            child: Text(err.toString())), // TODO(jr): show real error handling)
      ),
    ));
  }
}
