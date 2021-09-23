const input = require('fs').readFileSync('/dev/stdin', 'utf8').trim().split('\n')

let n = BigInt(input[0])
const ans = []

while (n > 0n) {
  if (n % 2n === 1n) {
    n -= 1n
    ans.push('A')
  } else {
    n /= 2n
    ans.push('B')
  }
}

console.log(ans.reverse().join(''))
