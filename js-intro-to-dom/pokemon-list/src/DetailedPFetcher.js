import React, { Component } from 'react'
import DetailedPokemon from './DetailedPokemon'

export default class DetailedPFetcher extends Component {

  state = { fetched: false }
  componentDidMount() {
    fetch(this.props.url).then(r => r.json()).then(d => {
      this.setState({ ...d, fetched: true })
    })
  }

  render() {
    return (
      <div className="App">

        {
          this.state.fetched ?
            <DetailedPokemon { ...this.state } />
            :
            null
        }
      </div>
    )
  }
}
