function createRequest(a, b) {
  return JSON.stringify({
    'function': 'add',
    'parameters': [{ 'type': 'scalar', 'value': a },
                   { 'type': 'scalar', 'value': b }],
    'results': { 'result': 'scalar' }
  });
}

function parseResponse(e) {
  return JSON.parse(e.data).results.result.value;
}

var socket = new WebSocket('ws://localhost:7000');

socket.onmessage = function(e) {
  console.log(parseResponse(e));
};

socket.onopen = function() {
  this.send(createRequest(1,2));
};