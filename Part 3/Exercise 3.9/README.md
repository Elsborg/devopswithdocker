# Backend-Multi Docker Setup

This Dockerfile builds a lightweight Go application Docker image using multi-stage build, resulting in a minimal container.

## Dockerfile Explanation

- **Build Stage:** Compiles the Go application, sets environment variables, and creates a non-root user.
- **Final Stage:** Uses `scratch` for a minimal final image, copies necessary files, sets permissions, exposes port 8080, and runs the application as `appuser`.

## Build and Run

```sh
docker build -t backend-multi .
docker run -p 8080:8080 backend-multi
```
