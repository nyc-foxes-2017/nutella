import React, { Component } from 'react';
import CommentsView from './CommentsView'

export default class Post extends React.Component {
  render() {
    return (
      <div className="post-container card-panel">
        <div className="post">
          <div className="post-header">
            <img src="../images/alex.jpg"/>
            <div className="post-names">
              <a href="#"> Harlan Kelley</a>&nbsp;&nbsp;&nbsp;➤&nbsp;&nbsp;<a href="#"> Jay Papandreas</a>
               <div className="post-time">
                25mins ago
              </div>
            </div>
          </div>
          <div className="post-content">
            <p> I think youre funny. I like your friends. I like the way they treat you. Happy Birthday my dude! </p>
          </div>
          <div className="post-like-bar">
            <a href="#"> <i className="tiny material-icons">thumb_up</i>
              <span> Like </span>
            </a>
          </div>
          <CommentsView />

        </div>
      </div>
    );
  }
}
