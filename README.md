<h1>
<p align="center">
<a href="https://github.com/GnomeShift/Caddy-builder" target="_blank" rel="noopener noreferrer">Caddy-builder</a>
</p>
</h1>

[![Custom Caddy image build](https://github.com/GnomeShift/Caddy-builder/actions/workflows/build-caddy.yml/badge.svg)](https://github.com/GnomeShift/Caddy-builder/actions/workflows/build-caddy.yml)

# 🌐 Overview
Pipeline for custom [Caddy](https://caddyserver.com/)-alpine Docker images builds.

## 🌟 Features
- Latest Caddy version autodetect.
- Caddy modules support.
- Multi-arch (linux/amd64,arm64).
- Manual start via GitHub Actions.

## 🚀 Quick start
1. Add secret `DOCKERHUB_PASSWORD` and variable `DOCKERHUB_LOGIN` on the `Settings` -> `Secrets and variables` -> `Actions` tab.
2. Start pipeline via GitHub Actions.
3. Specify build params (optional):
   - Caddy modules to include (space-separated, default: `github.com/caddy-dns/cloudflare github.com/greenpau/caddy-security github.com/mholt/caddy-l4/layer4`).
   - Docker image name (default: caddy).
4. Click on `Run workflow` button.
5. Done! You can view build summary on the pipeline page.

## License
View it [here](https://github.com/GnomeShift/Caddy-builder/blob/master/LICENSE).
