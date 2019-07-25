import React from 'react';
import PropTypes from 'prop-types';
import { requireNativeComponent } from 'react-native';

class PaycardsView extends React.Component {
    render() {
        return <RNPaycardsView {...this.props} />;
    }
}

PaycardsView.propTypes = {
    /**
     * A String (hex) value representing scanner's frame color. 
     */
    frameColor: PropTypes.string,
    /**
     * A composite structure that determines if the camera torch should be on/off and its value.
     */
    torch: PropTypes.shape({
        isOn: PropTypes.bool,
        value: PropTypes.number
    })
}

var RNPaycardsView = requireNativeComponent('RNPaycardsView', PaycardsView);
module.exports = PaycardsView;