These all artefacts are being tested on Azure K8S Cluster


----------------

kubectl port-forward service/elastic-cluster-es-http -n elastic-system 9200

PASSWORD=$(kubectl get secret elastic-cluster-es-elastic-user -o go-template='{{.data.elastic | base64decode}}' -n elastic-system)

curl -u "elastic:$PASSWORD" -k "https://localhost:9200"

curl -u "elastic:$PASSWORD" -k -X GET "https://localhost:9200/_cluster/health?wait_for_status=yellow&timeout=50s&pretty


------------

Removing cluster resources

kubectl get namespaces --no-headers -o custom-columns=:metadata.name | xargs -n1 kubectl delete elastic --all -n"

Removing ELK Operator

kubectl delete -f https://download.elastic.co/downloads/eck/1.1.0/all-in-one.yaml


-------------

kubectl create secret generic my-cert --from-file=ca.crt=tls.crt --from-file=tls.crt=tls.crt --from-file=tls.key=tls.key






