import { processColor } from 'react-native';
import NativeShowTime, { type NativeShowTimeOptions } from './NativeShowTime';
import type { ShowTimeOptions } from './types';

export function configure(options: ShowTimeOptions): void {
  const { fillColor, strokeColor, multipleTapCountTextColor, ...rest } =
    options;

  const nativeConfig: NativeShowTimeOptions = { ...rest };

  if (fillColor === 'auto') {
    nativeConfig.fillColorAuto = true;
  } else if (fillColor != null) {
    const processed = processColor(fillColor);

    if (typeof processed === 'number') {
      nativeConfig.fillColor = processed;
    } else {
      throw new Error(`Invalid fillColor: ${String(fillColor)}`);
    }
  }

  if (strokeColor != null) {
    const processed = processColor(strokeColor);

    if (typeof processed === 'number') {
      nativeConfig.strokeColor = processed;
    } else {
      throw new Error(`Invalid strokeColor: ${String(strokeColor)}`);
    }
  }

  if (multipleTapCountTextColor != null) {
    const processed = processColor(multipleTapCountTextColor);

    if (typeof processed === 'number') {
      nativeConfig.multipleTapCountTextColor = processed;
    } else {
      throw new Error(
        `Invalid multipleTapCountTextColor: ${String(
          multipleTapCountTextColor
        )}`
      );
    }
  }

  NativeShowTime?.configure(nativeConfig);
}
