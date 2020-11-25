kubectl create namespace ibp-prod
kubectl create secret docker-registry docker-key-secret --docker-server=cp.icr.io --docker-username=cp --docker-password=eyJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJJQk0gTWFya2V0cGxhY2UiLCJpYXQiOjE1OTQ3NTI4MDIsImp0aSI6IjFhMGEzMTlhMWE0NTQ4NWJiNDRjNTFjODg1ZDgzYzI2In0.SbHI68wmcD1BUmGPG7AceVFX2EfAjCK3IireyTfn6Wo --docker-email=rsebeirn@br.ibm.com -n ibp-prod
kubectl apply -f yaml/ibp-psp.yaml -n ibp-prod
kubectl apply -f yaml/ibp-clusterrole.yaml -n ibp-prod
kubectl apply -f yaml/ibp-clusterrolebinding.yaml -n ibp-prod
kubectl -n ibp-prod create rolebinding ibp-operator-rolebinding --clusterrole=ibp-prod --group=system:serviceaccounts:ibp-prod
kubectl apply -f yaml/ibp-operator.yaml -n ibp-prod
kubectl apply -f yaml/ibp-console.yaml -n ibp-prod
