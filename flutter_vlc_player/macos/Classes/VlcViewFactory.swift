import Foundation
import FlutterMacOS

public class VLCViewFactory: NSObject, FlutterPlatformViewFactory {
        
    private var registrar: FlutterPluginRegistrar
    private var builder: VLCViewBuilder

    
    init(registrar: FlutterPluginRegistrar) {
        self.registrar = registrar
        self.builder = VLCViewBuilder(registrar: registrar)
        super.init()
    }
    
    public func create(withViewIdentifier viewId: Int64, arguments args: Any?) -> NSView {
        return builder.build(viewId: viewId).hostedView

    }

    
 
    
    public func createArgsCodec() -> (any FlutterMessageCodec & NSObjectProtocol)? {
        return FlutterStandardMessageCodec.sharedInstance()

    }
    
    
}
