import PropTypes from 'prop-types';
import React from 'react';

const Main = (props) => (
    <div>
    </div>
);

Main.propTypes = {
    name: PropTypes.string.isRequired,
    title: PropTypes.string.isRequired,
    updateName: PropTypes.func.isRequired,
    updateTitle: PropTypes.func.isRequired
};

export default  Main;

