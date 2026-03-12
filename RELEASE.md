# Release Process for GitDigital OpenCollective

**Version 1.0 | Last Updated: March 2025**

This document outlines the release process for the GitDigital OpenCollective repository, including versioning, release candidates, and publication.

## Versioning Scheme

We follow [Semantic Versioning 2.0.0](https://semver.org/):

- **MAJOR** version for incompatible governance changes
- **MINOR** version for new features (backward-compatible)
- **PATCH** version for bug fixes and documentation

**Pre-release identifiers**: `-alpha`, `-beta`, `-rc.1`

## Release Schedule

| Release Type | Frequency | Timeline |
|--------------|-----------|----------|
| Major | As needed | 4+ weeks planning |
| Minor | Quarterly | March, June, September, December |
| Patch | As needed | 1-5 days turnaround |
| Security | Immediate | Within 24 hours of fix |

## Release Roles

- **Release Manager**: Coordinates the release process
- **Technical Reviewer**: Verifies technical changes
- **Finance Reviewer**: Validates financial data
- **Documentation Reviewer**: Checks documentation updates

## Release Process

### Phase 1: Planning

1. **Create Release Issue**
   ```markdown
   Title: "Release vX.Y.Z Planning"
   Labels: release, planning
