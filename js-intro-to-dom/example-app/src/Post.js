import React, { Component } from 'react'

export default class Post extends Component {
  render() {
    return (
      <div>
        <h2>{ this.props.title }</h2>
        <p>{ this.props.content }</p>
      </div>
    )
  }
}
