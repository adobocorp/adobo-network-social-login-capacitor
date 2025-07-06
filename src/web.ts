import { WebPlugin } from '@capacitor/core';

import type { AdoboNetworkSocialLoginCapacitorPlugin } from './definitions';

export class AdoboNetworkSocialLoginCapacitorWeb extends WebPlugin implements AdoboNetworkSocialLoginCapacitorPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
