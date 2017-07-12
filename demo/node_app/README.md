# Instructions

Build:
```bash
docker build -t node_app .
```

Run:
```bash
docker run -d \
  --restart unless-stopped \
  -p 3000:3000 \
  --name my_node_app \
  node_app
```

Stop & cleanup:
```bash
docker stop my_node_app
docker rm my_node_app
```
