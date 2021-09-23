const input = require('fs').readFileSync('/dev/stdin', 'utf8').trim().split('\n')

const n = parseInt(input[0])
const [_, ...st] = input

console.log(st.length === [...new Set(st)].length ? 'No' : 'Yes')
