/* eslint-disable import/prefer-default-export */

import { MAIN_NAME_UPDATE,
         MAIN_TITLE_UPDATE
} from '../constants/mainConstants';

export const updateName = (text) => ({
    type: MAIN_NAME_UPDATE,
    text,
});

export const updateTitle = (text) => ({
    type: MAIN_TITLE_UPDATE,
    text
});
