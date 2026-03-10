import type { ColorValue } from 'react-native';

export type EnabledMode = 'always' | 'never' | 'debugOnly';

export type DisappearAnimation = 'standard' | 'scaleDown' | 'scaleUp';

export type ShowTimeOptions = {
  /**
   * Whether ShowTime is enabled.
   *
   * @default 'always'
   */
  enabled?: EnabledMode | undefined;

  /**
   * The fill (background) color of a visual touch.
   * When set to `'auto'`, ShowTime automatically uses the stroke color
   * with 50% alpha.
   *
   * @default 'auto'
   */
  fillColor?: ColorValue | 'auto' | undefined;

  /**
   * The color of the stroke (outline) of a visual touch.
   *
   * @default '#3699EC'
   */
  strokeColor?: ColorValue | undefined;

  /**
   * The width (thickness) of the stroke around a visual touch.
   *
   * @default 3
   */
  strokeWidth?: number | undefined;

  /**
   * The size of a visual touch.
   *
   * @default 44
   */
  size?: number | undefined;

  /**
   * The style of animation to use when a visual touch disappears.
   *
   * @default 'standard'
   */
  disappearAnimation?: DisappearAnimation | undefined;

  /**
   * The delay, in seconds, before the visual touch disappears
   * after a touch ends.
   *
   * @default 0.2
   */
  disappearDelay?: number | undefined;

  /**
   * Whether visual touches should indicate a multiple tap
   * (i.e. show a number 2 for a double tap).
   *
   * @default false
   */
  shouldShowMultipleTapCount?: boolean | undefined;

  /**
   * The color of the text to use when showing multiple tap counts.
   *
   * @default '#000000'
   */
  multipleTapCountTextColor?: ColorValue | undefined;

  /**
   * Whether visual touches should visually show how much force
   * is applied.
   *
   * @default true
   */
  shouldShowForce?: boolean | undefined;

  /**
   * Whether touch events from Apple Pencil are ignored.
   *
   * @default true
   */
  shouldIgnoreApplePencilEvents?: boolean | undefined;
};
