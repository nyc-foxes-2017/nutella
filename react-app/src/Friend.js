import React, { Component } from 'react';
import './App.css';

export default class Friend extends React.Component {
  render() {
    return (
      <div className="friend">
        <img src={this.props.params.picture} / >
        <p className="name">{this.props.params.first_name} {this.props.params.last_name}</p>
      </div>
    );
  }
}

