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

Pais.create(nombre: "Chile")
Provincia.create(nombre: "Aisén del General Carlos Ibáñez del Campo", pais_id: 2)
Provincia.create(nombre: "Antofagasta", pais_id: 2)
Provincia.create(nombre: "Arica y Parinacota", pais_id: 2)
Provincia.create(nombre: "Araucanía", pais_id: 2)
Provincia.create(nombre: "Atacama", pais_id: 2)
Provincia.create(nombre: "Bío-Bío", pais_id: 2)
Provincia.create(nombre: "Coquimbo", pais_id: 2)
Provincia.create(nombre: "Libertador General Bernardo O'Higgins", pais_id: 2)
Provincia.create(nombre: "Los Lagos", pais_id: 2)
Provincia.create(nombre: "Los Ríos", pais_id: 2)
Provincia.create(nombre: "Magallanes y Antártica Chilena", pais_id: 2)
Provincia.create(nombre: "Maule", pais_id: 2)
Provincia.create(nombre: "Región Metropolitana de Santiago", pais_id: 2)
Provincia.create(nombre: "Tarapacá", pais_id: 2)
Provincia.create(nombre: "Valparaíso", pais_id: 2)

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
Persona.create(nombre: 'Jorge',
  apellido: 'Pietro',
  sexo: 'Masculino',
  fecha_de_nacimiento: '1978-03-11 00:00:00',
  direccion: 'Washington 1725, Topahue',
  email: 'jpietro@yahoo.com',
  sitio_web: 'http://www.jpietro.com',
  provincia_id: 10,
  pais_id: 2)