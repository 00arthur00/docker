
# 创建session
curl -X PUT -d '{"Name":"db-seaphore"}' http://127.0.0.1:8500/v1/session/create
# 返回
`{"ID":"78d3fe19-2dbf-4fee-2e99-3ff68cda49d1"}`

#curl -X PUT -d <body> http://localhost:8500/v1/kv/<prefix>/<session>?acquire=<session>
curl -X PUT -d uuid http://localhost:8500/v1/kv/semtestyyp/78d3fe19-2dbf-4fee-2e99-3ff68cda49d1?acquire=78d3fe19-2dbf-4fee-2e99-3ff68cda49d1
