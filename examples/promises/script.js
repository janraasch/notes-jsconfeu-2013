// node --harmony-generators --harmony-iteration script.js
// run with node version ~0.11.2

function* count(){
  for (var x = 0; true; x++) {
    yield x
  }
}

for (var x of count()) {
  console.log(x)
}
