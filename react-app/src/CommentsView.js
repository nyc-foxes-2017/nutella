import React, { Component } from 'react';
export default class CommentsView extends React.Component {
  render() {
    return (
      <div className="full-comments-container card-content">
        <div className="other-smaller-container">
          <div className="get-like-bar">
            <i className="tiny material-icons">thumb_up</i>
            <div className="like">
            <span className="like-names"> Jay Papandreas, Michael Benson, and 3 others </span>
            </div>
          </div>
          <div className="comment-container">
            <img src="../images/jay.jpg"/>
            <div className="line1"> <a href="#"> Kyle Schwab </a> A vision board for shitheads</div>
            <div className="line2"> <a href="#"> Like</a>&nbsp;&nbsp;&nbsp;<i className="tiny material-icons">thumb_up</i>&nbsp;&nbsp;&nbsp;<span className="number_of_likes">&nbsp;4&nbsp;</span></div>
          </div>
          <div className="write-comment">
            <form id="comment-form">
              <textarea id="new-comment" cols="30" rows="1" placeholder="Write a comment..." name="post"></textarea>
              <input className="btn-small post-button right" type="submit" value="Post" />
            </form>
          </div>
        </div>
      </div>
    );
  }
}

