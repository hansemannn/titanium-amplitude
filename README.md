# Titanium Amplitude Module

A lightweight module to use the native Amplitude SDK's in Titanium.

## Example

```js
import Amplitude from 'ti.amplitude';

// Initialize once, e.g. in alloy.js or app.js
Amplitude.initialize('YOUR_API_KEY');

// Log custom event (without parameters):
Amplitide.logEvent('added_to_cart');

// Log custom event (with parameters):
Amplitide.logEvent('added_to_cart', { items: 3 });
```

## Author

Hans Knöchel

## License

MIT
