scripts/setup.sh

```bash
#!/bin/bash

# Open Collective Implementation Setup Script

set -e

echo "🚀 Setting up Open Collective Implementation..."

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo -e "${RED}❌ Node.js is not installed. Please install Node.js v16 or higher.${NC}"
    exit 1
fi

# Check Node.js version
NODE_VERSION=$(node -v | cut -d'v' -f2 | cut -d'.' -f1)
if [ "$NODE_VERSION" -lt 16 ]; then
    echo -e "${RED}❌ Node.js version must be 16 or higher. Current version: $(node -v)${NC}"
    exit 1
fi

echo -e "${GREEN}✓ Node.js version: $(node -v)${NC}"

# Create necessary directories
echo "📁 Creating directories..."
mkdir -p logs
mkdir -p data
mkdir -p backups

# Create .env file if it doesn't exist
if [ ! -f .env ]; then
    echo "🔧 Creating .env file..."
    cat > .env << EOL
# Open Collective API Configuration
OPENCOLLECTIVE_API_KEY=your_api_key_here
OPENCOLLECTIVE_API_URL=https://api.opencollective.com/v2

# Application Configuration
NODE_ENV=development
PORT=3000

# Database (if applicable)
DATABASE_URL=

# Security
JWT_SECRET=your_jwt_secret_here
WEBHOOK_SECRET=your_webhook_secret_here

# Email Configuration
SMTP_HOST=
SMTP_PORT=587
SMTP_USER=
SMTP_PASS=
EOL
    echo -e "${YELLOW}⚠️  Please update the .env file with your actual configuration values.${NC}"
fi

# Set permissions
chmod +x scripts/*.sh

echo -e "${GREEN}✓ Setup complete!${NC}"
echo ""
echo "Next steps:"
echo "1. Update the .env file with your configuration"
echo "2. Run './scripts/install.sh' to install dependencies"
echo "3. Start the application with 'npm run dev'"
```
