## Deploy to dokku using pre-built images

```bash
docker build -t dokku/<app-name> --build-arg DATABASE_URL=<input-remote-URL> .
docker save dokku/<app-name> | ssh ubuntu@instance_ip "sudo docker load | sudo dokku tags:deploy <app-name> latest"
```

Use initial `git push dokku master`, then convert to deploy using image.

Ensure that SECRET_KEY_BASE, DATABASE_URL are set in `dokku config`
