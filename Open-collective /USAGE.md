---

#### USAGE.md

```markdown
# Using GitDigital OpenCollective

This guide covers basic usage of the GitDigital OpenCollective tools and interfaces.

## Overview

The GitDigital OpenCollective ecosystem provides several ways to interact with our transparent funding system:

1. **Open Collective Platform** – Submit expenses, view budget
2. **GitHub Repository** – Governance proposals, grant applications
3. **Command Line Tools** – Automate reporting and analysis
4. **Dashboard** – Visualize financial data
5. **API** – Programmatic access

## For Contributors

### Submitting an Expense

1. Go to [opencollective.com/gitdigital](https://opencollective.com/gitdigital)
2. Click "Submit Expense"
3. Fill in:
   - Description (e.g., "March development work")
   - Amount
   - Category (development, documentation, etc.)
   - Payout method
4. Attach documentation (receipts, PR links)
5. Submit

See [expense-policy.md](open-collective/expense-policy.md) for detailed guidelines.

### Tracking Your Expenses

- View status in Open Collective dashboard
- Receive email notifications on approval/rejection
- Check payment processing status

## For Grant Applicants

### Applying for a Grant

1. Review [grant-structure.md](open-collective/grant-structure.md)
2. Prepare proposal using template
3. Open GitHub Issue with `grant-proposal` label
4. Engage with community feedback
5. Await TAB review (typically 14 days)

### Managing an Active Grant

- Submit milestone reports via GitHub
- Track payments in Open Collective
- Communicate progress in monthly calls

## For Sponsors

### Making a Donation

1. Visit [opencollective.com/gitdigital](https://opencollective.com/gitdigital)
2. Choose contribution tier
3. Select payment method (credit card, crypto, bank transfer)
4. Complete transaction
5. Receive receipt and acknowledgment

### Setting up Recurring Sponsorship

1. Click "Become a sponsor"
2. Select monthly or yearly
3. Choose amount
4. Set up payment method
5. Manage in your Open Collective dashboard

## For Developers

### Using the CLI

```bash
# View budget summary
npm run cli budget

# List active grants
npm run cli grants

# Generate report
npm run cli report -- --month=2025-03

# Export data
npm run cli export -- --format=csv
