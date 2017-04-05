import React, { Component } from 'react';
import Postpost from './Postpost'
import Post from './Post'
export default class Timeline extends React.Component {
  render() {
    return (
      <div className="col s9 main-profile">
      <Postpost />
      <Post />
    </div>
    );
  }
}

