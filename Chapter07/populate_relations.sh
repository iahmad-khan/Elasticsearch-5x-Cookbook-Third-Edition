curl -XDELETE 'http://127.0.0.1:9200/test-index?pretty=true'
#curl  -H "Accept: application/json"   -H "X-HTTP-Method-Override: PUT" -XPUT 'http://127.0.0.1:9200/test-index/_mapping?pretty=true' -d  @mapping.json

curl  -XPUT 'http://127.0.0.1:9200/test-index?pretty=true' -d  @mapping.json

curl -XPUT 'http://127.0.0.1:9200/test-index/test-type2/_mapping?pretty=true' -d '{"test-type2": {"_parent": {"type": "test-type"}}}'
curl -XPUT 'http://127.0.0.1:9200/test-index/test-type/1?pretty=true' -d '{"position": 1, "parsedtext": "Joe Testere nice guy", "name": "Joe Tester", "uuid": "11111", "price":4.0, "versions":[{"color":"yellow", "size":5},{"color":"blue", "size":15}]}'
curl -XPUT 'http://127.0.0.1:9200/test-index/test-type2/1?parent=1&pretty=true' -d '{"name": "data1", "value": "value1", "amount":10}'
curl -XPUT 'http://127.0.0.1:9200/test-index/test-type/2?pretty=true' -d '{"position": 2, "parsedtext": "Bill Testere nice guy", "name": "Bill Baloney", "uuid": "22222", "price":5.0, "versions":[{"color":"red", "size":2},{"color":"blue", "size":10}]}'
curl -XPUT 'http://127.0.0.1:9200/test-index/test-type2/2?parent=2&pretty=true' -d '{"name": "data2", "value": "value2", "amount":20}'
curl -XPUT 'http://127.0.0.1:9200/test-index/test-type/3?pretty=true' -d '{"position": 3, "parsedtext": "Bill is not\n                nice guy", "name": "Bill Clinton", "uuid": "33333", "price":6.0, "versions":[{"color":"red", "size":2}]}'
curl -XPOST 'http://127.0.0.1:9200/test-index/_refresh?pretty=true'
curl -XGET 'http://127.0.0.1:9200/_cluster/health?wait_for_status=green&timeout=0s&pretty=true'


