echo Eliminando servicios

kubectl delete -n bdovilla-namespace service redis-service

echo Eliminando deployment

kubectl delete -n bdovilla-namespace deployment redis-deployment

echo Eliminando reclamos de volumen

kubectl delete -n bdovilla-namespace persistentvolumeclaim pvc-redis-claim

echo Eliminando volumenpersistente

kubectl delete persistentvolume pv-redis-vol

echo Eliminando storageclass

kubectl delete storageclass redis

