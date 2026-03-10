import type { ShowTimeOptions } from './types';

/**
 * Configure how ShowTime visualizes touches.
 */
export function configure(options: ShowTimeOptions): void {
  // Silence unused variable error
  // We want to use `options` as argument name for intellisense
  options;

  throw new Error('ShowTime is only supported on iOS.');
}
