import 'package:hooks_riverpod/hooks_riverpod.dart';

final StateNotifierProvider<DanceReaderStateNotifier, AsyncValue<List<String>>>
    listStateNotifierProvider =
    StateNotifierProvider<DanceReaderStateNotifier, AsyncValue<List<String>>>(
  (ProviderReference ref) => DanceReaderStateNotifier(),
);

class DanceReaderStateNotifier extends StateNotifier<AsyncValue<List<String>>> {
  DanceReaderStateNotifier() : super(const AsyncValue<List<String>>.loading()) {
    fetched();
  }

  Future<void> fetched() async {
    state = const AsyncValue<List<String>>.loading();

    await Future.delayed(Duration(seconds: 10));

    state = AsyncValue.data(["value", "value2", "value3"]);
  }
}
