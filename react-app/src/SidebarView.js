import React, { Component } from 'react';
import Friend from './Friend';

export default class SidebarView extends React.Component {
  render() {
    return (
      <div className="col s3 sidebar">
        <div className="profile center">
          <img src="../images/jay.jpg" / >
          <p className="name"> Jay Papandreas </p>
        </div>



        <div className="friends center card-panel">
          <h6 className="friends-header"> Friends </h6>
            <Friend />
        </div>
      </div>
    );
  }
}

