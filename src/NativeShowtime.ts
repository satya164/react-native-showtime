import { TurboModuleRegistry, type TurboModule } from 'react-native';

export type NativeShowTimeOptions = {
  enabled?: string | undefined;
  fillColor?: number | undefined;
  fillColorAuto?: boolean | undefined;
  strokeColor?: number | undefined;
  strokeWidth?: number | undefined;
  size?: number | undefined;
  disappearAnimation?: string | undefined;
  disappearDelay?: number | undefined;
  shouldShowMultipleTapCount?: boolean | undefined;
  multipleTapCountTextColor?: number | undefined;
  shouldShowForce?: boolean | undefined;
  shouldIgnoreApplePencilEvents?: boolean | undefined;
};

export interface Spec extends TurboModule {
  configure(config: NativeShowTimeOptions): void;
}

export default TurboModuleRegistry.get<Spec>('ShowTime');
