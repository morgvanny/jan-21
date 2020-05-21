import React from 'react';
import './App.css';
import PostsSection from './PostSection'
const posts = [{ title: "First", content: "First post!" }, { title: "Another", content: "testing post number 2" }]

function App() {
  return (
    < div className="App" >
      <header className="App-header">
        <PostsSection posts={ posts } />
      </header>
    </div >
  );
}

export default App;
