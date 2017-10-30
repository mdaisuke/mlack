// @flow
import React from 'react';
import { Link } from 'react-router-dom';

const NotFound = () =>
  <div style={{ margin: '2rem auto', textAlign: 'center' }}>
    <p>page not found</p>
    <p><Link to="/">go to home</Link></p>
  </div>;

export default NotFound;
