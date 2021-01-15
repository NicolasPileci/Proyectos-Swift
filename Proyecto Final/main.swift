class User {
  let name: String
  let lastName: String
  let id: String
  let age: String

  init(name: String, lastName: String, id: String, age: String) {                    
    self.name = name
    self.lastName = lastName
    self.id = id
    self.age = age
  }
}

class Address {
  let calle: String
  let altura: String
  let cp: String
}

class Place {
  let city: String
  let country: String
  let state: String

  init(city: String, country: String, state: String) {
    self.city = city
    self.country = country
    self.state = state
  }

  func getPlace() -> String {
    return "\(state), \(city), \(country)"
  }
}

class Landmark: Place {
   let attraction: String
   let monument: String
   let excursion: String
   let arrayAttraction: [String]
  
  init(city: String, country: String, state: String, attraction: String, monument: String, excursion: String, arrayAttraction: [String]) {
    self.attraction = attraction
    self.monument = monument
    self.excursion = excursion
    self.arrayAttraction = arrayAttraction
    super.init(city: city, country: country, state: state)
  }

  func getDestination() -> String {         
    let dataPlace = super.getPlace()
    return "\(dataPlace)"
  }

  func getAttractionList() -> [String] {
    return arrayAttraction
  }

  func getAttraction() -> String {
    return "\(arrayAttraction)"
  }
}

let destination1 = Landmark(city: "Buenos Aires", country: "Argentina", state: "Mar Del Plata", attraction: "Mundo Marino", monument: "Monumento Malvinas", excursion: "Cabalgata", arrayAttraction: ["Playa", "Centro", "Casino"]) 

let destination2 = Landmark(city: "Roma", country: "Italia", state: "Florencia", attraction: "Coliseo", monument: "El David", excursion: "Paseos Nocturnos", arrayAttraction: ["Lago", "Mar", "Montaña"])

let destination3 = Landmark(city: "Arizona", country: "EEUU", state: "Phoenix", attraction: "Gran Cañon", monument: "Powel Point", excursion: "Conociendo Galeria Uffizi", arrayAttraction: ["Bosque", "Campo", "Rio"])

let arrayDestinations = [destination1, destination2, destination3]

var i = 1

print("\nSitios: \n")


for destinations in arrayDestinations {
  print("Opcion: \(i)")
  print("\(destinations.getDestination())")
  i += 1
}

var arrayUserPlaces = [Landmark]()
var resp = 1

print("\nElegir sitios favoritos: (Opcion: 0 para salir)\n")

while resp == 1 {
  let optSelected = readLine()!
  switch optSelected {
    case "1":
      arrayUserPlaces.append(arrayDestinations[0])
      break
    case "2":
      arrayUserPlaces.append(arrayDestinations[1])
      break
    case "3":
      arrayUserPlaces.append(arrayDestinations[2])
      break
    case "0":
      resp = 0
    default:
      print("Sin Opcion")
      break
    }
  print("\nElegir sitios favoritos: (Opcion: 0 para salir)\n")
}

var j = 1
var arrayUserAttractions = [String]()
var resp2 = 1

i = 0

print("Atracciones: \n")

for _ in (1...arrayUserPlaces.count) {
  print(arrayUserPlaces[i].getDestination())
  for index in arrayDestinations[i].getAttractionList() {
    print("Opcion: \(j)")
    print(index)
    j += 1
  }
  i += 1  
}

print("\nElegir atracciones favoritas: (Opcion: 0 para salir)\n")

while resp2 == 1 {
  let optSelected = readLine()!
  switch optSelected {
    case "1":
      arrayUserAttractions.append(arrayDestinations[0].getAttractionList()[0])
      break
    case "2":
      arrayUserAttractions.append(arrayDestinations[1].getAttractionList()[1])
      break
    case "3":
      arrayUserAttractions.append(arrayDestinations[2].getAttractionList()[2])
      break
    case "4":
      arrayUserAttractions.append(arrayDestinations[0].getAttractionList()[0])
      break
    case "5":
      arrayUserAttractions.append(arrayDestinations[1].getAttractionList()[1])
      break
    case "6":
      arrayUserAttractions.append(arrayDestinations[2].getAttractionList()[2])
      break
    case "7":
      arrayUserAttractions.append(arrayDestinations[0].getAttractionList()[0])
      break
    case "8":
      arrayUserAttractions.append(arrayDestinations[1].getAttractionList()[1])
      break
    case "9":
      arrayUserAttractions.append(arrayDestinations[2].getAttractionList()[2])
      break
    case "0":
      resp2 = 0
    default:
      print("Sin Opcion")
      break
    }
    print("\nElegir atracciones favoritas: (Opcion: 0 para salir)\n")
}

print("Sitios Elegidos:\n")

for index in arrayUserPlaces {
  print(index.getDestination())
}

print("\nAtracciones Favoritas:\n")

for index in arrayUserAttractions {
  print(index)
}