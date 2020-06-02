
function latest() {
  store[store.length - 1]
}

function incrementCounter() {
  return { type: "INCREMENT_COUNTER" }
}

function setCounter(num) {
  return { type: "SET_COUNTER", payload: { counter: num } }
}

function dispatch(action) {
  store.push(reducer(latest(), action))
}

dispatch(incrementCounter())
dispatch(incrementCounter())
dispatch(incrementCounter())

dispatch(setCounter(20))
// the store now has 5 state objects, and calling latest() will show the newest one
