---

### DEVELOPER EXPERIENCE (Selected files)

#### INSTALL.md

```markdown
# Installation Guide for GitDigital OpenCollective

This guide covers installation of the GitDigital OpenCollective tooling and development environment.

## Prerequisites

- **Node.js** 18.x or later
- **npm** 9.x or later (or yarn/pnpm)
- **Git** 2.30 or later
- **Docker** (optional, for containerized development)
- **Open Collective account** (for expense submission)

## Quick Install

### Using npm

```bash
# Clone the repository
git clone https://github.com/Gitdigital-products/opencollective.git
cd opencollective

# Install dependencies
npm install

# Copy environment variables
cp .env.example .env

# Run setup script
npm run setup
