curl -H "Content-Type: application/json" -X POST http://127.0.0.1:9200/_analyze  -d '{  
    "analyzer": "ik_max_word",
    "text": "世界如此之大"  
}'

curl -H "Content-Type: application/json" -X POST http://127.0.0.1:9200/_analyze  -d '{  
    "analyzer": "ik_max_word",
    "text": "hello,world 世界如此之大"  
}'


curl -H "Content-Type: application/json" -X POST http://127.0.0.1:9200/_analyze  -d '{  
    "text": "世界如此之大"  
}'

curl -H "Content-Type: application/json" -X PUT 'localhost:9200/accounts/person/1' -d '
{
    "user" : "张三",
    "title" : "工程师",
    "desc" : "数据库管理，软件开发"
}' 

curl -H "Content-Type: application/json" -X PUT 'localhost:9200/accounts/person/1' -d '
{
    "user" : "张三",
    "title" : "工程师",
    "desc" : "世界如此之大"
}' 

curl  -H "Content-Type: application/json" 'localhost:9200/accounts/person/_search'  -d '
{
  "query" : { "match" : { "desc" : "如此" }}
}'