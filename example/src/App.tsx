import { Text, View, StyleSheet } from 'react-native';
import { configure } from 'react-native-showtime';

configure({
  enabled: 'always',
  strokeColor: 'tomato',
  size: 24,
  strokeWidth: 2,
});

export default function App() {
  return (
    <View style={styles.container}>
      <Text>Touch anywhere on the screen</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
});
