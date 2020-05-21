import React, { Component } from 'react'

function initState() {
  return { title: "", content: "" }
}

export default class PostForm extends Component {

  state = initState()

  handleChange = (e) => {
    this.setState({ [e.target.name]: e.target.value })
  }

  handleSubmit = (e) => {
    e.preventDefault()
    // fetch('http://localhost:3001', {
    //   headers: {
    //     'Content-Type': 'application/json'
    //   },
    //   body: JSON.stringify({ post: this.state })
    // }).then(res => res.json()).then(data => {
    //   this.setState(initState())
    // })
    this.props.callback(this.state)
    this.setState(initState())
  }

  render() {
    return (
      <form onSubmit={ this.handleSubmit }>
        <label htmlFor="title">Title: </label>
        <input name="title" value={ this.state.title } onChange={ this.handleChange } /> <br />
        <label htmlFor="content">Content: </label>
        <textarea name="content" value={ this.state.content } onChange={ this.handleChange } ></textarea>
        <input type="submit" />
      </form>
    )
  }
}
