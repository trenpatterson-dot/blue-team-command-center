# Repo Readiness Checklist

Use this checklist before initializing Git, committing changes, pushing to a remote repository, or sharing the folder.

## Safety Scan

- [ ] No hardcoded local paths are present.
- [ ] No drive letters, user profile paths, machine names, or company share paths are present.
- [ ] No secrets, credentials, tokens, keys, passwords, certificates, or recovery codes are present.
- [ ] No raw logs, exports, packet captures, screenshots, or attachments are present.
- [ ] No restricted company, customer, employee, HR, legal, privacy, or regulated data is present.
- [ ] No report claims facts that are not supported by approved evidence.

## Repo Boundary

- [ ] `.gitignore` exists.
- [ ] `outputs/` is ignored except for `outputs/README.md`.
- [ ] `cases/**/evidence/**` is ignored except placeholder folders and `.gitkeep` files.
- [ ] Common export formats such as `.csv`, `.log`, `.jsonl`, `.evtx`, `.pcap`, and archives are ignored.
- [ ] Screenshots and image files are ignored by default.
- [ ] Local-only folders such as `private/`, `local/`, and `secrets/` are ignored.

## Documentation Readiness

- [ ] `README.md` explains the project clearly.
- [ ] `SYSTEM-RULES.md` defines human approval requirements.
- [ ] `PORTABILITY-GUIDE.md` explains how to move the folder.
- [ ] `COMPANY-USE-GUIDE.md` explains safe company-equipment use.
- [ ] `docs/public-private-boundary.md` defines what can and cannot be shared.
- [ ] `docs/company-equipment-safe-use.md` explains local-only handling.

## Link and Naming Review

- [ ] Internal references use relative paths.
- [ ] File and folder names are consistent and portable.
- [ ] Screenshot references are named without `.png` in notes.
- [ ] Case folders use descriptive lowercase names.
- [ ] Templates use clear Markdown filenames.

## Human Review Required

- [ ] A human reviewed all content before publishing.
- [ ] A human confirmed the intended audience.
- [ ] A human confirmed company policy allows the planned use.
- [ ] A human approved any remote push or public sharing.

