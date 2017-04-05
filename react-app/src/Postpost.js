import React, { Component } from 'react';

export default class Postpost extends React.Component {
  render() {
    return (
      <div className="write-comment card-panel">
        <form id="post-form">
              <textarea id="new-post" cols="30" rows="7" placeholder="Write something to... " name="post"></textarea>
              <input className="btn-small post-button right" type="submit" value="Post" />
        </form>
      </div>
    );
  }
}
