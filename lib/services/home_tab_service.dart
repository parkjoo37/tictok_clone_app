import 'package:tictok_clone_app/models/short.dart';
import 'package:tictok_clone_app/repositories/home_tab_repository.dart';

class HomeTabService {
  final HomeTabRepository repository;

  HomeTabService(this.repository);

  Future<dynamic> getShortList() async {
    final value = await repository.getShortList();

    if (value is String) {
      return value;
    }

    final shortList = value.map((e) {
      final tempShort = Short.fromJson(e);

      if (tempShort.hashtags.isNotEmpty) {
        final tempHashtag = tempShort.hashtags.map((h) => '#$h').join(' ');

        return tempShort.copyWith(
          totalDescription: '${tempShort.description} $tempHashtag',
        );
      } else {
        return tempShort;
      }
    }).toList();

    return shortList;
  }
}
