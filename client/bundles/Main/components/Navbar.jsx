import React from 'react';
import PropTypes from "prop-types";
import Main from "./Main";

const Navbar = ({ title }) => (
    <nav className="grey darken-3" role="navigation">
        <div className="nav-wrapper container"><a id="logo-container" href="#" className="brand-logo">{title}</a>
        </div>
    </nav>
);

Main.propTypes = {
    title: PropTypes.string.isRequired,
    updateTitle: PropTypes.func.isRequired,
};

export default Navbar;
