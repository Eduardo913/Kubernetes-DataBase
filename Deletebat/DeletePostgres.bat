echo Eliminando servicios
kubectl delete -n bdovilla-namespace service service-postgres

echo Eliminando deployment
kubectl delete -n bdovilla-namespace deployment postgres-deployment

echo Eliminando reclamos de volumen
kubectl delete -n bdovilla-namespace persistentvolumeclaim pvc-postgres-claim

echo Eliminando volumenpersistente

kubectl delete persistentvolume pv-postgres-vol


echo Eliminando storageclass
kubectl delete storageclass postgres
