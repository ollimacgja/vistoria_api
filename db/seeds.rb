# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

FieldType.where(nome: 'Foto').first_or_create
FieldType.where(nome: 'Vídeo').first_or_create
FieldType.where(nome: 'Assinatura').first_or_create
FieldType.where(nome: 'Coordenadas').first_or_create
FieldType.where(nome: 'Data').first_or_create
FieldType.where(nome: 'Data Hora').first_or_create
FieldType.where(nome: 'Texto').first_or_create
FieldType.where(nome: 'Número').first_or_create
FieldType.where(nome: 'Audio').first_or_create
FieldType.where(nome: 'Checkbox').first_or_create
FieldType.where(nome: 'RadioBox').first_or_create
FieldType.where(nome: 'Arquivo').first_or_create

filial = Filial.where(nome: 'Morro Azul').first_or_create

User.create(nome: 'Fernando', filial: filial, tipo: 1, email: 'nando-hp@hotmail.com', password: 'trocar123')

Logo.create