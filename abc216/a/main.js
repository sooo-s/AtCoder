const input = require('fs').readFileSync('/dev/stdin', 'utf8').trim().split('\n')

const [x, y] = input[0].split('.').map(Number)
const yy = y <= 2 ? '-' : y <= 6 ? '' : '+'
console.log([x, yy].join(''))
