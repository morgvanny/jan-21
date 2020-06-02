import React from 'react'
import { Link } from 'react-router-dom'

export default function Pokemon({ name, sprites }) {
  return (
    <div>
      <Link to={ name }>
        <div className="pokemon">
          <h2>{ name }</h2>
          <img src={ sprites.front_shiny } alt={ `front ${name}` } />
        </div >
      </Link >
    </div>
  )
}
