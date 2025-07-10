# Sample Workshop

```bash
# Install Educates CLI
cd /usr/local/bin
curl -o educates -sL https://github.com/educates/educates-training-platform/releases/latest/download/educates-linux-amd64
chmod +x educates

# Deploy workshop in docker
educates docker workshop deploy --host=0.0.0.0 --port=8080
```
