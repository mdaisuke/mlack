// @flow
import React, { Component } from 'react';
import { BrowserRouter as Router, Switch, Route, Link } from 'react-router-dom';
import Home from '../Home';

class App extends Component {
  render() {
    return (
      <Router>
        <div>
          <div>
            <ul>
              <li><Link to="/">home</Link></li>
            </ul>
          </div>
          <hr />

          <Route exact path="/" component={Home} />
        </div>
      </Router>
    );
  }
}

export default App;
