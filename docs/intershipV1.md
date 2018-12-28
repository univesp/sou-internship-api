# Internship API::V1

Todas URIs são relativas à: *http://localhost:3001/api/v1* no ambiente de desenvolvimento.

### Autorização

Não é requerida autorização.

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

## End-points

HTTP requisição | Descrição | Exemplo
------------- | ------------- | -------------
**GET** /student/{id} | Exibe o estudante pelo id | *http://localhost:3001/api/v1/student/1*
**GET** /student/{id}/processes | Exibe os processos do estudante pelo id | *http://localhost:3001/api/v1/student*
**GET** /grantor | Exibe todos concedentes | *http://localhost:3001/api/v1/grantor*
**GET** /grantor/{id} | Exibe o concedente pelo id | *http://localhost:3001/api/v1/grantor/{id}*
**GET** /professor | Exibe todos professores | *http://localhost:3001/api/v1/professor*
**GET** /professor/{id} | Exibe os professores pelo id | *http://localhost:3001/api/v1/professor/{id}*
**GET** /responsible | Exibe todos responsáveis | *http://localhost:3001/api/v1/responsible*
**GET** /responsible/{id} | Exibe o responsável pelo id | *http://localhost:3001/api/v1/responsible/{id}*
**GET** /advisor | Exibe todos orientadores | *http://localhost:3001/api/v1/advisor*
**GET** /advisor/{id} | Exibe o orientador pelo id | *http://localhost:3001/api/v1/advisor*
**GET** /process | Exibe todos processos | *http://localhost:3001/api/v1/process*
**GET** /process/{id} | Exibe o processo pelo id | *http://localhost:3001/api/v1/process*
**GET** /organization | Exibe todos organizações | *http://localhost:3001/api/v1/organization*
**GET** /organization/{id} | Exibe a organização pelo id | *http://localhost:3001/api/v1/organization/{id}*
**POST** /organization | Cria organização | *http://localhost:3001/api/v1/organization*
**DELETE** /organization/{id} | Exclui a organização pelo id | *http://localhost:3001/api/v1/organization/{id}*
**PATCH** /organization/{id} | Atualiza organização pelo id | *http://localhost:3001/api/v1/organization/{id}*
**PUT** /organization/{id} | Atualiza organização pelo id | *http://localhost:3001/api/v1/organization/{id}*
**GET** /internship/process | Exibe todos organizações | *http://localhost:3001/api/v1/internship/process*
**GET** /internship/process/{id} | Exibe a organização pelo id | *http://localhost:3001/api/v1/internship/process/{id}*
**POST** /internship/process | Cria organização | *http://localhost:3001/api/v1/internship/process*
**DELETE** /internship/process/{id} | Exclui a organização pelo id | *http://localhost:3001/api/v1/internship/process/{id}*
**PATCH** /internship/process/{id} | Atualiza organização pelo id | *http://localhost:3001/api/v1/internship/process/{id}*
**PUT** /internship/process/{id} | Atualiza organização pelo id | *http://localhost:3001/api/v1/internship/process/{id}*

## Student

**GET** /student/{id}
---
Exibe o estudante

Exibe o estudante pelo seu id

### Parâmetros

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerido no PATH | *http://localhost:3001/api/v1/student/1*

### Status Code

**200** ```OK```

### Exemplo de resposta
```json
{
	"studentData": [
		{
			"id": 1,
			"firstName": "Alice",
			"lastName": "Pereira Rodrigues",
			"assumedName": "",
			"birthDate": "1989-01-06",
			"gender": "F",
			"countryBirth": "Brasil",
			"nationality": "Brasileira",
			"race": 0,
			"marital": 2,
			"bloodType": 2,
			"organDonor": true,
			"cellphone": "35992755126",
			"personalEmail": "alicepereirarodrigues@outlook.com",
			"professionalEmail": "alice.rodrigues@jourrapide.com",
			"documents": {
				"rg": {
					"number": "273044576",
					"issuer": "SSP"
				},
				"cpf": "17143053929",
				"electoralCard": "516485230175",
				"certificateReservist": ""
			},
			"parents": {
				"motherName": "Joana Pereira Rodrigues",
				"fatherName": "Jurandir Oliveira Rodrigues"
			},
			"address": {
				"street": "Rua da Vitória",
				"number": "66",
				"zip": "07600100",
				"district": "Anhangabau",
				"city": "São Paulo",
				"state": "SP"
			}
		}
	]
}
```
**404** ```Not Found```

**500** ```Erro interno no servidor```

**GET** /student/{id}/processes
---
Exibe os processos do estudante

Exibe os processos do estudante pelo seu id

### Parâmetros

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerido no PATH | *http://localhost:3001/api/v1/student/1/processes*

### Status Code

**200** ```OK```

### Exemplo de resposta
```json
{
	"processes": [
		{
			"id": 1,
			"type": 0,
			"status": 0,
			"created_at": "2018-12-17",
			"student_id": 1,
			"responsible_id": 1,
			"grantor_id": 1,
			"advisor_id": 1,
			"professor_id": 1,
			"moderator_name": "Marcos Ferreira Almeida"
	},
	{
			"id": 2,
			"type": 0,
			"status": 1,
			"created_at": "2018-12-20",
			"student_id": 1,
			"responsible_id": 1,
			"grantor_id": 1,
			"advisor_id": 1,
			"professor_id": 1,
			"moderator_name": "Tânia Cunha Castro"
		}
	]
}
```
**404** ```Not Found```

**500** ```Erro interno no servidor```

## Grantor

**GET** /grantor
---
Exibe os concedentes

Exibe os concedentes cadastrados na base

###  Status Code

**200** ```OK```

### Exemplo de resposta
```json
{
	"grantors": [
		{
			"id": 1,
			"name": "Universidade São Paulo",
			"cnpj": "63025530000104",
			"phone": [
				"1112344556",
				"1165566556"
			],
			"fax": "7122334456",
			"zip": "05508900",
			"street": "Rua da Praça do Relógio",
			"number": "109",
			"city": "São Paulo",
			"federatedState": "São Paulo"
		},
		{
			"id": 2,
			"name": "Universidade Federal da Bahia",
			"cnpj": "15180714000104",
			"phone": [
				"7122334456",
				"7165443322"
			],
			"fax": "7122334456",
			"zip": "40110909",
			"street": "Rua Augusto Viana",
			"number": "S/N",
			"city": "Salvador",
			"federatedState": "Bahia"
		},
		{
			"id": 3,
			"name": "Universidade de Mogi das Cruzes",
			"cnpj": "52562758000117",
			"phone": [
				"1165128021",
				"1112085611"
			],
			"fax": "7122334456",
			"zip": "08780911",
			"street": "Avenida Dr. Cândido Xavier de Almeida Souza",
			"number": "200",
			"city": "Mogi das Cruzes",
			"federatedState": "São Paulo"
		},
		{
			"id": 4,
			"name": "International Business Machines - IBM",
			"cnpj": "07127471000104",
			"phone": [
				"1199991111",
				"1111119999"
			],
			"fax": "7122334456",
			"zip": "04007900",
			"street": "Rua Tutóia",
			"number": "1157",
			"city": "São Paulo",
			"federatedState": "São Paulo"
		}
	]
}
```

**500** ```Erro interno no servidor```

**GET** /grantor/{id}
---
Exibe o concedente

Exibe o concedente cadastrado na base pelo id

### Parâmetros

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerido no PATH | *http://localhost:3001/api/v1/grantor/1*

###  Status Code

**200** ```OK```

### Exemplo de resposta
```json
{
	"grantor": [
		{
			"id": 1,
			"name": "Universidade São Paulo",
			"phone": [
				"1112344556",
				"1165566556"
			],
			"zip": "05508900",
			"street": "Rua da Praça do Relógio",
			"number": "109",
			"city": "São Paulo",
			"state": "São Paulo"
		}
	]
}
```
**404** ```Not Found```

**500** ```Erro interno no servidor```

## Professor

**GET** /professor
---
Exibe os professores

Exibe os professores cadastrados na base

###  Status Code

**200** ```OK```

### Exemplo de resposta
```json
{
	"professors": [
		{
			"id": 1,
			"name": "Alberto Silva",
			"phone": [
				"1112344556",
				"1165566556"
			],
			"email": "alberto.silva@univesp.br"
		},
		{
			"id": 2,
			"name": "José Alvarez Munhoz",
			"phone": [
				"7122334456",
				"7165443322"
			],
			"email": "jose.munhoz@univesp.br"
		},
		{
			"id": 3,
			"name": "Aline Ribeiro da Silva",
			"phone": [
				"1165128021",
				"1112085611"
			],
			"email": "aline.silva@univesp.br"
		},
		{
			"id": 4,
			"name": "Valentino Rossi",
			"phone": [
				"1199991111",
				"1111119999"
			],
			"email": "valentino.rossi@univesp.br"
		}
	]
}
```

**500** ```Erro interno no servidor```

**GET** /professor/{id}
---
Exibe o professor

Exibe o professor cadastrado na base pelo id

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerido no PATH | *http://localhost:3001/api/v1/professor/1*


###  Status Code

**200** ```OK```

### Exemplo de resposta
```json
{
	"professor": [
		{
			"id": 1,
			"name": "Alberto Silva",
			"phone": [
				"1112344556",
				"1165566556"
			],
			"email": "alberto.silva@univesp.br"
		}
	]
}
```

**404** ```Not Found```

**500** ```Erro interno no servidor```

## Responsible

**GET** /responsible
---
Exibe os responsáveis

Exibe os responsáveis cadastrados na base pelo id

###  Status Code

**200** ```OK```

### Exemplo de resposta
```json
{
	"responsibles": [
		{
			"id": 1,
			"name": "Mario Inacio da Fonseca",
			"phone": [
				"1112344556",
				"1165566556"
			],
			"email": "mario.fonseca@univesp.br"
		},
		{
			"id": 2,
			"name": "Marcos Soares Campos",
			"phone": [
				"7122334456",
				"7165443322"
			],
			"email": "marcos.campos@univesp.br"
		},
		{
			"id": 3,
			"name": "Antonio Bandeira Nunes",
			"phone": [
				"1165128021",
				"1112085611"
			],
			"email": "antonio.nunes@univesp.br"
		},
		{
			"id": 4,
			"name": "Jack Bauer",
			"phone": [
				"1199991111",
				"1111119999"
			],
			"email": "jack.bauer@univesp.br"
		}
	]
}
```

**500** ```Erro interno no servidor```

**GET** /responsible/{id}
---
Exibe o responsável

Exibe o responsável cadastrado na base pelo id

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerido no PATH | *http://localhost:3001/api/v1/responsible/1*


###  Status Code

**200** ```OK```

### Exemplo de resposta
```json
{
	"responsible": [
		{
			"id": 1,
			"name": "Mario Inacio da Fonseca",
			"phone": [
				"1112344556",
				"1165566556"
			],
			"email": "mario.fonseca@univesp.br"
		},
	]
}
```

**404** ```Not Found```

**500** ```Erro interno no servidor```

## Advisor

**GET** /advisor
---
Exibe os orientadores

Exibe os orientadores cadastrados na base

###  Status Code

**200** ```OK```

### Exemplo de resposta
```json
{
	"advisors": [
		{
			"id": 1,
			"name": "Alberto Silva",
			"phone": [
				"1112344556",
				"1165566556"
			],
			"email": "alberto.silva@univesp.br",
			"departament": "Engenharias"
		},
		{
			"id": 2,
			"name": "José Alvarez Munhoz",
			"phone": [
				"7122334456",
				"7165443322"
			],
			"email": "jose.munhoz@univesp.br",
			"departament": "Administração"
		},
		{
			"id": 3,
			"name": "Aline Ribeiro da Silva",
			"phone": [
				"1165128021",
				"1112085611"
			],
			"email": "aline.silva@univesp.br",
			"departament": "Centro de recursos compartilhados"
		},
		{
			"id": 4,
			"name": "Valentino Rossi",
			"phone": [
				"1199991111",
				"1111119999"
			],
			"email": "valentino.rossi@univesp.br",
			"departament": "Tecnologia da informação"
		}
	]
}
```

**500** ```Erro interno no servidor```

**GET** /advisor/{id}
---
Exibe o responsável

Exibe o responsável cadastrado na base pelo id

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerido no PATH | *http://localhost:3001/api/v1/advisor/1*

###  Status Code

**200** ```OK```

### Exemplo de resposta
```json
{
	"advisor": [
		{
			"id": 1,
			"name": "Alberto Silva",
			"phone": [
				"1112344556",
				"1165566556"
			],
			"email": "alberto.silva@univesp.br",
			"departament": "Engenharias"
		},
	]
}
```

**404** ```Not Found```

**500** ```Erro interno no servidor```

## Process

**GET** /process
---
Exibe os orientadores

Exibe os orientadores cadastrados na base

###  Status Code

**200** ```OK```

### Exemplo de resposta
```json
{
	"processes": [
		{
			"id": 1,
			"avatar": "",
			"name": "Mario Inacio da Fonseca",
			"course": "Engenharia da Computação",
			"startSem": "2019.1",
			"endSem": "2023.1",
			"grantorId": 1,
			"responsibleId": 1,
			"professorId": 1,
			"status": 0
		},
		{
			"id": 2,
			"name": "Marcos Soares Campos",
			"course": "Engenharia de Produção",
			"startSem": "2019.1",
			"endSem": "2023.1",
			"grantorId": 1,
			"responsibleId": 1,
			"professorId": 1,
			"status": 0
		},
		{
			"id": 3,
			"name": "Antonio Bandeira Nunes",
			"course": "Licenciatura em Física",
			"startSem": "2019.1",
			"endSem": "2023.1",
			"grantorId": 1,
			"responsibleId": 1,
			"professorId": 1,
			"status": 0
		},
		{
			"id": 4,
			"name": "Jack Bauer",
			"course": "Engenharia da Computação",
			"startSem": "2019.1",
			"endSem": "2023.1",
			"grantorId": 1,
			"responsibleId": 1,
			"professorId": 1,
			"status": 0
		}
	]
}
```

**500** ```Erro interno no servidor```

**GET** /process/{id}
---
Exibe o processo

Exibe o processo cadastrado na base pelo id

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerido no PATH | *http://localhost:3001/api/v1/process/1*

###  Status Code

**200** ```OK```

### Exemplo de resposta
```json
{
	"process": [
		{
			"id": 1,
			"avatar": "",
			"name": "Mario Inacio da Fonseca",
			"course": "Engenharia da Computação",
			"startSem": "2019.1",
			"endSem": "2023.1",
			"grantorId": 1,
			"responsibleId": 1,
			"professorId": 1,
			"status": 0
		}
	]
}
```

**404** ```Not Found```

**500** ```Erro interno no servidor```

## Organization

**GET** /organization
---
Exibe as organizações

Exibe as organizações cadastradas na base

###  Status Code

**200** ```OK```

### Exemplo de resposta
```json
{
	"data": [
		{
			"id": 11,
			"organization_type_id": 1,
			"document_number": "12345678910",
			"organization_name": "Dell",
			"phone1": "70707070770",
			"phone2": "56627070",
			"fax": null,
			"street": "Rua a do lado b",
			"street_number": 20,
			"city": "São Paulo",
			"state": "SP",
			"zipcode": "04312898",
			"created_at": "2018-12-27T11:42:04.000Z",
			"updated_at": "2018-12-27T11:42:04.000Z"
		},
		{
			"id": 10,
			"organization_type_id": 1,
			"document_number": "12345678910",
			"organization_name": "Dell",
			"phone1": "70707070770",
			"phone2": "56627070",
			"fax": "nutem",
			"street": "Rua a do lado b",
			"street_number": 20,
			"city": "São Paulo",
			"state": "SP",
			"zipcode": "04312898",
			"created_at": "2018-12-27T11:41:45.000Z",
			"updated_at": "2018-12-27T11:41:45.000Z"
		},
		{
			"id": 9,
			"organization_type_id": 1,
			"document_number": "12345678910",
			"organization_name": "Dell",
			"phone1": null,
			"phone2": null,
			"fax": null,
			"street": "Rua a do lado b",
			"street_number": 20,
			"city": "São Paulo",
			"state": "SP",
			"zipcode": "04312898",
			"created_at": "2018-12-27T11:40:53.000Z",
			"updated_at": "2018-12-27T11:40:53.000Z"
		},
		{
			"id": 8,
			"organization_type_id": 1,
			"document_number": "12345678910",
			"organization_name": "Dell",
			"phone1": null,
			"phone2": null,
			"fax": null,
			"street": "Rua a do lado b",
			"street_number": 20,
			"city": "São Paulo",
			"state": "SP",
			"zipcode": "04312898",
			"created_at": "2018-12-27T10:32:19.000Z",
			"updated_at": "2018-12-27T10:32:19.000Z"
		}
	]
}
```

**500** ```Erro interno no servidor```

**GET** /organization/{id}
---
Exibe a organização

Exibe a organização cadastrada na base pelo id

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerido no PATH | *http://localhost:3001/api/v1/organization/8*

###  Status Code

**200** ```OK```

### Exemplo de resposta
```json
{
	"data": [
		{
			"id": 8,
			"organization_type_id": 1,
			"document_number": "12345678910",
			"organization_name": "Dell",
			"phone1": null,
			"phone2": null,
			"fax": null,
			"street": "Rua a do lado b",
			"street_number": 20,
			"city": "São Paulo",
			"state": "SP",
			"zipcode": "04312898",
			"created_at": "2018-12-27T10:32:19.000Z",
			"updated_at": "2018-12-27T10:32:19.000Z"
		}
	]
}
```

**404** ```Not Found```

**500** ```Erro interno no servidor```

**POST** /organization
---
Cria a organização

Cria a organização na qual o estudante irá estagiar 

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerida no PATH | *http://localhost:3001/api/v1/organization*
  | **Json** | requerido no body | objeto json

### Status code
**200** ```OK```

### Body
```json
{
	"organization_type_id": 1,
	"document_number": "12345678910",
	"organization_name": "Dell",
	"phone1": 70707070770,
	"phone2": 56627070,
	"fax": null,
	"street": "Rua a do lado b",
	"street_number": 20,
	"city": "São Paulo",
	"state": "SP",
	"zipcode": "04312898"
}
```

### Exemplo de resposta
```json
{
	"data": {
		"id": 11,
		"organization_type_id": 1,
		"document_number": "12345678910",
		"organization_name": "Dell",
		"phone1": "70707070770",
		"phone2": "56627070",
		"fax": null,
		"street": "Rua a do lado b",
		"street_number": 20,
		"city": "São Paulo",
		"state": "SP",
		"zipcode": "04312898",
		"created_at": "2018-12-27T11:42:04.000Z",
		"updated_at": "2018-12-27T11:42:04.000Z"
	}
}
```
### Body

**422** ```Unprocessable Entity```
```json
{
	"document_number": "12345678910",
	"organization_name": "Dell",
	"phone1": 70707070770,
	"phone2": 56627070,
	"fax": null,
	"street": "Rua a do lado b",
	"street_number": 20,
	"city": "São Paulo",
	"state": "SP",
	"zipcode": "04312898"
}
```

### Exemplo de resposta
```json
{
	"data": {
		"organization_type": [
			"must exist"
		]
	}
}
```

**400** ```Bad Request```

**500** ```Erro interno no servidor```

**DELETE** /organization/{id}
---
Exclui a organização

Exclui a organização cadastrada na base pelo id

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerido no PATH | *http://localhost:3001/api/v1/organization/8*

###  Status Code

**200** ```OK```

### Exemplo de resposta
```json
{
	"data": [
		{
			"id": 8,
			"organization_type_id": 1,
			"document_number": "12345678910",
			"organization_name": "Dell",
			"phone1": null,
			"phone2": null,
			"fax": null,
			"street": "Rua a do lado b",
			"street_number": 20,
			"city": "São Paulo",
			"state": "SP",
			"zipcode": "04312898",
			"created_at": "2018-12-27T10:32:19.000Z",
			"updated_at": "2018-12-27T10:32:19.000Z"
		}
	]
}
```

**404** ```Not Found```

**500** ```Erro interno no servidor```

**PATCH** /organization/{id}
---
Atualiza a organização

Atualiza parcialmente dados da organização cadastrada na base pelo id

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerido no PATH | *http://localhost:3001/api/v1/organization/11*
 **atributo** | **Json** | requerido no body | "organization_name":"Astronauta"
###  Status Code

**200** ```OK```

### Exemplo de body
```json
{
  "organization_name": "Astronauta"
}
```

### Exemplo de resposta
```json
{
	"data": [
		{
			"id": 11,
			"organization_type_id": 1,
			"document_number": "12345678910",
			"organization_name": "Astronauta",
			"phone1": null,
			"phone2": null,
			"fax": null,
			"street": "Rua a do lado b",
			"street_number": 20,
			"city": "São Paulo",
			"state": "SP",
			"zipcode": "04312898",
			"created_at": "2018-12-27T10:32:19.000Z",
			"updated_at": "2018-12-27T10:32:19.000Z"
		}
	]
}
```

**400** ```Bad Request```

**422** ```Unprocessable Entity```

**404** ```Not Found```

**500** ```Erro interno no servidor```

**PUT** /organization/{id}
---
Atualiza a organização

Atualiza todos dados da organização cadastrada na base pelo id

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerido no PATH | *http://localhost:3001/api/v1/organization/11*
 **atributo** | **Json** | requerido no body | "organization_name":"Astronauta"
###  Status Code

**200** ```OK```

### Exemplo de body
```json
{
	"organization_type_id": 2,
	"document_number": "2314678198",
	"organization_name": "Bolinha",
	"phone1": "12349080",
	"phone2": null,
	"fax": null,
	"street": "Rua b do lado a",
	"street_number": 203,
	"city": "São Paulo",
	"state": "SP",
	"zipcode": "0000123"
}
```

### Exemplo de resposta
```json
{
	"data": [
		{
			"id": 11,
			"organization_type_id": 2,
			"document_number": "2314678198",
			"organization_name": "Bolinha",
			"phone1": "12349080",
			"phone2": null,
			"fax": null,
			"street": "Rua b do lado a",
			"street_number": 203,
			"city": "São Paulo",
			"state": "SP",
			"zipcode": "0000123",
			"created_at": "2018-12-27T10:32:19.000Z",
			"updated_at": "2018-12-27T10:32:19.000Z"
		}
	]
}
```
**400** ```Bad Request```

**422** ```Unprocessable Entity```

**404** ```Not Found```

**500** ```Erro interno no servidor```

## Internship Process

**GET** /internship/process
---
Exibe os processos de estágio

Exibe todos os processos de estágio cadastradas na base

###  Status Code

**200** ```OK```

### Exemplo de resposta
```json
{
	"processes": [
		{
			"id": 2,
			"student_id": 1,
			"user_id": 1,
			"organizations_id": 11,
			"internship_process_type_id": 1,
			"internship_responsible": "1",
			"phone1": null,
			"phone2": null,
			"email_internship_responsible": "teste@teste.com",
			"accept_terms": 1,
			"approved_hours": null,
			"status": 0,
			"created_at": "2018-12-28T15:58:15.000Z",
			"updated_at": "2018-12-28T15:58:15.000Z",
			"justification_rejection": null
		},
		{
			"id": 1,
			"student_id": 10,
			"user_id": 10,
			"organizations_id": 13,
			"internship_process_type_id": 1,
			"internship_responsible": "1",
			"phone1": "124244525",
			"phone2": null,
			"email_internship_responsible": "testei@teste.com",
			"accept_terms": 1,
			"approved_hours": 100,
			"status": 0,
			"created_at": "2018-12-28T13:42:06.000Z",
			"updated_at": "2018-12-28T16:12:03.000Z",
			"justification_rejection": null
		}
	]
}
```

**500** ```Erro interno no servidor```

**GET** /internship/process/{id}
---
Exibe o processo de estágio

Exibe o processo de estágio cadastrada na base pelo id

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerido no PATH | *http://localhost:3001/api/v1/internship/process/1*

###  Status Code

**200** ```OK```

### Exemplo de resposta
```json
{
	"process": {
		"id": 1,
		"student_id": 10,
		"user_id": 10,
		"organizations_id": 13,
		"internship_process_type_id": 1,
		"internship_responsible": "1",
		"phone1": "124244525",
		"phone2": null,
		"email_internship_responsible": "testei@teste.com",
		"accept_terms": 1,
		"approved_hours": 100,
		"status": 0,
		"created_at": "2018-12-28T13:42:06.000Z",
		"updated_at": "2018-12-28T16:12:03.000Z",
		"justification_rejection": null
	}
}
```

**404** ```Not Found```

**500** ```Erro interno no servidor```

**POST** /internship/process
---
Cria o processo de estágio

Cria o processo de estágio com base nas informações inputadas 

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerida no PATH | *http://localhost:3001/api/v1/internship/process*
  | **Json** | requerido no body | objeto json

### Status code
**200** ```OK```

### Body
```json
{
	"student_id":2,
	"user_id":2,
	"organizations_id":13,
	"internship_process_type_id":1,
	"internship_responsible":1,
	"phone1":"124244525",
	"phone2":"000000000",
	"email_internship_responsible":"testei@teste.com",
	"accept_terms":1,
	"justification_rejection": "Não possui documento tal"
}
```

### Exemplo de resposta
```json
{
	"process": {
		"id": 3,
		"student_id": 2,
		"user_id": 2,
		"organizations_id": 13,
		"internship_process_type_id": 1,
		"internship_responsible": "1",
		"phone1": "124244525",
		"phone2": "000000000",
		"email_internship_responsible": "testei@teste.com",
		"accept_terms": 1,
		"approved_hours": null,
		"status": 0,
		"created_at": "2018-12-28T16:27:56.000Z",
		"updated_at": "2018-12-28T16:27:56.000Z",
		"justification_rejection": "Não possui documento tal"
	}
}
```
### Body

**422** ```Unprocessable Entity```
```json
{
	"student_id":2,
	"user_id":2,
	"internship_responsible":1,
	"phone1":"124244525",
	"phone2":"000000000",
	"email_internship_responsible":"testei@teste.com",
	"accept_terms":1,
	"justification_rejection": "Não possui documento tal"
}
```

### Exemplo de resposta
```json
{
	"process": {
		"internship_process_type": [
			"must exist"
		]
	}
}
```

**400** ```Bad Request```

**500** ```Erro interno no servidor```

**DELETE** /internship/process/{id}
---
Exclui o processo de estágio

Exclui o processo de estágio cadastrada na base pelo id

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerido no PATH | *http://localhost:3001/api/v1/internship/process/3*

###  Status Code

**200** ```OK```

### Exemplo de resposta
```json
{
	"process": {
		"id": 3,
		"student_id": 2,
		"user_id": 2,
		"organizations_id": 13,
		"internship_process_type_id": 1,
		"internship_responsible": "1",
		"phone1": "124244525",
		"phone2": "000000000",
		"email_internship_responsible": "testei@teste.com",
		"accept_terms": 1,
		"approved_hours": null,
		"status": 0,
		"created_at": "2018-12-28T16:27:56.000Z",
		"updated_at": "2018-12-28T16:27:56.000Z",
		"justification_rejection": "Não possui documento tal"
	}
}
```

**404** ```Not Found```

**500** ```Erro interno no servidor```

**PATCH** /internship/process/{id}
---
Atualiza o processo de estágio

Atualiza parcialmente dados do processo de estágio cadastrada na base pelo id

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerido no PATH | *http://localhost:3001/api/v1/internship/process/2*
 **atributo** | **Json** | requerido no body | "organization_name":"Astronauta"
###  Status Code

**200** ```OK```

### Exemplo de body
```json
{
  "justification_rejection": "Não possui documento tal"
}
```

### Exemplo de resposta
```json
{
	"process": {
		"id": 2,
		"justification_rejection": "Não possui documento tal",
		"internship_process_type_id": 1,
		"student_id": 1,
		"user_id": 1,
		"organizations_id": 11,
		"internship_responsible": "1",
		"phone1": null,
		"phone2": null,
		"email_internship_responsible": "teste@teste.com",
		"accept_terms": 1,
		"approved_hours": null,
		"status": 0,
		"created_at": "2018-12-28T15:58:15.000Z",
		"updated_at": "2018-12-28T16:32:13.000Z"
	}
}
```

**400** ```Bad Request```

**422** ```Unprocessable Entity```

**404** ```Not Found```

**500** ```Erro interno no servidor```

**PUT** /internship/process/{id}
---
Atualiza o processo de estágio

Atualiza todos dados do processo de estágio cadastrada na base pelo id

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerido no PATH | *http://localhost:3001/api/v1/internship/process/11*
 **atributo** | **Json** | requerido no body | "organization_name":"Astronauta"
###  Status Code

**200** ```OK```

### Exemplo de body
```json
{
	"student_id":2,
	"user_id":2,
	"internship_responsible":1,
	"phone1":"124244525",
	"phone2":"000000000",
	"email_internship_responsible":"testei@teste.com",
	"accept_terms":1,
	"justification_rejection": "Não possui documento tal"
}
```

### Exemplo de resposta
```json
{
	"process": {
		"id": 2,
		"student_id": 2,
		"user_id": 2,
		"internship_responsible": "1",
		"phone1": "124244525",
		"phone2": "000000000",
		"email_internship_responsible": "testei@teste.com",
		"accept_terms": 1,
		"justification_rejection": "Não possui documento tal",
		"internship_process_type_id": 1,
		"organizations_id": 11,
		"approved_hours": null,
		"status": 0,
		"created_at": "2018-12-28T15:58:15.000Z",
		"updated_at": "2018-12-28T16:33:36.000Z"
	}
}
```
**400** ```Bad Request```

**422** ```Unprocessable Entity```

**404** ```Not Found```

**500** ```Erro interno no servidor```