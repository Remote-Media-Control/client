///
//  Generated code. Do not modify.
//  source: proto.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'proto.pb.dart' as $0;
export 'proto.pb.dart';

class RemotePlayerClient extends $grpc.Client {
  static final _$run = $grpc.ClientMethod<$0.RunRequest, $0.Empty>(
      '/proto.RemotePlayer/Run',
      ($0.RunRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$info = $grpc.ClientMethod<$0.Empty, $0.InfoResponse>(
      '/proto.RemotePlayer/Info',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.InfoResponse.fromBuffer(value));

  RemotePlayerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Empty> run($0.RunRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$run, request, options: options);
  }

  $grpc.ResponseFuture<$0.InfoResponse> info($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$info, request, options: options);
  }
}

abstract class RemotePlayerServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.RemotePlayer';

  RemotePlayerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RunRequest, $0.Empty>(
        'Run',
        run_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RunRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.InfoResponse>(
        'Info',
        info_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.InfoResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.Empty> run_Pre(
      $grpc.ServiceCall call, $async.Future<$0.RunRequest> request) async {
    return run(call, await request);
  }

  $async.Future<$0.InfoResponse> info_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return info(call, await request);
  }

  $async.Future<$0.Empty> run($grpc.ServiceCall call, $0.RunRequest request);
  $async.Future<$0.InfoResponse> info($grpc.ServiceCall call, $0.Empty request);
}
