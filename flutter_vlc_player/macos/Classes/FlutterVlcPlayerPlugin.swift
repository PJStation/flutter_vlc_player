//
//  FlutterVlcPlayerPlugin.swift
//  flutter_vlc_player
//
//  Created by 孙鹏举 on 2025/4/29.
//

import Cocoa
import FlutterMacOS


public class FlutterVlcPlayerPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
      SwiftFlutterVlcPlayerPlugin.register(with: registrar)
  }
}
