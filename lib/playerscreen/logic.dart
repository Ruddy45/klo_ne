import 'package:get/get.dart';
import 'package:pod_player/pod_player.dart';

import 'state.dart';

class PlayerscreenLogic extends GetxController {
  final PlayerscreenState state = PlayerscreenState();
   PodPlayerController? controller;
   final  isPlaying=false.obs;
}
