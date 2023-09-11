import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';
import 'package:ar_flutter_plugin/datatypes/config_planedetection.dart';
import 'package:ar_flutter_plugin/datatypes/node_types.dart';
import 'package:ar_flutter_plugin/managers/ar_anchor_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_location_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_object_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
import 'package:ar_flutter_plugin/models/ar_node.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

class TestArScreen extends StatefulWidget {
  const TestArScreen({super.key});

  @override
  State<TestArScreen> createState() => _TestArScreenState();
}

class _TestArScreenState extends State<TestArScreen> {
  ARSessionManager? arSessionManager;
  ARObjectManager? arObjectManager;
  ARNode? localObjectNode;
  @override
  void dispose() {
    super.dispose();
    arSessionManager!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: Container(
        child: Stack(
          children: [
            ARView(
              onARViewCreated: onARViewCreated,
              planeDetectionConfig: PlaneDetectionConfig.horizontalAndVertical,
              showPlatformType: true,
            ),
            Align(
                alignment: FractionalOffset.bottomCenter,
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: onLocalObjectAtOriginButtonPressed,
                          child: Text("Add/Remove Local\nObject at Origin")),
                    ],
                  ),
                ]))
          ],
        ),
      ),
    );
  }

  void onARViewCreated(
      ARSessionManager arSessionManager,
      ARObjectManager arObjectManager,
      ARAnchorManager arAnchorManager,
      ARLocationManager arLocationManager) {
    this.arSessionManager = arSessionManager;
    this.arObjectManager = arObjectManager;
    this.arSessionManager!.onInitialize(
          showFeaturePoints: false,
          showPlanes: true,
          customPlaneTexturePath: "assets/images/Bg1.jpg",
          showWorldOrigin: true,
          handleTaps: false,
        );
    this.arObjectManager!.onInitialize();
  }

  Future<void> onLocalObjectAtOriginButtonPressed() async {
    if (localObjectNode != null) {
      arObjectManager!.removeNode(localObjectNode!);
      localObjectNode = null;
    } else {
      var newNode = ARNode(
          type: NodeType.localGLTF2,
          uri: "assets/models/Chicken_01.gltf",
          scale: Vector3(0.2, 0.2, 0.2),
          position: Vector3(0.0, 0.0, 0.0),
          rotation: Vector4(1.0, 0.0, 0.0, 0.0));
      bool? didAddLocalNode = await arObjectManager!.addNode(newNode);
      localObjectNode = (didAddLocalNode!) ? newNode : null;
    }
  }

  // void updateSessionSettings() {
  //   this.arSessionManager!.onInitialize(
  //         showFeaturePoints: _showFeaturePoints,
  //         showPlanes: _showPlanes,
  //         customPlaneTexturePath: _planeTexturePath,
  //         showWorldOrigin: true,
  //       );
  // }
}
