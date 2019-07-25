import React, { Component } from 'react';
import { StyleSheet, Text, View } from 'react-native';
import PaycardsView from './PaycardsView';

export default class App extends Component {

  constructor(props) {
    super(props);
  }

  render() {
    return (
      <View style={styles.container}>
        <View style={styles.top} >
          <Text>This state of Bulb come from Native Code to JavaScript</Text>
        </View>
        <PaycardsView style={styles.bottom}
          frameColor={"#86BACF"}
          torch={{isOn: true, value: 0.5}}
          onPaycardRecognized={this._onPaycardRecognized} />
      </View>
    );
  }

  _onPaycardRecognized = (event) => {
    console.log(event);
  }
}
const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#F5FCFF',
  },
  top: {
    flex: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  bottom: {
    flex: 1,
    alignItems: "center",
    justifyContent: "center",
    backgroundColor: "red"
  },
});