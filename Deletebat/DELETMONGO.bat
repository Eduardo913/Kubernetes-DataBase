echo Eliminando servicios
kubectl delete -n bdovilla-namespace service service-mongo

echo Eliminando deployment
kubectl delete -n bdovilla-namespace deployment mongo-deployment

echo Eliminando reclamos de volumen
kubectl delete -n bdovilla-namespace persistentvolumeclaim pvc-mongo-claim

echo Eliminando volumenpersistente
kubectl delete persistentvolume pv-mongo-vol

echo Eliminando storageclass
kubectl delete storageclass mongo

echo Eliminando Configmap
kubectl delete -n bdovilla-namespace configmap mongo-configmap

