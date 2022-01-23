import { connect } from 'react-redux';
import { signup, login } from '../../actions/session_actions';
import SessionForm from './session_form';


const mapStateToProps = state => ({
  errors: Object.values(state.errors),
  formType: 'Sign Up'
})

const mapDispatchToProps = dispatch => ({
  processForm: (user) => dispatch(signup(user)),
  demologin: user => dispatch(login(user))
})

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);
