import PropTypes from 'prop-types';
import React from 'react';
import Calibers from './Ammo/Calibers'
import Bullets from './Ammo/Bullets'

const Main = ({ name }) => (
    <div>
        <h3>
            Hello, {name}! How is going on?
        </h3>
        <hr />

        <Calibers />
        <Bullets />
    </div>
);

Main.propTypes = {
    name: PropTypes.string.isRequired,
    updateName: PropTypes.func.isRequired,
};

export default  Main;

