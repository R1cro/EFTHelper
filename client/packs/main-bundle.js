import ReactOnRails from 'react-on-rails';

import MainApp from '../bundles/Main/startup/Main';
import AppStyle from '../assets/style/sass/application.scss'
import Libs from '../bundles/Main/libs/libs'

ReactOnRails.register({
  MainApp, AppStyle, Libs
});
