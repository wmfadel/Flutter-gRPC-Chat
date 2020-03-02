///
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'service.pb.dart' as $0;
export 'service.pb.dart';

class BroadcastClient extends $grpc.Client {
  static final _$createStreamZ = $grpc.ClientMethod<$0.Connect, $0.Message>(
      '/proto.Broadcast/CreateStreamZ',
      ($0.Connect value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Message.fromBuffer(value));
  static final _$broadCastMessageZ = $grpc.ClientMethod<$0.Message, $0.Close>(
      '/proto.Broadcast/BroadCastMessageZ',
      ($0.Message value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Close.fromBuffer(value));

  BroadcastClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseStream<$0.Message> createStreamZ($0.Connect request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createStreamZ, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.Close> broadCastMessageZ($0.Message request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$broadCastMessageZ, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class BroadcastServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.Broadcast';

  BroadcastServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Connect, $0.Message>(
        'CreateStreamZ',
        createStreamZ_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Connect.fromBuffer(value),
        ($0.Message value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Message, $0.Close>(
        'BroadCastMessageZ',
        broadCastMessageZ_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Message.fromBuffer(value),
        ($0.Close value) => value.writeToBuffer()));
  }

  $async.Stream<$0.Message> createStreamZ_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Connect> request) async* {
    yield* createStreamZ(call, await request);
  }

  $async.Future<$0.Close> broadCastMessageZ_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Message> request) async {
    return broadCastMessageZ(call, await request);
  }

  $async.Stream<$0.Message> createStreamZ(
      $grpc.ServiceCall call, $0.Connect request);
  $async.Future<$0.Close> broadCastMessageZ(
      $grpc.ServiceCall call, $0.Message request);
}
