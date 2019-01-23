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
**GET** /student/process/{id} | Exibe os processos do estudante pelo id | *http://localhost:3001/api/v1/student/process/{id}*
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
**GET** /internship/process | Exibe todos processos de estágio | *http://localhost:3001/api/v1/internship/process*
**GET** /internship/process/{id} | Exibe processo de estágio pelo id | *http://localhost:3001/api/v1/internship/process/{id}*
**POST** /internship/process | Cria processo de estágio | *http://localhost:3001/api/v1/internship/process*
**DELETE** /internship/process/{id} | Exclui processo de estágio pelo id | *http://localhost:3001/api/v1/internship/process/{id}*
**PATCH** /internship/process/{id} | Atualiza processo de estágio pelo id | *http://localhost:3001/api/v1/internship/process/{id}*
**PUT** /internship/process/{id} | Atualiza processo de estágio pelo id | *http://localhost:3001/api/v1/internship/process/{id}*
**GET** /internship/documents | Exibe todos os documentos de estágio | *http://localhost:3001/api/v1/internship/documents*
**GET** /internship/document/{id} | Exibe todos os documentos de estágio pelo id | *http://localhost:3001/api/v1/internship/document/{id}*
**POST** /internship/document | Cria processo de estágio | *http://localhost:3001/api/v1/internship/document*
**DELETE** /internship/document/{id} | Exclui processo de estágio pelo id | *http://localhost:3001/api/v1/internship/document/{id}*
**PATCH** /internship/document/{id} | Atualiza processo de estágio pelo id | *http://localhost:3001/api/v1/internship/document/{id}*
**PUT** /internship/document/{id} | Atualiza processo de estágio pelo id | *http://localhost:3001/api/v1/internship/document/{id}*
**GET** /internship/process/{id}/organization/document/| Exibe dados do processo, organização e documento de acordo com o id do processo| *http://localhost:3001/api/v1/internship/process/{id}/organization/document*
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
    "student": {
        "id": 65539,
        "course_class_id": 1515,
        "ethnicity_id": null,
        "marital_status_id": null,
        "countriy_id": null,
        "address_id": 130,
        "city_id": null,
        "name": "Emerson Martins",
        "last_name": null,
        "cpf": "8383187890",
        "academic_register": 1829070,
        "birth_date": "1972-08-16",
        "flag_on": 1,
        "blood_type": null,
        "organ_donor": null,
        "assumed_name": null,
        "gender": "M",
        "students_type": "regular",
        "current_status": "enrolled",
        "flag_pwd": 0,
        "flag_blindness": 0,
        "flag_vision_impairment": 0,
        "flag_deafness": 0,
        "flag_hearing": 0,
        "flag_physical_disability": 0,
        "flag_deafblindness": 0,
        "flag_multiple": 0,
        "flag_intellectual": 0,
        "flag_autism": 0,
        "flag_asperger": 0,
        "flag_rett": 0,
        "flag_childhood_disintegrative_disease": 0,
        "flag_giftedness": 0,
        "created_at": null,
        "updated_at": null,
        "deleted_at": null,
        "flag_ppi": 0,
        "id_legacy": 52045
    }
}
```
**404** ```Not Found```

**500** ```Erro interno no servidor```

**GET** /student/process/{id}
---
Exibe os processos do estudante

Exibe os processos do estudante pelo seu id

### Parâmetros

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerido no PATH | *http://localhost:3001/api/v1/student/process/1*

### Status Code

**200** ```OK```

### Exemplo de resposta
```json
{
    "process": {
        "id": 10,
        "student_id": 6,
        "user_id": 10,
        "organization_id": 16,
        "internship_process_type_id": 1,
        "internship_responsible": "1",
        "phone1": null,
        "phone2": null,
        "email_internship_responsible": null,
        "accept_terms": null,
        "approved_hours": null,
        "status": 0,
        "justification_rejection": null,
        "created_at": "2019-01-09T16:46:17.000Z",
        "updated_at": "2019-01-23T12:35:38.000Z"
    },
    "course": [
        {
            "id": 15,
            "name": "Pedagogia",
            "duration_semesters": "8",
            "course_type": "Undergraduation",
            "created_at": "2018-12-13T18:54:38.000Z",
            "updated_at": null,
            "deleted_at": null
        }
    ],
    "student": [
        {
            "id": 6,
            "course_class_id": 474,
            "countriy_id": 135,
            "address_id": 127,
            "city_id": 1,
            "name": "José do Picadinho Jr",
            "last_name": null,
            "cpf": "00000000000",
            "birth_date": "1988-08-25",
            "assumed_name": "Zé do Picadinho"
        }
    ],
    "address": [
        {
            "id": 127,
            "city_id": null,
            "neighborhood": "CENTRO",
            "street": "rua espirito santo",
            "street_number": "5",
            "street_type": null,
            "zipcode": "18700-060",
            "street_complement": "casa",
            "state": "SP",
            "created_at": null,
            "updated_at": null,
            "deleted_at": null
        }
    ],
    "identity": [
        {
            "id": 7793,
            "issuing_entity_id": 1,
            "number": "125.023.781-X"
        }
    ],
    "identityEmissor": [
        {
            "id": 1,
            "name": "SSP - Secretaria de Segurança Pública"
        }
    ],
    "mother": [
        {
            "id": 1,
            "name": "Maria Caçarola"
        }
    ],
    "father": [
        {
            "id": 73727,
            "name": "José do Picadinho"
        }
    ],
    "country": [
        {
            "id": 135,
            "portuguese_name": "Brasil"
        }
    ],
    "city": [
        {
            "id": 1,
            "name": "São Paulo"
        }
    ],
    "telephone": [
        {
            "id": 1,
            "ddd": "11",
            "telephones": "912345678"
        }
    ],
    "email": [
        {
            "id": 1,
            "email": "teste@teste.com"
        }
    ],
    "organization": [
        {
            "id": 16,
            "organization_type_id": 1,
            "document_number": "12345678901231",
            "organization_name": "Teste",
            "phone1": "12345677890",
            "phone2": "",
            "fax": "",
            "street": "Rua Ituacu",
            "street_number": 22,
            "city": "São Paulo",
            "state": "SP",
            "zipcode": "08110110",
            "created_at": "2019-01-08T16:04:21.000Z",
            "updated_at": "2019-01-08T16:04:21.000Z"
        }
    ],
    "document": [
        {
            "id": 7,
            "internship_process_id": 10,
            "document_type_id": 2,
            "attachment": "data:application/pdf;base64,JVBERi0xLjMNCiXi48/TDQoNCjEgMCBvYmoNCjw8DQovVHlwZSAvQ2F0YWxvZw0KL091dGxpbmVzIDIgMCBSDQovUGFnZXMg",
            "created_at": "2019-01-09T17:36:39.000Z",
            "updated_at": "2019-01-09T17:36:39.000Z"
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
			"organization_id": 11,
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
			"organization_id": 13,
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
		"organization_id": 13,
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
	"organization_id":13,
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
		"organization_id": 13,
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
		"organization_id": 13,
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
 **atributo** | **Json** | requerido no body | "internship_responsible":1
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
		"organization_id": 11,
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
 **atributo** | **Json** | requerido no body | "internship_responsible":1
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
		"organization_id": 11,
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

**GET** /internship/process/student/{student_id}
---
Exibe os processos de estágio do aluno

Exibe todos os processos de estágio do aluno cadastrados na base

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **student_id** | **Integer** | requerido no PATH | *http://localhost:3001/api/v1/internship/process/student/10*

###  Status Code

**200** ```OK```

### Exemplo de resposta
```json
{
    "process": [
        {
            "id": 1,
            "student_id": 10,
            "user_id": 10,
            "organization_id": 13,
            "internship_process_type_id": 1,
            "internship_responsible": "1",
            "phone1": "124244525",
            "phone2": null,
            "email_internship_responsible": "testei@teste.com",
            "accept_terms": 1,
            "approved_hours": 100,
            "status": 0,
            "justification_rejection": null,
            "created_at": "2018-12-28T13:42:06.000Z",
            "updated_at": "2018-12-28T16:12:03.000Z"
        },
        {
            "id": 4,
            "student_id": 10,
            "user_id": 2,
            "organization_id": 9,
            "internship_process_type_id": 1,
            "internship_responsible": "1",
            "phone1": "124244525",
            "phone2": "000000000",
            "email_internship_responsible": "testei@teste.com",
            "accept_terms": 1,
            "approved_hours": null,
            "status": 0,
            "justification_rejection": "Não possui documento tal",
            "created_at": "2019-01-08T11:40:26.000Z",
			"updated_at": "2019-01-08T11:40:26.000Z"
		}
	]
}
```

**500** ```Erro interno no servidor```

**GET** /internship/process/{id}/organization/document
---
Exibe dados do processo, organização e documento de acordo com o id do processo

Exibe todos dados dos processos, organizações e documentos de acordo com o id do processo cadastrado na base

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerido no PATH | *http://localhost:3001/api/v1/internship/process/10/organization/document*

###  Status Code

**200** ```OK```

### Exemplo de resposta
```json
{
    "process": {
        "id": 15,
        "student_id": 10,
        "user_id": 10,
        "organization_id": 16,
        "internship_process_type_id": 1,
        "internship_responsible": "1",
        "phone1": null,
        "phone2": null,
        "email_internship_responsible": null,
        "accept_terms": null,
        "approved_hours": null,
        "status": 0,
        "justification_rejection": null,
        "created_at": "2019-01-09T17:36:31.000Z",
        "updated_at": "2019-01-09T17:36:31.000Z"
    },
    "organization": [
        {
            "id": 16,
            "organization_type_id": 1,
            "document_number": "12345678901231",
            "organization_name": "Teste",
            "phone1": "12345677890",
            "phone2": "",
            "fax": "",
            "street": "Rua Ituacu",
            "street_number": 22,
            "city": "São Paulo",
            "state": "SP",
            "zipcode": "08110110",
            "created_at": "2019-01-08T16:04:21.000Z",
            "updated_at": "2019-01-08T16:04:21.000Z"
        }
    ],
    "document": [
        {
            "id": 7,
            "internship_process_id": 15,
            "document_type_id": 2,
            "attachment": "data:application/pdf;base64,JVBERi0xLjMNCiXi48/TDQoNCjEgMCBvYmoN",
            "created_at": "2019-01-09T17:36:39.000Z",
            "updated_at": "2019-01-09T17:36:39.000Z"
        }
    ]
}
```

**400** ```Not found```

**500** ```Erro interno no servidor```

**GET** /internship/process/info/{idStudent}
---
Exibe dados do processo, organização e documento de acordo com o id do processo

Exibe todos dados dos processos, organizações e documentos de acordo com o id do processo cadastrado na base

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerido no PATH | *http://localhost:3001/api/v1/internship/process/info/1*

###  Status Code

**200** ```OK```

### Exemplo de resposta
```json
{
    "process": {
        "id": 15,
        "student_id": 10,
        "user_id": 10,
        "organization_id": 16,
        "internship_process_type_id": 1,
        "internship_responsible": "1",
        "phone1": null,
        "phone2": null,
        "email_internship_responsible": null,
        "accept_terms": null,
        "approved_hours": null,
        "status": 0,
        "justification_rejection": null,
        "created_at": "2019-01-09T17:36:31.000Z",
        "updated_at": "2019-01-09T17:36:31.000Z"
    },
    "organization": [
        {
            "id": 16,
            "organization_type_id": 1,
            "document_number": "12345678901231",
            "organization_name": "Teste",
            "phone1": "12345677890",
            "phone2": "",
            "fax": "",
            "street": "Rua Ituacu",
            "street_number": 22,
            "city": "São Paulo",
            "state": "SP",
            "zipcode": "08110110",
            "created_at": "2019-01-08T16:04:21.000Z",
            "updated_at": "2019-01-08T16:04:21.000Z"
        }
    ],
    "document": [
        {
            "id": 7,
            "internship_process_id": 15,
            "document_type_id": 2,
            "attachment": "data:application/pdf;base64,JVBERi0xLjMNCiXi48/TDQoNCjEgMCBvYmoN",
            "created_at": "2019-01-09T17:36:39.000Z",
            "updated_at": "2019-01-09T17:36:39.000Z"
        }
    ]
}
```

**400** ```Not found```

**500** ```Erro interno no servidor```

## Internship document

**GET** /internship/documents
---
Exibe os documentos de estágio

Exibe todos os documentos de estágio cadastradas na base

**GET** /internship/document/{id}
---
Exibe o documento de estágio

Exibe o documento de estágio cadastrada na base pelo id

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerido no PATH | *http://localhost:3001/api/v1/internship/document/1*

###  Status Code

**200** ```OK```

### Exemplo de resposta
```json
{
  "document": {
      "id": 1,
      "internship_process_id": 1,
      "document_type_id": 1,
      "attachment": "1823981u3j1o2jo21knm3o12m30o21m31o230987210391203981023l",
      "created_at": "2019-01-04T16:15:16.000Z",
      "updated_at": "2019-01-04T16:15:16.000Z"
  }
}
```

**404** ```Not Found```

**500** ```Erro interno no servidor```

**POST** /internship/document
---
Cria o documento(s) de estágio

Cria o documento(s) de estágio com base nas informações inputadas 

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerida no PATH | *http://localhost:3001/api/v1/internship/document*
  | **Json** | requerido no body | objeto json


### Status code
**200** ```OK```

### Body
```json
{
    "internship_process_id": 2,
    "document_type_id": 2,
    "attachment": "ExemploExemploExemploExemploExemploExemploExemploExemplo"
}
```

### Exemplo de resposta
```json
{
  "document": {
      "id": 6,
      "internship_process_id": 2,
      "document_type_id": 2,
      "attachment": "ExemploExemploExemploExemploExemploExemploExemploExemplo",
      "created_at": "2019-01-08T12:29:29.000Z",
      "updated_at": "2019-01-08T12:29:29.000Z"
  }
}
```

**422** ```Unprocessable Entity```

### Exemplo de Body

```json
{
    "internship_process_id": 2,
    "document_type_id": 100,
    "attachment": "ExemploExemploExemploExemploExemploExemploExemploExemplo"
}
```

### Exemplo de resposta
```json
{
  "document": {
    "document_type": [
        "must exist"
    ]
  }
}
```

**400** ```Bad Request```

**500** ```Erro interno no servidor```

**DELETE** /internship/document/{id}
---
Exclui o documento do estágio

Exclui o documento do estágio cadastrada na base pelo id

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerido no PATH | *http://localhost:3001/api/v1/internship/document/6*

###  Status Code

**200** ```OK```

### Exemplo de resposta
```json
{
  "document": {
    "id": 6,
    "internship_process_id": 2,
    "document_type_id": 2,
    "attachment": "ExemploExemploExemploExemploExemploExemploExemploExemplo",
    "created_at": "2019-01-08T12:29:29.000Z",
    "updated_at": "2019-01-08T12:29:29.000Z"
  }
}
```

**404** ```Not Found```

**500** ```Erro interno no servidor```

**PATCH** /internship/document/{id}
---
Atualiza o documento de estágio

Atualiza parcialmente dados do documento de estágio cadastrada na base pelo id

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerido no PATH | *http://localhost:3001/api/v1/internship/document/2*
 **atributo** | **Json** | requerido no body | "attachment": "tytytytytytytytytytytytyt"
###  Status Code

**200** ```OK```

### Exemplo de body
```json
{
    "attachment": "tytytytytytytytytytytytyt"
}
```

### Exemplo de resposta
```json
{
  "document": {
    "id": 2,
    "attachment": "tytytytytytytytytytytytyt",
    "internship_process_id": 2,
    "document_type_id": 2,
    "created_at": "2019-01-04T16:56:52.000Z",
    "updated_at": "2019-01-08T12:42:22.000Z"
  }
}
```

**400** ```Bad Request```

**422** ```Unprocessable Entity```

**404** ```Not Found```

**500** ```Erro interno no servidor```

**PUT** /internship/document/{id}
---
Atualiza o documento de estágio

Atualiza todos dados do documento de estágio cadastrada na base pelo id

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerido no PATH | *http://localhost:3001/api/v1/internship/document/5*
 **atributo** | **Json** | requerido no body |
###  Status Code

**200** ```OK```

### Exemplo de body
```json
{
    "internship_process_id": 2,
    "document_type_id": 1,
    "attachment": "xxxxxxxxxxxxxxxxxxxx"
}
```

### Exemplo de resposta
```json
{
  "document": {
    "id": 5,
    "internship_process_id": 2,
    "document_type_id": 1,
    "attachment": "xxxxxxxxxxxxxxxxxxxx",
    "created_at": "2019-01-05T19:35:32.000Z",
    "updated_at": "2019-01-08T12:49:40.000Z"
  }
}
```
**400** ```Bad Request```

**422** ```Unprocessable Entity```

**404** ```Not Found```

**500** ```Erro interno no servidor```