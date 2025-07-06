import { AdoboNetworkSocialLoginCapacitor } from 'adobo-network-social-login-capacitor';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    AdoboNetworkSocialLoginCapacitor.echo({ value: inputValue })
}
