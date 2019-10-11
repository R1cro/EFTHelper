import React from 'react';
import { Provider } from 'react-redux';

import configureMainStore from '../store/mainStore';
import MainContainer from '../containers/MainContainer';
import AppTabsContainer from '../containers/AppTabsContainer'
import Footer from "../components/UI/Footer";
import NavigationBar from "../components/UI/NavigationBar";
import BackgroundEffects from '../components/UI/effects/BackgroundEffects'

// See documentation for https://github.com/reactjs/react-redux.
// This is how you get props from the Rails view into the redux store.
// This code here binds your smart component to the redux store.
const Main = (props) => (
  <Provider store={configureMainStore(props)}>
    <NavigationBar title={props.title} />
    <AppTabsContainer />
    <MainContainer name={props.name} title={props.title}/>
    <Footer />
    <BackgroundEffects />
  </Provider>
);

export default Main;
