// import 'package:flutter_test/flutter_test.dart';
// import 'package:vnpt_ekyc/vnpt_ekyc.dart';
// import 'package:vnpt_ekyc/vnpt_ekyc_platform_interface.dart';
// import 'package:vnpt_ekyc/vnpt_ekyc_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';

// class MockVnptEkycPlatform
//     with MockPlatformInterfaceMixin
//     implements VnptEkycPlatform {

//   @override
//   Future<String?> getEkycVNPT() => Future.value('42');
// }

// void main() {
//   final VnptEkycPlatform initialPlatform = VnptEkycPlatform.instance;

//   test('$MethodChannelVnptEkyc is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelVnptEkyc>());
//   });

//   test('getEkycVNPT', () async {
//     VnptEkyc vnptEkycPlugin = VnptEkyc();
//     MockVnptEkycPlatform fakePlatform = MockVnptEkycPlatform();
//     VnptEkycPlatform.instance = fakePlatform;

//     expect(await vnptEkycPlugin.getEkycVNPT(), '42');
//   });
// }
