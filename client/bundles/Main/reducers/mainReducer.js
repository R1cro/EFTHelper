import { combineReducers } from 'redux';
import { MAIN_NAME_UPDATE } from '../constants/mainConstants';

const name = (state = '', action) => {
  switch (action.type) {
    case MAIN_NAME_UPDATE:
      return action.text;
    default:
      return state;
  }
};

const mainReducer = combineReducers({ name });

export default mainReducer;
