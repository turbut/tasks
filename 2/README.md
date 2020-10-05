# Just a draft....

# Task
Deploy any two applications on Kubernetes. You can choose any applications you want.
Only requirements: 
-	Use helm-charts 
-	Use charts/ directory for one of app (# a directory containing any charts upon which this chart depends)
-	Use self signed certificate
-	Create documentation (Readme.MD)

# Descritpion
Sample application deployment to kubernetes using helm.  
Mongo DB and Mongo Express would be deployed each ot it with it's own service.  
Mongo Express is public facing over 3000 while communication with DB is internal through port 27017

# Prerequsities

1. Kubernetes cluster already configured on CP or minikube
2. kubectl
3. helm cli v3

# Usage 
```
helm install mongodb .
helm install mongo .
```

# TODO:
1. Extract global values
2. Handle dependencies and deployment order between apps
3. Bootstrap self-signed certificate
4. Store DB credentials in secret management solution.