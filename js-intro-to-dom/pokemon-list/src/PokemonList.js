import React, { Component } from 'react'
import {
  BrowserRouter as Router,
  Switch,
  Route,
  NavLink
} from 'react-router-dom'
import PokemonFetcher from './PokemonFetcher'
import About from './About'
import DetailedPFetcher from './DetailedPFetcher'

export default class PokemonList extends Component {

  state = { pokemon: [] }

  componentDidMount() {
    fetch('https://pokeapi.co/api/v2/pokemon?limit=50')
      .then(r => r.json()).then(data => this.setState({ pokemon: data.results }))
  }
  urlFromName(props) {
    const p = this.state.pokemon.find(p => p.name == props.match.params.name)
    if (p) {
      return p.url
    }
  }
  render() {
    const list = this.state.pokemon.map(p => {
      return <PokemonFetcher { ...p } key={ p.name } />
    })
    return (
      <>
        <Router>
          <div className="App">
            <nav>
              <ul>
                <li>
                  <NavLink to="/">Home</NavLink>
                </li>
                <li>
                  <NavLink to="/about">About</NavLink>
                </li>
              </ul>
            </nav>
            <Switch>
              <Route path='/about'>
                <About />
              </Route>
              <Route render={ (props) => {
                return (
                  this.urlFromName(props) ?
                    <DetailedPFetcher url={
                      this.urlFromName(props)
                    } />
                    :
                    null
                )
              } } path='/:name' />
              <Route path="/">
                { list }
              </Route>
            </Switch>
          </div>
        </Router>
      </>
    )
  }
}


const store = [{ counter: 0, timerOn: false }]

function reducer(state, action) {
  switch (action.type) {
    case "INCREMENT_COUNTER":
      return { ...state, counter: state.counter + 1 }
    case "DECREMENT_COUNTER":
      return { ...state, counter: state.counter - 1 }
    case "SET_COUNTER":
      return { ...state, counter: action.payload.counter }
    case "TOGGLE_TIMER":
      return { ...state, timerOn: !state.timerOn }
    default:
      return state
  }
}
