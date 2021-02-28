echo Eliminando servicios
kubectl delete -n bdovilla-namespace service service-mysql
kubectl delete -n bdovilla-namespace service service-postgresql
kubectl delete -n bdovilla-namespace service service-redis
kubectl delete -n bdovilla-namespace service service-mongo

echo Eliminando deployment
kubectl delete -n bdovilla-namespace deployment mongo-deployment
kubectl delete -n bdovilla-namespace deployment mysql-deployment
kubectl delete -n bdovilla-namespace deployment postgres-deployment
kubectl delete -n bdovilla-namespace deployment redis-deployment

echo Eliminando Configmap
kubectl delete -n bdovilla-namespace configmap mongo-configmap
kubectl delete -n bdovilla-namespace configmap mysql-configmap
kubectl delete -n bdovilla-namespace configmap redis-configmap
kubectl delete -n bdovilla-namespace configmap postgres-configmap

echo Eliminando reclamos de volumen
kubectl delete -n bdovilla-namespace persistentvolumeclaim pvc-mongo-claim
kubectl delete -n bdovilla-namespace persistentvolumeclaim pvc-mysql-claim
kubectl delete -n bdovilla-namespace persistentvolumeclaim pvc-postgresql-claim
kubectl delete -n bdovilla-namespace persistentvolumeclaim pvc-redis-claim

echo Eliminando volumenpersistente
kubectl delete persistentvolume pv-mysql-vol
kubectl delete persistentvolume pv-redis-vol
kubectl delete persistentvolume pv-mongo-vol
kubectl delete persistentvolume pv-postgresql-vol

echo Eliminando storageclass
kubectl delete storageclass mongo
kubectl delete storageclass mysql
kubectl delete storageclass redis
kubectl delete storageclass postgresql
