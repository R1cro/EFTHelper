import { createStore } from 'redux';
import mainReducer from '../reducers/mainReducer';

const configureMainStore = (railsProps) => (
  createStore(mainReducer, railsProps)
);

export default configureMainStore;
