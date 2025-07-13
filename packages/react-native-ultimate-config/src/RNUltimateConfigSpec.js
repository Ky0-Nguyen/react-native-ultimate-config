import { TurboModuleRegistry } from 'react-native';

/**
 * @interface
 * compress: (input: string) => Promise<string>
 * decompress: (input: string) => Promise<string>
 */

export default TurboModuleRegistry.getEnforcing('RNUltimateConfig');
