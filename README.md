# react-native-showtime

React Native wrapper for [ShowTime](https://github.com/KaneCheshire/ShowTime) — display touch indicators on iOS. Useful for recordings, demos, and presentations.

ShowTime works by visualizing touches as they happen, with zero setup required.

<img src="./demo.webp" alt="Demo" width="402" />

## Installation

```sh
npm install react-native-showtime
```

## Usage

ShowTime activates automatically once installed — no code is required to show touch indicators.

To customize the touch indicators, call the `configure` with your desired options:

```js
import { configure } from 'react-native-showtime';

configure({
  enabled: 'always',
  strokeColor: '#3699EC',
  strokeWidth: 3,
  size: 44,
  disappearAnimation: 'standard',
  disappearDelay: 0.2,
  shouldShowMultipleTapCount: true,
  shouldShowForce: true,
});
```

## API

### `configure(config)`

Configures ShowTime's appearance and behavior. All options are optional.

| Option                          | Type                                     | Default      | Description                                                                                                                       |
| ------------------------------- | ---------------------------------------- | ------------ | --------------------------------------------------------------------------------------------------------------------------------- |
| `enabled`                       | `'always' \| 'never' \| 'debugOnly'`     | `'always'`   | Whether ShowTime is enabled.                                                                                                      |
| `fillColor`                     | `ColorValue \| 'auto'`                   | `'auto'`     | The fill (background) color of a visual touch. When set to `'auto'`, ShowTime automatically uses the stroke color with 50% alpha. |
| `strokeColor`                   | `ColorValue`                             | `'#3699EC'`  | The color of the stroke (outline) of a visual touch.                                                                              |
| `strokeWidth`                   | `number`                                 | `3`          | The width (thickness) of the stroke around a visual touch.                                                                        |
| `size`                          | `number`                                 | `44`         | The size of a visual touch.                                                                                                       |
| `disappearAnimation`            | `'standard' \| 'scaleDown' \| 'scaleUp'` | `'standard'` | The style of animation to use when a visual touch disappears.                                                                     |
| `disappearDelay`                | `number`                                 | `0.2`        | The delay, in seconds, before the visual touch disappears after a touch ends.                                                     |
| `shouldShowMultipleTapCount`    | `boolean`                                | `false`      | Whether visual touches should indicate a multiple tap (i.e. show a number 2 for a double tap).                                    |
| `multipleTapCountTextColor`     | `ColorValue`                             | `'#000000'`  | The color of the text to use when showing multiple tap counts.                                                                    |
| `shouldShowForce`               | `boolean`                                | `true`       | Whether visual touches should visually show how much force is applied.                                                            |
| `shouldIgnoreApplePencilEvents` | `boolean`                                | `true`       | Whether touch events from Apple Pencil are ignored.                                                                               |

## License

MIT
