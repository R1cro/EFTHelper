import PropTypes from 'prop-types';
import React from 'react';
import Calibers from './Ammo/Calibers'

const Main = ({ name, updateName }) => (
    <div>
        <h3>
            Hello, {name}! How is going on?
        </h3>
        <hr />
        <form >
            <label htmlFor="name">
                Say hello to:
            </label>
            <input
                id="name"
                type="text"
                value={name}
                onChange={(e) => updateName(e.target.value)}
            />
        </form>

        <Calibers/>
    </div>
);

Main.propTypes = {
    name: PropTypes.string.isRequired,
    updateName: PropTypes.func.isRequired,
};

export default  Main;
git