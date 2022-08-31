import AuthService from "./services";
import {
    SIGN_IN_REQUEST,
    SIGN_IN_SUCCESS,
    SIGN_IN_FAILURE,
    SIGN_UP_REQUEST,
    SIGN_UP_SUCCESS,
    SIGN_UP_FAILURE,
    SIGN_OUT_REQUEST,
    SIGN_OUT_SUCCESS,
    SIGN_OUT_FAILURE
} from "./types";

export const register = (username, nickname, email, password) => (dispatch) => {
    return AuthService.register(username, nickname, email, password).then((response) => {
        dispatch({
            type: SIGN_UP_SUCCESS
        });
        dispatch({})
    })
}