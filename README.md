# DevOps_docker
Repository used for docker project of Udacity Cloud DevOps Nanodegree.


## Steps 

1. Make the `Dockerfle`
2. Run container & make prediction and make log


The log of the prediction is as below

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

3. Update the Docker Image

- Go to ECR, and create a repository (if not exist)
- Retrieve an authentication token and authenticate the Docker client
- Paste and run the token on the command line to certificate
- run `bash upload_docker.sh`

4. Configure Kubernetes to run locally

- `minikube start`

5. Deploy the cluster online
- run `bash run_kubenetes.sh`

6. 
