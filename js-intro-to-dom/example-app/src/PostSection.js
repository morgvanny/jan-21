import React from 'react'
import Post from './Post'
import PostForm from './PostForm'

class PostSection extends React.Component {

  state = {
    display: true,
    somethingElse: { whatever: 27 },
    posts: [{ title: "First", content: "First post!" }, { title: "Another", content: "testing post number 2" }]
  }

  toggleDisplay = () => {
    this.setState((state) => {
      return { display: !state.display }
    })
  }

  newPost = (post) => {
    this.setState((state) => {
      return { posts: [...state.posts, post] }
    })
  }

  render() {

    const posts = this.state.posts.map(p => {
      return <Post title={ p.title } content={ p.content } key={ p.content } />
    })

    return (<div>
      <h1>Posts</h1>
      <PostForm callback={ this.newPost } />
      <button onClick={ this.toggleDisplay }>Hide Posts</button>
      { this.state.display ? posts : null }
    </div>)
  }
}

export default PostSection
