# BlitzImageModifier

A tool for building and customizing Raspberry Pi images for Blitz Bitcoin/Lightning node deployments.

## Overview

BlitzImageMidifier automates the process of creating custom Raspberry Pi OS images with pre-installed dependencies and configurations required for Blitz node deployments. The project uses GitHub Actions to build optimized images for various Raspberry Pi models.

## Features

- Automated image building for Raspberry Pi devices
- Pre-configured with necessary dependencies
- Version tracking integrated into built images
- CI/CD pipeline for automated builds
- Support for Raspberry Pi 5 (with extensibility for other models)

## Build Process

The project uses GitHub Actions to automatically build Raspberry Pi images when code is pushed to the repository. The build process:

1. Checks out the repository code
2. Fetches git tags for versioning
3. Uses ARM runner to build on Raspberry Pi hardware
4. Runs platform-specific installation scripts
5. Installs dependencies
6. Creates version metadata
7. Compresses the final image for distribution

## Current Build Targets

- **Raspberry Pi 5**: Built using Raspbian OS Lite ARM64 (Bookworm)

## Requirements

- GitHub Actions (for automated builds)
- Raspberry Pi hardware (for ARM runner)
- Sufficient disk space for image creation and compression

## Usage

### Automated Builds

Images are automatically built via GitHub Actions on every push to the repository. Built images are available as artifacts in the Actions tab.

### Local Development

To build images locally, you'll need to:

1. Set up a Raspberry Pi environment
2. Run the installation scripts:
   ```bash
   chmod +x scripts/install/raspi5.sh
   ./scripts/install/raspi5.sh
   ./scripts/install_deps.sh
   ```

## Version Tracking

Each built image includes version information stored at `/opt/blitz/image-version`, which contains the git ref name and build target name.

## Project Structure

```
BlitzImageMidifier/
├── .github/
│   └── workflows/
│       └── main.yml          # CI/CD build pipeline
├── scripts/
│   ├── install/
│   │   └── raspi5.sh         # Raspberry Pi 5 installation script
│   └── install_deps.sh       # Dependency installation script
└── README.md
```

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request
