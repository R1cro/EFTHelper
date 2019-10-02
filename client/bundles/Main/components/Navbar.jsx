import React from 'react';

const Navbar = ({ title }) => (
    <nav className="grey darken-3" role="navigation">
        <div className="nav-wrapper container"><a id="logo-container" href="#" className="brand-logo">{title}</a>
            <ul className="right hide-on-med-and-down">
                <li><a href="#">Navbar Link</a></li>
            </ul>

            <ul id="nav-mobile" className="sidenav">
                <li><a href="#">Navbar Link</a></li>
            </ul>
            <a href="#" data-target="nav-mobile" className="sidenav-trigger"><i className="material-icons">Menu</i></a>
        </div>
    </nav>
);

export default Navbar;
