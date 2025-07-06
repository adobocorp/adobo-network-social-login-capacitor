import { registerPlugin } from '@capacitor/core';

import type { AdoboNetworkSocialLoginCapacitorPlugin } from './definitions';

const AdoboNetworkSocialLoginCapacitor = registerPlugin<AdoboNetworkSocialLoginCapacitorPlugin>(
  'AdoboNetworkSocialLoginCapacitor',
  {
    web: () => import('./web').then((m) => new m.AdoboNetworkSocialLoginCapacitorWeb()),
  },
);

export * from './definitions';
export { AdoboNetworkSocialLoginCapacitor };
