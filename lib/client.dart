import 'dart:io';
import 'package:grpc/grpc.dart';

import 'package:rmc_client/generated/proto.pbgrpc.dart';

ClientChannel createChannel(String addr) {
  addr = addr.replaceAll("http://", "");
  var addrParts = addr.split(":");

  final udsAddress =
      InternetAddress(addrParts[0], type: InternetAddressType.IPv4);
  final channel = ClientChannel(
    udsAddress,
    port: int.parse(addrParts[1]),
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );

  return channel;
}

Future<InfoResponse> getInfo(String addr) async {
  final channel = createChannel(addr);
  final stub = RemotePlayerClient(channel);

  try {
    final response = await stub.info(Empty());
    return response;
  } finally {
    await channel.shutdown();
  }
}

Future<void> sendRunReq(String addr, RunRequest req) async {
  final channel = createChannel(addr);
  final stub = RemotePlayerClient(channel);

  try {
    await stub.run(req);
    return;
  } finally {
    await channel.shutdown();
  }
}
