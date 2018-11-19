# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Departamento.delete_all
Ciudad.delete_all
Universidad.delete_all
Rol.delete_all
TipoDocumento.delete_all
Persona.delete_all
User.delete_all

departamento_id = Departamento.create([{codigo: '11', nombre: 'D.C.', descripcion: 'Distrito Capital'}])

ciudad_id = Ciudad.create([
                              {
                                  departamento: departamento_id.first,
                                  codigo: '001',
                                  nombre: 'BOGOTA',
                                  descripcion: 'Región Andina'
                              }
                          ])

Universidad.create([
                       {
                           ciudad: ciudad_id.first,
                           nit: '8000123-1',
                           nombre: 'Javeriana',
                           dereccion: 'Carrera 7 No. 40 - 62',
                           telefono: '3208320',
                           estado: 'activo'
                       }
                   ])

Rol.create([
               {
                   nombre: "AdminABE",
                   menu: "shared/navbar_admin_abe.html.erb",
                   descripcion: "Administrador de Access Better Education"
               },
               {
                   nombre: "AdminUNI",
                   menu: "shared/navbar_admin_universidad.erb",
                   descripcion: "Administrador de Universidad"
               },
               {
                   nombre: "aprendiz",
                   menu: "shared/navbar_aprendiz.erb",
                   descripcion: "Usuario Final que puede aplicar a las becas"
               }
           ])

tipo_documento_id = TipoDocumento.create([
                                             {nombre: "RC", descripcion: "Registro Civil"},
                                             {nombre: "TI", descripcion: "Tarjeta de Identidad"},
                                             {nombre: "CC", descripcion: "Cedula de Ciudadania"}
                                         ])

 Persona.create([
                   {
                       tipo_documento: tipo_documento_id.third,
                       num_documento: "1047",
                       nombre: "Robin",
                       pri_apellido: "Arellano",
                       seg_apellido: "Henriquez",
                       genero: "M",
                       fecha_nacimiento: "",
                       direccion: "",
                       telefono: "",
                       celular: "",
                       email: ""
                   },
                   {
                       tipo_documento: tipo_documento_id.third,
                       num_documento: "1048",
                       nombre: "Kevin",
                       pri_apellido: "Arellano",
                       seg_apellido: "Urango",
                       genero: "M",
                       fecha_nacimiento: "",
                       direccion: "",
                       telefono: "",
                       celular: "",
                       email: ""
                   },
                   {
                       tipo_documento: tipo_documento_id.third,
                       num_documento: "1002",
                       nombre: "Maryuris",
                       pri_apellido: "Arellano",
                       seg_apellido: "Henriquez",
                       genero: "F",
                       fecha_nacimiento: "",
                       direccion: "",
                       telefono: "",
                       celular: "",
                       email: ""
                   }
               ])

user = User.new
user.email = 'adminabe@g.c'
user.password = 'abc123'
user.rol = Rol.first
user.persona = Persona.first
user.save

user = User.new
user.email = 'adminuni@g.c'
user.password = 'abc123'
user.rol = Rol.second
user.persona = Persona.second
user.save


user = User.new
user.email = 'aprendiz@g.c'
user.password = 'abc123'
user.rol = Rol.third
user.persona = Persona.third
user.save