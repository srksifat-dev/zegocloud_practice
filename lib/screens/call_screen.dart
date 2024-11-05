import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallScreen extends StatelessWidget {
  final String callId;

  const CallScreen({
    super.key,
    required this.callId,
  });

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 1155223428,
      appSign:
          "ccc5dc87463c3623c025bb0564876df257b7fec539ab70386826374e48af4fa7",
      callID: callId,
      userID: "srksifatdev",
      userName: "srksifat",
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
