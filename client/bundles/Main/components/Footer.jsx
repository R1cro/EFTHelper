import React from 'react';

const Footer = ({}) => (
    <footer className="page-footer brown darken-3">
        <div className="container">
            <div className="row">
                <div className="col l6 s12">
                    <h5 className="white-text">Project details</h5>
                    <p className="grey-text text-lighten-4">Escape from Tarkom REST API & Web-app project.</p>
                </div>
                <div className="col l3 s12">
                    <h5 className="white-text">Settings</h5>
                    <ul>
                        <li><a className="white-text" href="#!">Link 1</a></li>
                        <li><a className="white-text" href="#!">Link 2</a></li>
                        <li><a className="white-text" href="#!">Link 3</a></li>
                        <li><a className="white-text" href="#!">Link 4</a></li>
                    </ul>
                </div>
                <div className="col l3 s12">
                    <h5 className="white-text">Connect</h5>
                    <ul>
                        <li><a className="white-text" href="#!">Link 1</a></li>
                        <li><a className="white-text" href="#!">Link 2</a></li>
                        <li><a className="white-text" href="#!">Link 3</a></li>
                        <li><a className="white-text" href="#!">Link 4</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div className="footer-copyright">
            <div className="container">
                Made by <a className="orange-text text-lighten-3" href="#">R1cro</a>
            </div>
        </div>
    </footer>
);

export default Footer;
