///
//  Generated code. Do not modify.
//  source: proto.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'proto.pbenum.dart';

export 'proto.pbenum.dart';

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Empty', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Empty._() : super();
  factory Empty() => create();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty)) as Empty; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;
}

class RunRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RunRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..e<Key>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key', $pb.PbFieldType.OE, defaultOrMaker: Key.NONE, valueOf: Key.valueOf, enumValues: Key.values)
    ..hasRequiredFields = false
  ;

  RunRequest._() : super();
  factory RunRequest({
    Key? key,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory RunRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RunRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RunRequest clone() => RunRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RunRequest copyWith(void Function(RunRequest) updates) => super.copyWith((message) => updates(message as RunRequest)) as RunRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RunRequest create() => RunRequest._();
  RunRequest createEmptyInstance() => create();
  static $pb.PbList<RunRequest> createRepeated() => $pb.PbList<RunRequest>();
  @$core.pragma('dart2js:noInline')
  static RunRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RunRequest>(create);
  static RunRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Key get key => $_getN(0);
  @$pb.TagNumber(1)
  set key(Key v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);
}

class InfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InfoResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'songName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'artistName')
    ..e<PlayerStatus>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: PlayerStatus.UNKNOWN, valueOf: PlayerStatus.valueOf, enumValues: PlayerStatus.values)
    ..hasRequiredFields = false
  ;

  InfoResponse._() : super();
  factory InfoResponse({
    $core.String? songName,
    $core.String? artistName,
    PlayerStatus? status,
  }) {
    final _result = create();
    if (songName != null) {
      _result.songName = songName;
    }
    if (artistName != null) {
      _result.artistName = artistName;
    }
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory InfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InfoResponse clone() => InfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InfoResponse copyWith(void Function(InfoResponse) updates) => super.copyWith((message) => updates(message as InfoResponse)) as InfoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InfoResponse create() => InfoResponse._();
  InfoResponse createEmptyInstance() => create();
  static $pb.PbList<InfoResponse> createRepeated() => $pb.PbList<InfoResponse>();
  @$core.pragma('dart2js:noInline')
  static InfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InfoResponse>(create);
  static InfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get songName => $_getSZ(0);
  @$pb.TagNumber(1)
  set songName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSongName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSongName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get artistName => $_getSZ(1);
  @$pb.TagNumber(2)
  set artistName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasArtistName() => $_has(1);
  @$pb.TagNumber(2)
  void clearArtistName() => clearField(2);

  @$pb.TagNumber(3)
  PlayerStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(PlayerStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
}

