## TOP 10 TODOLIST

GET /todolist/top

### Request Parameters

| name   | location | type   | required | decription                           |
| ------ | -------- | ------ | -------- | ------------------------------------ |
| userId | query    | string | yes      | users primary key to search todolist |
| offset | query    | string | no       | top N                                |

> success respone example

```json
{
  "success": true,
  "requestId": "61374387-004b-4df9-a4f5-0b97798c884b",
  "serverTime": 1734865396069,
  "code": 200,
  "msg": "ok",
  "data": [
    {
      "todolistId": 12,
      "title": "1212121212",
      "ownerId": 18,
      "score": 1.94,
      "permissions": "read",
      "dueDate": "2024-12-22T21:52:52"
    },
    {
      "todolistId": 2,
      "title": "22222",
      "ownerId": 18,
      "score": 1.94,
      "permissions": "read",
      "dueDate": "2024-12-22T21:52:52"
    },
    {
      "todolistId": 16,
      "title": "1616161616",
      "ownerId": 18,
      "score": 1.93,
      "permissions": "read",
      "dueDate": "2024-12-22T21:52:52"
    },
    {
      "todolistId": 11,
      "title": "1111111111",
      "ownerId": 18,
      "score": 1.92,
      "permissions": "read",
      "dueDate": "2024-12-22T21:52:52"
    },
    {
      "todolistId": 13,
      "title": "1313131313",
      "ownerId": 18,
      "score": 1.91,
      "permissions": "read",
      "dueDate": "2024-12-22T21:52:52"
    },
    {
      "todolistId": 1,
      "title": "11111",
      "ownerId": 18,
      "score": 1.85,
      "permissions": "read",
      "dueDate": "2024-12-22T21:52:52"
    },
    {
      "todolistId": 0,
      "title": "00000",
      "ownerId": 18,
      "score": 1.84,
      "permissions": "read",
      "dueDate": "2024-12-22T21:52:52"
    },
    {
      "todolistId": 3,
      "title": "33333",
      "ownerId": 18,
      "score": 1.74,
      "permissions": "read",
      "dueDate": "2024-12-22T21:52:52"
    },
    {
      "todolistId": 4,
      "title": "44444",
      "ownerId": 18,
      "score": 1.67,
      "permissions": "read",
      "dueDate": "2024-12-22T21:52:52"
    },
    {
      "todolistId": 14,
      "title": "1414141414",
      "ownerId": 18,
      "score": 1.61,
      "permissions": "read",
      "dueDate": "2024-12-22T21:52:52"
    }
  ]
}
```



### Responese Structure

http status **200**

| 名称          | 类型     | 必选 | 约束 |
| ------------- | -------- | ---- | ---- |
| » success     | boolean  | true | none |
| » requestId   | string   | true | none |
| » serverTime  | integer  | true | none |
| » code        | integer  | true | none |
| » msg         | string   | true | none |
| » data        | [object] | true | none |
| »» todolistId | integer  | true | none |
| »» title      | string   | true | none |
| »» ownerId    | integer  | true | none |

