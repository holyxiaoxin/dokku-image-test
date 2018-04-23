## Deploy to dokku using pre-built images

```bash
docker build -t dokku/<app-name> --build-arg DATABASE_URL=<input-remote-URL> .
docker save dokku/<app-name> | ssh ubuntu@instance_ip "sudo docker load | sudo dokku tags:deploy <app-name> latest"
```

Use initial `git push dokku master`, then convert to deploy using image.

Ensure that SECRET_KEY_BASE, DATABASE_URL are set in `dokku config`


## ECR

#### Pre-requisites
https://github.com/awslabs/amazon-ecr-credential-helper

```bash
docker build -t <temp_tag> --build-arg DATABASE_URL=<input-remote-URL> .
docker tag <temp_tag>:latest <ecr_repo>/<temp_tag>:latest
docker push <ecr_repo>/<temp_tag>:latest
ssh ubuntu@instance_ip "sudo docker pull <ecr_repo>/<temp_tag>:latest && sudo docker tag <ecr_repo>/<temp_tag>:latest dokku/<app-name> && sudo dokku tags:deploy <app-name> latest"
```
