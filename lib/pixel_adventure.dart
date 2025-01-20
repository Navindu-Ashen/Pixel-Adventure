import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:game_trial/levels/level.dart';

class PixelAdventure extends FlameGame {
  late CameraComponent cam;

  final myWorld = Level();

  @override
  FutureOr<void> onLoad() {
    cam = CameraComponent.withFixedResolution(
        world: myWorld, width: 640, height: 360);
    cam.viewfinder.anchor = Anchor.topLeft;
    addAll([cam, myWorld]);

    return super.onLoad();
  }
}
