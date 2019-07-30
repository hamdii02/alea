
 curl -X POST http://localhost:8083/connectors -H "Content-Type: application/json" -d '{
        "name": "'test$id'",
        "config": {
                "connector.class": "io.confluent.connect.jdbc.JdbcSourceConnector",
                "connection.url": "jdbc:mysql://db4free.net:3306/dataera_seg",
                "connection.user": "dataera",
                "connection.password": "password",
                "topic.prefix": "'test$id-'",
		"errors.tolerance": "all",
		"errors.log.enable":true,
		"errors.log.include.messages":true ,
		"value.converter": "org.apache.kafka.connect.json.JsonConverter" ,
		"mode": "timestamp" ,
		"timestamp.column.name": "update_ts" ,
		"validate.non.null":false
                }
        }'
