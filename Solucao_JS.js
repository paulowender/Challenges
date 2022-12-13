let nums = [1, 13, 10, 12, 31];

nums.forEach((num) => {
  const reversedString = `${num}`.split('').reverse().join('')
  const reversed = Number.parseInt(reversedString)
  if (!nums.find((iten) => iten == reversed)) {
    nums.push(reversed)
  }
})

console.log(nums.length)
