echo Eliminando servicios
kubectl delete -n bdovilla-namespace service service-mysql

echo Eliminando deployment
kubectl delete -n bdovilla-namespace deployment mysql-deployment

echo Eliminando reclamos de volumen
kubectl delete -n bdovilla-namespace persistentvolumeclaim pvc-mysql-claim

echo Eliminando volumenpersistente

kubectl delete persistentvolume pv-mysql-vol


echo Eliminando storageclass
kubectl delete storageclass mysql
