##Documentação da API

Está é a documentação de todos os Endpoints disponíves e seus respectivos Payloads.

**Obs:** Todos os requests devem conter o cabeçalho 'Content-type' setado para 'Application/json'

####Logar um usuário

Este é o endpoint para a logar um usuário existente.

```
  POST /api/v1/login
```

#####Os dados a serem enviados para a API:

```json
{
  "login":{
    "email": "emaildouser@email.com",
    "password": "password123"
  }
}
```

#####Dados de Resposta

como requisitado, os dados de resposta contém as informações do usuário e também os formulários ligados a filial do mesmo.

OBS: Os formulários estão com seus devidos campos

```json
{
  "nome":"teste",
  "filial_id":1,
  "tipo":1,
  "auth_token":"7mPXOCcBTRoACAyu25XqXw",
  "formularios":[{
    "id":8,
    "nome":"Formulário Teste"
    ,"filial_id":1,
    "formulario_fields":[{
      "id":8,
      "label":"Campo Requirido",
      "field_type_id":1,
      "field_type_name":"Foto",
      "requirido":1
    },{
      "id":9,
      "label":"Texto não requerido",
      "field_type_id":7,
      "field_type_name":"Texto",
      "requirido":0
    }]
  },{
    "id":9,
    "nome":"Segundo Formulário",
    "filial_id":1,
    "formulario_fields":[{
      "id":10,
      "label":"Mais um campo Requerido",
      "field_type_id":8,
      "field_type_name":"Número",
      "requirido":1
    },{
      "id":11,
      "label":"Teste CheckBox Label, Option 1, Option 2, Option 3, Option 4",
      "field_type_id":10,
      "field_type_name":"Checkbox",
      "requirido":1
    }]
  }]
}
```

####Enviar Formulário Preenchido

Este é o endpoint para a criação de resultados para uma competição.

```
  POST /api/v1/result
```

#####Os dados a serem enviados para a API:

```json
{
  "result":{
    "competition": "Competição Dardos",
    "athlete": "José das Couves",
    "value": "123.45",
    "unit": "m"
  }
}
```

######Observações
lorenipsaum

**Obs:** blabla

#####Dados de Resposta

```json
{
  "id": 60,
  "competition_id": 13,
  "athlete_id": 5,
  "value": 123.45,
  "unit": "m",
  "created_at": "2016-06-25T11:15:14.310Z",
  "updated_at": "2016-06-25T11:15:14.310Z"
}
```