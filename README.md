# DevOps_docker
Repository used for docker project of Udacity Cloud DevOps Nanodegree.


[![CircleCI](https://circleci.com/gh/waterwheel31/DevOps_docker.svg?style=svg)](https://circleci.com/gh/waterwheel31/DevOps_docker)

## Steps 

1. Make the `Dockerfle`
2. Run container & make prediction and make log


The log of the prediction is as below

```
<docker_out.txt>

[2020-04-12 11:33:06,257] INFO in app: JSON payload: 
{'CHAS': {'0': 0}, 'RM': {'0': 6.575}, 'TAX': {'0': 296.0}, 'PTRATIO': {'0': 15.3}, 'B': {'0': 396.9}, 'LSTAT': {'0': 4.98}}
[2020-04-12 11:33:06,267] INFO in app: Inference payload DataFrame: 
   CHAS     RM    TAX  PTRATIO      B  LSTAT
0     0  6.575  296.0     15.3  396.9   4.98
[2020-04-12 11:33:06,275] INFO in app: Scaling Payload: 
   CHAS     RM    TAX  PTRATIO      B  LSTAT
0     0  6.575  296.0     15.3  396.9   4.98
[2020-04-12 11:33:06,278] INFO in app: Output prediction: [20.35373177134412]
172.17.0.1 - - [12/Apr/2020 11:33:06] "POST /predict HTTP/1.1" 200 -
```

3. Update the Docker Image

   - Go to ECR, and create a repository (if not exist)
   - Retrieve an authentication token and authenticate the Docker client  `aws ecr get-login --no-include-email --region
 us-east-1`
   - Paste and run the token on the command line to certificate (long token, copy and paste)
   - run `bash upload_docker.sh`

4. Configure Kubernetes to run locally
   - Setup minikube
      -  install from here https://kubernetes.io/docs/tasks/tools/install-minikube/
      - `minikube start` (for Windows10, not on bash, but on PowerShell)
      - `minikube stop` 
   - To check: `kubectl config view` 

5. Deploy the cluster online

   - Setup kubectl 
      - sudo apt-get update && sudo apt-get install -y apt-transport-https
      - curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
      - echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
      - sudo apt-get update
      - sudo apt-get install -y kubectl
   - Run `bash run_kubenetes.sh` to run kubernetes cluster (this may take several minutes)

6. Make prediction
   - Run `make_prediciton.sh` on another terminal. Results are following

```
<kubernetes_out.txt>
NAME                            READY   STATUS    RESTARTS   AGE
udacity-kube7-8fc55f594-8b792   1/1     Running   0          4m51s
step4
Forwarding from 127.0.0.1:8000 -> 80
Forwarding from [::1]:8000 -> 80
Handling connection for 8000
JSON payload:
{'CHAS': {'0': 0}, 'RM': {'0': 6.575}, 'TAX': {'0': 296.0}, 'PTRATIO': {'0': 15.3}, 'B': {'0': 15.3}, 'B': {'0': 396.9}, 'LSTAT': {'0': 4.98}}
[20.35373177134412]
``` 


