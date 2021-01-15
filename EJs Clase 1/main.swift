let calle: [String: String] = [:]

typealias Direccion = (ciudad: String, partido: String, provincia: String, calle: [String: String], pais: String, codigoPostal: String, piso: String?, departamento: String?)

let direccion1: Direccion = (ciudad: "Madero", partido: "La Matanza", provincia: "Bs As", calle: ["nombreCalle": "Pringles", "numero": "1234"], pais: "Argentina", codigoPostal: "1241", piso: "2", departamento: "C")

let direccion2: Direccion = (ciudad: "Tablada", partido: "La Matanza", provincia: "Bs As", calle: ["nombreCalle": "Limay", "numero": "2351"], pais: "Argentina", codigoPostal: "5512", piso: "3", departamento: "D")

let direccion3: Direccion = (ciudad: "Tapiales", partido: "La Matanza", provincia: "Bs As", calle: ["nombreCalle": "Bradsen", "numero": "4651"], pais: "Argentina", codigoPostal: "1143", piso: "4", departamento: "E")

let arrayDir: [Direccion] = [direccion1, direccion2, direccion3]

func mostrar(_ direccion: Direccion) {
  print("Direccion Completa: \(direccion.calle["nombreCalle"]!) \(direccion.calle["numero"]!), \(direccion.piso!) \(direccion.departamento!), (\(direccion.codigoPostal)) \(direccion.ciudad), \(direccion.partido), \(direccion.provincia), \(direccion.pais)\n")
}

mostrar(direccion1)

func mostrar2(_ direcciones: [Direccion]) -> String {
  var direccionFinal = ""
  for indice in direcciones {
    if let pisoOpt = indice.piso, let departamentoOpt = indice.departamento {
      direccionFinal += "Piso: "
      direccionFinal += pisoOpt
      direccionFinal += " ; "
      direccionFinal += "Departamento: "
      direccionFinal += departamentoOpt
      direccionFinal += "\n"
    }
    else {
      direccionFinal += "No posee piso y/o departamento."
    }
  }
  return direccionFinal
}

print(mostrar2(arrayDir))