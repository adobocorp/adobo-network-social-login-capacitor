package com.adobocorp.adobonetwork.sociallogincapacitor;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "AdoboNetworkSocialLoginCapacitor")
public class AdoboNetworkSocialLoginCapacitorPlugin extends Plugin {

    private AdoboNetworkSocialLoginCapacitor implementation = new AdoboNetworkSocialLoginCapacitor();

    @PluginMethod
    public void echo(PluginCall call) {
        String value = call.getString("value");

        JSObject ret = new JSObject();
        ret.put("value", implementation.echo(value));
        call.resolve(ret);
    }
}
