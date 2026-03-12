# Contributing to GitDigital OpenCollective

Thank you for your interest in contributing to GitDigital's transparent funding ecosystem! This document provides guidelines for contributions including code, documentation, financial proposals, and governance participation.

## Table of Contents

1. [Code of Conduct](#code-of-conduct)
2. [Types of Contributions](#types-of-contributions)
3. [Financial Contributions](#financial-contributions)
4. [Development Contributions](#development-contributions)
5. [Governance Participation](#governance-participation)
6. [Pull Request Process](#pull-request-process)
7. [Style Guidelines](#style-guidelines)
8. [Community Resources](#community-resources)

## Code of Conduct

All contributors must adhere to our [Code of Conduct](CODE_OF_CONDUCT.md). We foster an inclusive, respectful community.

## Types of Contributions

### Financial Contributions
- **One-time donations** – Support general operations
- **Recurring sponsorships** – Sustain ongoing development
- **Grant funding** – Fund specific features or audits
- **Expense submissions** – Request reimbursement for work done

### Non-Financial Contributions
- **Documentation** – Improve clarity and completeness
- **Governance proposals** – Suggest changes to policies
- **Budget reviews** – Audit and verify transactions
- **Code contributions** – Enhance tooling and automation

## Financial Contributions

### Donations
Donations can be made through our Open Collective page:  
[https://opencollective.com/gitdigital](https://opencollective.com/gitdigital)

### Grant Applications
1. Review the [grant-structure.md](open-collective/grant-structure.md)
2. Submit a proposal via GitHub Issues with the `grant-proposal` label
3. Include:
   - Project description and goals
   - Technical approach
   - Team qualifications
   - Budget breakdown
   - Milestones with deliverables
4. Proposals will be reviewed by the Technical Advisory Board

### Expense Submissions
See [expense-policy.md](open-collective/expense-policy.md) for detailed guidelines.

## Development Contributions

### Getting Started
1. Fork the repository
2. Clone your fork: `git clone https://github.com/your-username/opencollective.git`
3. Install dependencies: `npm install` (if applicable)
4. Create a branch: `git checkout -b feature/your-feature-name`

### Areas for Contribution
- Budget visualization tools
- Automated reporting scripts
- Grant tracking dashboards
- Documentation improvements
- Testing and validation

## Governance Participation

### Voting Rights
- Core maintainers have binding votes on financial decisions
- Contributors with 6+ months of activity have advisory votes
- All community members can comment on proposals

### Making Proposals
1. Create a GitHub Issue with the `governance-proposal` label
2. Use the proposal template (see below)
3. Allow 7 days for community discussion
4. Maintainers will schedule a vote if warranted

### Proposal Template
```markdown
## Title: [Brief description]

### Summary
[2-3 sentences]

### Motivation
[Why this change is needed]

### Detailed Design
[Specific implementation details]

### Financial Impact
[If applicable, budget implications]

### Alternatives Considered
[Other approaches considered]

### Timeline
[Proposed implementation timeline]
# Contributing to Solana KYC SDK

Thank you for your interest in contributing! Here's how to get started.

## 🎯 Development Process

### Getting Started
1. **Fork** the repository
2. **Clone** your fork: `git clone https://github.com/gitdigital-products./solana-kyc-compliance-sdk.git`
3. **Install dependencies**l: `npm install`
4. **Run tests**: `npm test`

### Branch Naming Convention
- `feat/` - New features
- `fix/` - Bug fixes  
- `docs/` - Documentation updates
- `test/` - Test additions/changes
- `chore/` - Maintenance tasks

### Pull Request Process
1. Update the README.md with details of changes if needed
2. Update documentation in `/docs/` if applicable
3. Add tests for new functionality
4. Ensure all tests pass: `npm test`
5. Update CHANGELOG.md following keepachangelog.com
6. Request review from maintainers

## 🧪 Testing Requirements
- All new code must have tests
- Maintain >90% test coverage
- Test both success and failure cases
- Include integration tests for new features

## 📝 Code Style
- Use TypeScript strict mode
- Follow existing naming conventions
- Add JSDoc comments for public APIs
- Use ESLint and Prettier (config included)

## 🔐 Security Considerations
- Never commit secrets or API keys
- Report security vulnerabilities to security@gitdigital.com
- Follow security best practices in `/docs/SECURITY_GUIDE.md`

## ❓ Need Help?
- Check existing issues and PRs
- Join our Discord: https://discord.gg/gitdigital
- Ask in GitHub Discussions

We appreciate all contributions!
