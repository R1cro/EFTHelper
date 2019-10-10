import React from 'react';
import { Provider } from 'react-redux';

import configureMainStore from '../store/mainStore';
import MainContainer from '../containers/MainContainer';
import AppTabsContainer from '../containers/AppTabsContainer'
import Footer from "../components/UI/Footer";

// See documentation for https://github.com/reactjs/react-redux.
// This is how you get props from the Rails view into the redux store.
// This code here binds your smart component to the redux store.
const Main = (props) => (
  <Provider store={configureMainStore(props)}>
    <AppTabsContainer />

    <MainContainer name={props.name} title={props.title}/>

    <Footer />
  </Provider>
);

export default Main;
