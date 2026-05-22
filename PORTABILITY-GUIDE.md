# Portability Guide

Blue Team Command Center is built to work as a normal folder that can be moved between computers.

## Core Requirements

The core system requires only:

- A file browser.
- A text editor.
- Markdown files.

It does not require Python, administrator rights, internet access, installed packages, cloud services, or external accounts.

## Moving the Folder

1. Close any open files.
2. Copy the entire project folder.
3. Paste it on the target computer.
4. Open `README.md`.
5. Confirm the folder structure is intact.

Do not depend on a specific drive letter, username, desktop path, OneDrive path, or machine-specific location. All internal references should use relative paths such as `templates/INCIDENT-REPORT.md`.

## Portable File Practices

- Keep filenames short, descriptive, and cross-platform friendly.
- Avoid characters that cause problems on common systems: `<>:"/\\|?*`.
- Use Markdown for primary content.
- Keep optional scripts separate in `scripts/optional/`.
- Do not make the core workflow depend on local environment variables.

## What May Break Portability

- Hardcoded absolute paths.
- Links to local-only folders outside this project.
- References to a specific username, company drive, or machine name.
- Required tools that are not included with the operating system.
- Files that require paid, cloud, or authenticated services to open.
- Local-only folders copied into a shared or public location by mistake.

## Verification Checklist

- `README.md` opens in a basic text editor.
- Templates open without special software.
- Playbooks use relative links only.
- No secrets or restricted data are present.
- No required workflow depends on internet access.
- `docs/repo-readiness-checklist.md` has been reviewed before sharing.
