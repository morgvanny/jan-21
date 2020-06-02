import React, { Component } from 'react'
import Pokemon from './Pokemon'

export default class PokemonFetcher extends Component {

  state = { fetched: false }
  componentDidMount() {
    fetch(this.props.url).then(r => r.json()).then(d => {
      this.setState({ ...d, fetched: true })
    })
  }

  render() {
    return (
      <>
        {
          this.state.fetched ?
            <Pokemon { ...this.state } />
            :
            null
        }
      </>
    )
  }
}
