/* eslint-disable import/prefer-default-export */

import { MAIN_TITLE_UPDATE } from '../constants/navbarConstants';

export const updateName = (text) => ({
    type: MAIN_TITLE_UPDATE,
    text,
});
