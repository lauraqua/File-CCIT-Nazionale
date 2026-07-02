# auto flag services caronte
curl -X PUT "http://localhost:3333/api/services" \
    -H "Content-Type: application/json" \
    -d '{"port":3000,"name":"CCforms1","color":"#e53935","notes":""}'

curl -X PUT "http://localhost:3333/api/services" \
    -H "Content-Type: application/json" \
    -d '{"port":3001,"name":"CCforms2","color":"#f4511e","notes":""}'

curl -X PUT "http://localhost:3333/api/services" \
    -H "Content-Type: application/json" \
    -d '{"port":2222,"name":"CookingNonna","color":"#8e24aa","notes":""}'

curl -X PUT "http://localhost:3333/api/services" \
    -H "Content-Type: application/json" \
    -d '{"port":8000,"name":"ExCCel1","color":"#43a047","notes":""}'

curl -X PUT "http://localhost:3333/api/services" \
    -H "Content-Type: application/json" \
    -d '{"port":8001,"name":"ExCCel2","color":"#7cb342","notes":""}'

curl -X PUT "http://localhost:3333/api/services" \
    -H "Content-Type: application/json" \
    -d '{"port":8080,"name":"CCalendar","color":"#3949ab","notes":""}'

#pkappa2
curl -X PUT \
    -H "Content-Type: application/x-www-form-urlencoded" \
    -d "sport:8081" \
    "http://localhost:8080/api/tags?name=service/servizio1&color=%2366ff79"