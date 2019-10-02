import React from 'react';
import { Provider } from 'react-redux';

import configureStore from '../store/mainStore';
import MainContainer from '../containers/MainContainer';
import NavbarContainer from '../containers/NavbarContainer'
import Footer from "../components/Footer";

// See documentation for https://github.com/reactjs/react-redux.
// This is how you get props from the Rails view into the redux store.
// This code here binds your smart component to the redux store.
const Main = (props) => (
  <Provider store={configureStore(props)}>
    <NavbarContainer />

    <MainContainer />

    <Footer />
  </Provider>
);

export default Main;
