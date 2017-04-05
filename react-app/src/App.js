import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import SidebarView from './SidebarView';

export default class App extends React.Component {
  render() {
    return (
      <div>
        <nav> </nav>
        <div className="row">
        <SidebarView />

        </div>
      </div>
    );
  }
}

