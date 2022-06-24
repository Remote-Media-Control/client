///
//  Generated code. Do not modify.
//  source: proto.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use keyDescriptor instead')
const Key$json = const {
  '1': 'Key',
  '2': const [
    const {'1': 'NONE', '2': 0},
    const {'1': 'NEXT', '2': 1},
    const {'1': 'PREV', '2': 2},
    const {'1': 'PAUSE', '2': 3},
    const {'1': 'PLAY', '2': 4},
  ],
};

/// Descriptor for `Key`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List keyDescriptor = $convert.base64Decode('CgNLZXkSCAoETk9ORRAAEggKBE5FWFQQARIICgRQUkVWEAISCQoFUEFVU0UQAxIICgRQTEFZEAQ=');
@$core.Deprecated('Use playerStatusDescriptor instead')
const PlayerStatus$json = const {
  '1': 'PlayerStatus',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'PLAYING', '2': 1},
    const {'1': 'PAUSED', '2': 2},
  ],
};

/// Descriptor for `PlayerStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List playerStatusDescriptor = $convert.base64Decode('CgxQbGF5ZXJTdGF0dXMSCwoHVU5LTk9XThAAEgsKB1BMQVlJTkcQARIKCgZQQVVTRUQQAg==');
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
@$core.Deprecated('Use runRequestDescriptor instead')
const RunRequest$json = const {
  '1': 'RunRequest',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 14, '6': '.proto.Key', '10': 'key'},
  ],
};

/// Descriptor for `RunRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runRequestDescriptor = $convert.base64Decode('CgpSdW5SZXF1ZXN0EhwKA2tleRgBIAEoDjIKLnByb3RvLktleVIDa2V5');
@$core.Deprecated('Use infoResponseDescriptor instead')
const InfoResponse$json = const {
  '1': 'InfoResponse',
  '2': const [
    const {'1': 'song_name', '3': 1, '4': 1, '5': 9, '10': 'songName'},
    const {'1': 'artist_name', '3': 2, '4': 1, '5': 9, '10': 'artistName'},
    const {'1': 'status', '3': 3, '4': 1, '5': 14, '6': '.proto.PlayerStatus', '10': 'status'},
  ],
};

/// Descriptor for `InfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List infoResponseDescriptor = $convert.base64Decode('CgxJbmZvUmVzcG9uc2USGwoJc29uZ19uYW1lGAEgASgJUghzb25nTmFtZRIfCgthcnRpc3RfbmFtZRgCIAEoCVIKYXJ0aXN0TmFtZRIrCgZzdGF0dXMYAyABKA4yEy5wcm90by5QbGF5ZXJTdGF0dXNSBnN0YXR1cw==');
