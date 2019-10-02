import { combineReducers } from 'redux';
import { MAIN_NAME_UPDATE, MAIN_TITLE_UPDATE } from '../constants/mainConstants';

const name = (state = '', action) => {
  switch (action.type) {
    case MAIN_NAME_UPDATE:
      return action.text;
    default:
      return state;
  }
};

const title = (state = '', action) => {
  switch (action.type) {
    case MAIN_TITLE_UPDATE:
      return action.text;
    default:
      return state;
  }
};

const mainReducer = combineReducers({ name, title });

export default mainReducer;
