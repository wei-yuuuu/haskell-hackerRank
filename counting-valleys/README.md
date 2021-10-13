# counting-valleys

A valley is defined as going lower than sea level and then back to sea level

### Input 
```
N = 8
S = UDDDUDUU
```
### Output
```
1

_/\      _
   \    /
    \/\/
```

### Input 
```
N = 10
S = UDDDUDUUDU
```
### Output
```
2

_/\      _  _
   \    / \/
    \/\/
```

https://www.hackerrank.com/challenges/counting-valleys/problem

```js
function countingValleys(steps, path) {
    let valleys = 0
    let altitude = 0
    for (let i = 0; i < steps; i++) {
      // if path is 'D' we decrement the altitide
      if (path[i] === 'D') {
        altitude--
      } else {
        // this means a down and up movement suggesting a valley passed
        if (altitude === -1) {
          valleys++
        }
        // else we increment the altititude
        altitude++
      }
    }
    return valleys
}
```

ref: https://javascript.plainenglish.io/javascript-challenge-counting-valleys-hackerrank-interview-prep-77678218e9c2
