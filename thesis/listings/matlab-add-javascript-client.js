var socket = new WebSocket('ws://localhost:7000');

socket.onmessage = function(e) {
	var json = JSON.parse(e.data);
	var result = json.results.result.value;
	console.log(result);
};

socket.onopen = function() {
	var request = JSON.stringify({
		'function': 'add',
		'parameters': [
			{ 'type': 'scalar', 'value': 1 },
			{ 'type': 'scalar', 'value': 2 }
		],
		'results': { 'result': 'scalar' }
	});
	this.send(request);
};