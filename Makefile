v3_sns:
	npm run e2e:v3:sns

v3_kafka:
	npm run e2e:v3:kafka

v2_http:
	npm run e2e:v2:http


tutorial_send_message:
	mqtt pub -t 'light/measured' -h 'test.mosquitto.org' -m '{"id": 1, "lumens": 3, "sentAt": "2017-06-07T12:34:32.000Z"}'

tutorial_run:
	cd tutorial && npm run dev

tutorial_test_pact:
	cd tutorial && npm run test

tutorial_test_compare:
	npx ts-node src/compare.ts tutorial/asyncapi.yaml tutorial/pacts/Streetlights-subscriber-Streetlights-publisher.json