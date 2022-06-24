///
//  Generated code. Do not modify.
//  source: proto.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Key extends $pb.ProtobufEnum {
  static const Key NONE = Key._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NONE');
  static const Key NEXT = Key._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NEXT');
  static const Key PREV = Key._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PREV');
  static const Key PAUSE = Key._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PAUSE');
  static const Key PLAY = Key._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PLAY');

  static const $core.List<Key> values = <Key> [
    NONE,
    NEXT,
    PREV,
    PAUSE,
    PLAY,
  ];

  static final $core.Map<$core.int, Key> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Key? valueOf($core.int value) => _byValue[value];

  const Key._($core.int v, $core.String n) : super(v, n);
}

class PlayerStatus extends $pb.ProtobufEnum {
  static const PlayerStatus UNKNOWN = PlayerStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const PlayerStatus PLAYING = PlayerStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PLAYING');
  static const PlayerStatus PAUSED = PlayerStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PAUSED');

  static const $core.List<PlayerStatus> values = <PlayerStatus> [
    UNKNOWN,
    PLAYING,
    PAUSED,
  ];

  static final $core.Map<$core.int, PlayerStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PlayerStatus? valueOf($core.int value) => _byValue[value];

  const PlayerStatus._($core.int v, $core.String n) : super(v, n);
}

