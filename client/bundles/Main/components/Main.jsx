import PropTypes from 'prop-types';
import React from 'react';
import Calibers from './Ammo/Calibers'
import Bullets from './Ammo/Bullets'

const Main = (props) => (
    <div>
        <div className="row">
            <div className="col s12 m3 l3">
                <div className="row">
                    <div className="card darken-1 subpanel">
                        <div className="card-content white-text">
                            <span className="card-title">Message</span>
                            <blockquote>Hey {props.name}! How is it going on? This project is still <strong>in development</strong>, so be patient! </blockquote>
                        </div>
                        <div className="card-action">
                            <button className="btn waves-effect waves-light" name="action">Submit</button>
                        </div>
                    </div>
                </div>
            </div>
            <div className="col s12 m8 l8 z-depth-4">
                {<Bullets/>}
            </div>
            <div className="col s12 m1 l1">
            </div>
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

