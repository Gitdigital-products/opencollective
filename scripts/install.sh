scripts/install.sh

```bash
#!/bin/bash

# Open Collective Implementation Install Script

set -e

echo "📦 Installing Open Collective Implementation..."

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Detect package manager
if command -v yarn &> /dev/null; then
    PKG_MANAGER="yarn"
    INSTALL_CMD="yarn install"
elif command -v npm &> /dev/null; then
    PKG_MANAGER="npm"
    INSTALL_CMD="npm install"
else
    echo -e "${RED}❌ Neither npm nor yarn found. Please install Node.js properly.${NC}"
    exit 1
fi

echo -e "${BLUE}Using package manager: $PKG_MANAGER${NC}"

# Install dependencies
echo "⬇️  Installing dependencies..."
$INSTALL_CMD

# Run post-install checks
echo "🔍 Running post-install checks..."

# Check if node_modules exists
if [ ! -d "node_modules" ]; then
    echo -e "${RED}❌ node_modules directory not found. Installation may have failed.${NC}"
    exit 1
fi

# Verify key dependencies
if [ ! -d "node_modules/express" ]; then
    echo -e "${RED}❌ Express not installed properly.${NC}"
    exit 1
fi

echo -e "${GREEN}✓ Dependencies installed successfully${NC}"

# Optional: Run initial tests
if [ "$PKG_MANAGER" = "npm" ]; then
    echo "🧪 Running initial tests..."
    npm test || echo -e "${YELLOW}⚠️  Tests failed or not configured yet.${NC}"
fi

echo ""
echo -e "${GREEN}🎉 Installation complete!${NC}"
echo ""
echo "To get started:"
echo "  npm start     - Start production server"
echo "  npm run dev   - Start development server"
echo "  npm test      - Run test suite"
```
