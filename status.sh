echo "\n"
echo "----------------------------------------------------------------------------------"
echo "Custom res def"
echo "+++++++++++++++++++++"
kubectl get crd -o wide
echo "\n"
echo "----------------------------------------------------------------------------------"
echo "Elasticsearch Object"
echo "+++++++++++++++++++++"
kubectl get elasticsearch --all-namespaces
echo "\n"
echo "----------------------------------------------------------------------------------"
echo "StorageClass"
echo "+++++++++++++++++++++"
kubectl get StorageClass --all-namespaces
echo "\n"
echo "----------------------------------------------------------------------------------"
echo "StatefulSet"
echo "+++++++++++++++++++++"
kubectl get sts -o wide --all-namespaces
echo "\n"
echo "----------------------------------------------------------------------------------"
echo "PVC"
echo "+++++++++++++++++++++"
kubectl get pvc --all-namespaces
echo "\n"
echo "----------------------------------------------------------------------------------"
echo "PV"
echo "+++++++++++++++++++++"
kubectl get pv --all-namespaces
echo "\n"
echo "----------------------------------------------------------------------------------"
echo "PODS"
echo "+++++++++++++++++++++"
kubectl get pods -n elastic-system
echo "\n"
echo "----------------------------------------------------------------------------------"
echo "Service"
echo "++++++++++++++++++++++++++++++"
kubectl get service --all-namespaces
echo "----------------------------------------------------------------------------------"
echo "Secret"
echo "++++++++++++++++++++++++++++++"
kubectl get secret -n elastic-system
echo "\n"
echo "----------------------------------------------------------------------------------"
echo "\n"
kubectl get events -n elastic-system
echo "\n"
echo "----------------------------------------------------------------------------------"
