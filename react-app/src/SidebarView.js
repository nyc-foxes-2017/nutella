import React, { Component } from 'react';
import Friend from './Friend';

export default class SidebarView extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      user: { friends: [] }
    }
  }
  componentDidMount() {
    fetch("http://localhost:5000/users/1")
      .then(function(response) {

        return response.text();
      }).then(function(response) {
        this.setState({user: JSON.parse(response)});
      }.bind(this));
  }
  render() {
    return (
      <div className="col s3 sidebar">
        <div className="profile center">
          <img src={this.state.user.picture} />
          <p className="name">{this.state.user.first_name} {this.state.user.last_name}</p>
        </div>



        <div className="friends center card-panel">
          <h6 className="friends-header"> Friends </h6>
            {
              this.state.user.friends.map((friend) => {
                return(<Friend params={friend} key={friend.id}/>)
              })
            }
        </div>
      </div>
    );
  }
}

