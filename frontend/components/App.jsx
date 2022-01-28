import React from "react";
import { Route, Switch } from "react-router";
import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';
import BusinessIndexContainer from './business/business_index_container';
import BusinessShowContainer from "./business/business_show_container";
import CreateReviewFormContainer from './review/create_review_form_container';
import UpdateReviewFormContainer from "./review/update_review_form_container";
import Splash from './splash/splash'
import { AuthRoute, ProtectedRoute } from "../util/route_util";

const App = () => (
  <div>
    <Switch>
      <AuthRoute exact path="/login" component={LoginFormContainer}/>
      <AuthRoute exact path="/signup" component={SignupFormContainer}/>
      <ProtectedRoute exact path="/businesses/:businessId/reviews/new" component={CreateReviewFormContainer} />
      <ProtectedRoute exact path="/businesses/:businessId/reviews/:reviewId/edit" component={UpdateReviewFormContainer} />
      <Route exact path="/businesses/:businessId" component={BusinessShowContainer}></Route>
      <Route exact path="/businesses" component={BusinessIndexContainer}/>
      <Route exact path="/" component={Splash}/>
    </Switch>
  </div>
);

export default App;
