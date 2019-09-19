/* eslint-disable import/prefer-default-export */

import { MAIN_NAME_UPDATE } from '../constants/mainConstants';

export const updateName = (text) => ({
    type: MAIN_NAME_UPDATE,
    text,
});
