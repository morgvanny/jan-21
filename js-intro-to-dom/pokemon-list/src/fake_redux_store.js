
// initializing store with a starting state

const store = [{ counter: 0, timerOn: false }]

// established way of getting new states, based on the old state and an action object
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
//lets me view the latest state from the store
function latest() {
  store[store.length - 1]
}

//action creators
function incrementCounter() {
  return { type: "INCREMENT_COUNTER" }
}

function setCounter(num) {
  return { type: "SET_COUNTER", payload: { counter: num } }
}

// dispatch uses the reducer (passing in the old latest state and the action)
// to add a new state to the store
function dispatch(action) {
  store.push(reducer(latest(), action))
}

dispatch(incrementCounter())
dispatch(incrementCounter())
dispatch(incrementCounter())

dispatch(setCounter(20))
// the store now has 5 state objects, and calling latest() will show the most up to date one
