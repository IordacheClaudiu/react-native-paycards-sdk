import React, { Component } from 'react';
import { StyleSheet, Text, View, requireNativeComponent } from 'react-native';
import { RNPaycardsView } from 'react-native-paycards-sdk';

// const RNPaycardsView = requireNativeComponent("RNPaycardsView");


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
        <RNPaycardsView/>
      </View>
    );
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
  },
});