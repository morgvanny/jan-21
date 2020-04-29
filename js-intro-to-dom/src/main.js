'use strict'

var counter = 0

function run() {
  console.log('hello')
  document.querySelector('.blue').style.color = "blue"
  document.querySelector('button').addEventListener('click', clickListener)
}

document.addEventListener("DOMContentLoaded", () => {
  run()
  document.querySelector('form').addEventListener('submit', handleSubmit)
})

function clickListener() {
  counter += 1
  document.querySelector('p').innerHTML = counter
}

const handleSubmit = (event) => {
  event.preventDefault()
  const title = event.target.title.value
  const content = event.target.content.value
  fetch("http://localhost:3000/notes", {
    method: "POST",
    headers: {
      'Content-Type': "application/json"
    },
    body: JSON.stringify({ title, content })
  }).then(res => res.json()).then(data => {
    if (data.id) {
      document.querySelector('ul').innerHTML += `
    <li id="${data.id}-note">
    <h2>${title}</h2>
    <p>${content}</p>
    <button onclick="deleteNote()">x</button>
    </li>
    `
      event.target.reset()
    } else {
      alert("there was a problem")
    }
  })
}

const deleteNote = () => {
  const li = event.target.parentElement
  const id = parseInt(li.id)
  fetch(`http://localhost:3000/notes/${id}`, {
    method: "delete"
  }).then(() => {
    li.remove()
  })
}



fetch("http://localhost:3000/notes")
  .then((res) => {
    if (res.ok) {
      return res.json()
    } else {
      throw (res.statusText)
    }
  })
  .then((asdf) => {
    console.log("the fetch worked!")
    document.querySelector('ul').innerHTML +=
      asdf.map(note => `
      <li id="${note.id}-note">
        <h2>${note.title}</h2>
        <p>${note.content}</p>
        <button onclick="deleteNote()">x</button>
      </li>
      `)
        .join('')
  })
  .catch((error) => {
    alert(error)
  })
