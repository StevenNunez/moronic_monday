function combineNames(firstName, lastName, combiner) {
  return combiner(firstName, lastName)
}

let captainCombiner = function(f,l){
  return `${f} Captain of dopeness ${l}`
}

combineNames("Steven", "Nunez", captainCombiner)

combineNames("Jess", "Rudder", function(f,l){
  return `${f} jQuery God ${l}`
})

///////

let names = ["Steven", "Jess", "Niky"]

let nums = [1,2,3,4,5,6]

let squares = nums.map(function(num){
  return num * num
})

let total = nums.reduce(function(currentTotal, num) {
  return num + currentTotal
})

let organized = names.reduce(function(mapOfNames, name){
  let nameLength = name.length
  if (mapOfNames[nameLength]){
    mapOfNames[nameLength].push(name)
  } else {
    mapOfNames[nameLength] = [name]
  }
  return mapOfNames
}, {})
