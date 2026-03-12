# GitDigital Audit Logs

**Last Updated: March 15, 2025**  
**Classification: PUBLIC**

## Overview

This document describes the audit logging framework for GitDigital's financial and governance systems. All significant actions are logged to ensure transparency, accountability, and security.

## Logging Principles

1. **Completeness** – All material actions are logged
2. **Immutability** – Logs cannot be altered after creation
3. **Accessibility** – Logs are available for review (with appropriate redactions)
4. **Searchability** – Logs are structured for efficient querying
5. **Retention** – Logs kept according to policy

## Types of Logs

### 1. Financial Transaction Logs

| Event Type | Logged Data | Retention |
|------------|-------------|-----------|
| Expense submitted | Submitter, amount, category, timestamp | 7 years |
| Expense approved | Approver, timestamp, rationale | 7 years |
| Expense paid | Payment method, transaction ID, timestamp | 7 years |
| Donation received | Donor (if public), amount, timestamp | 7 years |
| Grant disbursement | Recipient, milestone, amount, timestamp | 7 years |

### 2. Governance Logs

| Event Type | Logged Data | Retention |
|------------|-------------|-----------|
| Proposal submitted | Author, title, timestamp | Permanent |
| Vote cast | Voter, choice, timestamp | 5 years |
| Policy changed | Changed by, old value, new value, timestamp | Permanent |
| Maintainer added | Added by, new maintainer, timestamp | Permanent |
| Maintainer removed | Removed by, former maintainer, reason, timestamp | Permanent |

### 3. Access Logs

| Event Type | Logged Data | Retention |
|------------|-------------|-----------|
| User login | User, IP (hashed), timestamp | 90 days |
| API access | API key, endpoint, timestamp | 90 days |
| Admin action | Admin, action, resource, timestamp | 2 years |
| Failed attempt | IP (hashed), action, timestamp | 30 days |

### 4. System Logs

| Event Type | Logged Data | Retention |
|------------|-------------|-----------|
| Deployment | Version, deployed by, timestamp | 2 years |
| Configuration change | Changed by, setting, old value, new value | 2 years |
| Error | Error type, stack trace (redacted), timestamp | 90 days |
| Performance | Metrics, timestamp | 30 days |

## Log Structure

All logs follow a standard format:

```json
{
  "id": "unique-log-entry-id",
  "timestamp": "2025-03-15T14:30:00Z",
  "type": "event-type",
  "category": "financial|governance|access|system",
  "actor": {
    "id": "user-or-system-id",
    "type": "user|api|system",
    "ip": "hashed-ip-address" // where applicable
  },
  "action": "action-performed",
  "resource": {
    "type": "resource-type",
    "id": "resource-id"
  },
  "data": {
    // event-specific data
  },
  "outcome": "success|failure",
  "metadata": {
    "version": "log-schema-version",
    "environment": "production|staging"
  }
}
