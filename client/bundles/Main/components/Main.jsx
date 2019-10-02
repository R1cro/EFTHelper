import PropTypes from 'prop-types';
import React from 'react';
import Calibers from './Ammo/Calibers'
import Bullets from './Ammo/Bullets'

const Main = (props) => (
    <div>
        <div className="row">
            <div className="col s12 m4 l3 darken-4">
                <p>Hey {props.name}! How is going on?</p>
            </div>
            <div className="col s12 m8 l9">
                <Calibers />
            </div>

            {/*<Bullets/>*/}
        </div>
    </div>
);

Main.propTypes = {
    name: PropTypes.string.isRequired,
    title: PropTypes.string.isRequired,
    updateName: PropTypes.func.isRequired,
    updateTitle: PropTypes.func.isRequired
};

export default  Main;

