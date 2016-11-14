# Creación de países y provincias
Pais.delete_all
Provincia.delete_all
Pais.create(nombre: "Argentina")
Provincia.create(nombre: "Salta", pais_id: 1)
Provincia.create(nombre: "Buenos Aires", pais_id: 1)
Provincia.create(nombre: "Ciudad Autónoma de Buenos Aires", pais_id: 1)
Provincia.create(nombre: "San Luis", pais_id: 1)
Provincia.create(nombre: "Entre Ríos", pais_id: 1)
Provincia.create(nombre: "Santiago del Estero", pais_id: 1)
Provincia.create(nombre: "Chaco", pais_id: 1)
Provincia.create(nombre: "San Juan", pais_id: 1)
Provincia.create(nombre: "Catamarca", pais_id: 1)
Provincia.create(nombre: "La Pampa", pais_id: 1)
Provincia.create(nombre: "Mendoza", pais_id: 1)
Provincia.create(nombre: "Misiones", pais_id: 1)
Provincia.create(nombre: "Formosa", pais_id: 1)
Provincia.create(nombre: "Neuquén", pais_id: 1)
Provincia.create(nombre: "Río Negro", pais_id: 1)
Provincia.create(nombre: "Santa Fe", pais_id: 1)
Provincia.create(nombre: "Tucumán", pais_id: 1)
Provincia.create(nombre: "Chubut", pais_id: 1)
Provincia.create(nombre: "Tierra del Fuego", pais_id: 1)
Provincia.create(nombre: "Corrientes", pais_id: 1)
Provincia.create(nombre: "Córdoba", pais_id: 1)
Provincia.create(nombre: "Jujuy", pais_id: 1)
Provincia.create(nombre: "Santa Cruz", pais_id: 1)
Provincia.create(nombre: "La Rioja", pais_id: 1)

# Creación de tipos de teléfono
TipoDeTelefono.delete_all
TipoDeTelefono.create(nombre: 'Fijo')
TipoDeTelefono.create(nombre: 'celular')

# Creación de personas de prueba
Persona.delete_all
Persona.create(nombre: 'Carlos',
  apellido: 'Peralta',
  sexo: 'Masculino',
  fecha_de_nacimiento: '1980-10-13 00:00:00',
  direccion: 'Pedegastos 333, Florida',
  email: 'cperalta@gmail.com',
  sitio_web: 'http://www.cperalta.com',
  provincia_id: 21,
  pais_id: 1)
Persona.create(nombre: 'Luisa',
  apellido: 'Contreras',
  sexo: 'Femenino',
  fecha_de_nacimiento: '1987-06-25 00:00:00',
  direccion: 'Berutti 555, Rivadavia',
  email: 'lcontreras@hotmail.com',
  sitio_web: 'http://www.lcontreras.com',
  provincia_id: 8,
  pais_id: 1)