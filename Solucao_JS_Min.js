let nums = [1, 13, 10, 12, 31];
nums.forEach((num) => {
  const reversed = Number.parseInt(`${num}`.split('').reverse().join(''))
  !nums.find((iten) => iten == reversed) ? nums.push(reversed) : null
})
console.log(nums.length)