import { RECEIVE_USERS, RECEIVE_CURRENT_USER, LOGOUT_CURRENT_USER } from "../actions/session_actions";

const nullUser = {id: null}

const SessionReducer = (state = nullUser, action) => {
  Object.freeze(state);
  // const nextState = Object.assign({}, state);
  switch (action.type) {
    // case RECEIVE_USERS:
    //   return action.users
    case RECEIVE_CURRENT_USER:
      return Object.assign({}, {id: action.user.id})
      // nextState['id'] = action.user.id;
      // return nextState;
    case LOGOUT_CURRENT_USER:
      return nullUser
      // nextState['id'] = null;
      // return nextState;
    default:
      return state;
  }
}

export default SessionReducer
