import 'package:flutter_test/flutter_test.dart';
import 'package:dashcam_player/dashcam_player.dart';
import 'package:dashcam_player/dashcam_player_platform_interface.dart';
import 'package:dashcam_player/dashcam_player_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDashcamPlayerPlatform
    with MockPlatformInterfaceMixin
    implements DashcamPlayerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<int?> duration() {
    // TODO: implement duration
    throw UnimplementedError();
  }

  @override
  Future<void> pauseVideo() {
    // TODO: implement pauseVideo
    throw UnimplementedError();
  }

  @override
  Future<void> playVideo() {
    // TODO: implement playVideo
    throw UnimplementedError();
  }

  @override
  Future<void> replayVideo() {
    // TODO: implement replayVideo
    throw UnimplementedError();
  }

  @override
  Future<void> seekTo(double position) {
    // TODO: implement seekTo
    throw UnimplementedError();
  }

  @override
  Future<void> stopVideo() {
    // TODO: implement stopVideo
    throw UnimplementedError();
  }
}

void main() {
  final DashcamPlayerPlatform initialPlatform = DashcamPlayerPlatform.instance;

  test('$MethodChannelDashcamPlayer is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDashcamPlayer>());
  });

  test('getPlatformVersion', () async {
    DashcamPlayer dashcamPlayerPlugin = DashcamPlayer();
    MockDashcamPlayerPlatform fakePlatform = MockDashcamPlayerPlatform();
    DashcamPlayerPlatform.instance = fakePlatform;

    expect(await dashcamPlayerPlugin.getPlatformVersion(), '42');
  });
}
