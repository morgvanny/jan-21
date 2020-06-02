import React, { Component } from 'react'

export default class DetailedPokemon extends Component {
  render() {
    console.log(this.props)
    return (
      <div>
        <h1>{ this.props.name }</h1>
        <img src={ this.props.sprites.front_shiny } alt={ `front ${this.props.name}` } />
        <p>Weight: { this.props.weight }</p>
        <p>Height: { this.props.height }</p>
      </div>
    )
  }
}
