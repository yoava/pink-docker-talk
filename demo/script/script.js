var ProgressBar = require('progress');

console.log('Processing...');
var bar = new ProgressBar(':bar', { total: 10, width: 30, complete: '█'});
var timer = setInterval(function () {
  bar.tick();
  if (bar.complete) {
    console.log('Done!\n');
    clearInterval(timer);
  }
}, 100);
