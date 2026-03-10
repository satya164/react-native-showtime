# react-native-showtime

React Native wrapper for [ShowTime](https://github.com/KaneCheshire/ShowTime). ShowTime is a library that displays all your taps and gestures on screen. Useful for recordings, demos, and presentations.

<img src="./demo.webp" alt="Demo" width="402" />

## Installation

```sh
npm install react-native-showtime
```

## Usage

ShowTime works automatically once installed. No additional setup is required.

The touch indicators can be optionally customized by calling `configure`:

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

### `configure(options)`

Configures ShowTime's appearance and behavior. All options are optional.

- **`enabled`** - `'always' | 'never' | 'debugOnly'` (default: `'always'`)

  Whether ShowTime is enabled.

- **`fillColor`** - `ColorValue | 'auto'` (default: `'auto'`)

  The fill (background) color of a visual touch. When set to `'auto'`, ShowTime automatically uses the stroke color with 50% alpha.

- **`strokeColor`** - `ColorValue` (default: `'#3699EC'`)

  The color of the stroke (outline) of a visual touch.

- **`strokeWidth`** - `number` (default: `3`)

  The width (thickness) of the stroke around a visual touch.

- **`size`** - `number` (default: `44`)

  The size of a visual touch.

- **`disappearAnimation`** - `'standard' | 'scaleDown' | 'scaleUp'` (default: `'standard'`)

  The style of animation to use when a visual touch disappears.

- **`disappearDelay`** - `number` (default: `0.2`)

  The delay, in seconds, before the visual touch disappears after a touch ends.

- **`shouldShowMultipleTapCount`** - `boolean` (default: `false`)

  Whether visual touches should indicate a multiple tap (i.e. show a number 2 for a double tap).

- **`multipleTapCountTextColor`** - `ColorValue` (default: `'#000000'`)

  The color of the text to use when showing multiple tap counts.

- **`shouldShowForce`** - `boolean` (default: `true`)

  Whether visual touches should visually show how much force is applied.

- **`shouldIgnoreApplePencilEvents`** - `boolean` (default: `true`)

  Whether touch events from Apple Pencil are ignored.

## License

MIT
