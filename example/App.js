import React, { Component } from 'react';
import { StyleSheet, Text, View } from 'react-native';
import RNPaycardsView from 'react-native-paycards-sdk';

export default class App extends Component {

  constructor(props) {
    super(props);
  }
  
  render() {
    console.log(RNPaycardsView);
    // RNPaycardsSdk.addEvent('Birthday Party', '4 Privet Drive, Surrey');
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