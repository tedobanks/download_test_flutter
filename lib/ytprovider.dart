import 'package:flutter/cupertino.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';
import 'package:youtube_metadata/youtube.dart';

class YtProvider extends ChangeNotifier {
  YtProvider() {
    init();
  }

  var yt = YoutubeExplode();

  void getVids() async {
    var vid = yt.videos.get('https://youtu.be/UkEA5cSYgdE');

    print(vid);
  }

  void metaget() async {
    MetaDataModel metaDataModel =
        await YoutubeMetaData.getData('https://youtu.be/UkEA5cSYgdE');
    print(metaDataModel.authorName);
  }

  init() {
    getVids();
    metaget();
  }
}
