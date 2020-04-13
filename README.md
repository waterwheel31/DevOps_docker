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

- sudo apt-get update && sudo apt-get install -y apt-transport-https
- curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
- echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
- sudo apt-get update
- sudo apt-get install -y kubectl
- run `bash run_kubenetes.sh`

6. 


Reference
-https://docs.aws.amazon.com/eks/latest/userguide/getting-started-eksctl.html
-https://medium.com/faun/deploying-kubernetes-on-aws-aws-eks-and-exploring-load-balanced-containers-8e3798628102
-https://www.youtube.com/watch?time_continue=3&v=97n9vWV3VcU
-https://github.com/gashirar/eks-kubectl-settings-for-cloud9
-https://dev.classmethod.jp/articles/execute-aws-cli-with-iam-role-on-cloud9/