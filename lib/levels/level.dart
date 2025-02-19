import 'dart:async';

import 'package:flame/camera.dart';
import 'package:flame/extensions.dart';
import 'package:flame_tiled/flame_tiled.dart';

class Level extends World {
  late TiledComponent level;
  @override
  FutureOr<void> onLoad() async {
    level = await TiledComponent.load(
      "Level 01.tmx",
      Vector2.all(16),
    );

    add(level);

    return super.onLoad();
  }
}
