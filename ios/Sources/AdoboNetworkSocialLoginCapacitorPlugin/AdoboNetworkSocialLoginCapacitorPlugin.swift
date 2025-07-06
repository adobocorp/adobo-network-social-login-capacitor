import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(AdoboNetworkSocialLoginCapacitorPlugin)
public class AdoboNetworkSocialLoginCapacitorPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "AdoboNetworkSocialLoginCapacitorPlugin"
    public let jsName = "AdoboNetworkSocialLoginCapacitor"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = AdoboNetworkSocialLoginCapacitor()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
}
