# System: OSH-C Portal (OSH Portal)

**For:** Asbenz Motors, the Chairman's employer · **Used by:** Asbenz Desk (Personal Assistant, OSH Tracker) · **Built by:** Software Studio (George)

| | |
|---|---|
| Repository | [syakirbadry-tech/Safety-and-Health-Asbenz-Motors](https://github.com/syakirbadry-tech/Safety-and-Health-Asbenz-Motors) (private) |
| Live app | https://osh-c-portal.onrender.com (Render) |
| Older copy | [syakirbadry-tech/DOSH_Portal-](https://github.com/syakirbadry-tech/DOSH_Portal-), July 2026, replaced by the repository above |
| Stack | Node.js 20 + Express server, plain JavaScript front end, Airtable base `appqSxDrzpfO1ybFw` (the OSH-C base, separate from the Command Center), JWT login, iOS wrapper (`ios-app/`, Codemagic) |
| Version | v2.7.1 (Enterprise Permission System) |

## What it does today

A login-protected EHS compliance portal organised by business function:

- **Machinery:** register, Certificates of Fitness lifecycle, preventive and corrective maintenance, inspection, calibration, risk assessment, per-machine profiles, AI-assisted certificate upload
- **Chemical Management:** DOSH-compliant chemical register (USECHH 2000 guideline), SDS revisions, substances, storage, process usage, DOSH Register PDF and Excel export
- **Corrective Actions (CAPA)** and **OSH Committee**
- **Company Profile** as the single source for report branding, plus a shared print/export engine
- **Admin:** users, roles and permissions, login and activity history
- HRA, HIRARC and SOP still open as classic record lists until their modules are rebuilt

## Next on its roadmap (from the repository)

1. Noise Management module
2. Operational Safety module (High Risk + SOP, Permit to Work, Contractors, Safety Inspections)
3. Gap Analysis and Project Progress modules
4. Interface: sidebar, dashboard redesign, notification centre, global search
5. Later: Employee Safety, Incident Management, Inspection and Audit, Reports and Analytics

Source of truth: `PROJECT_ROADMAP.md` and `TODO.md` in the repository.

## Rules for the team

- Asbenz data lives in the OSH-C Airtable base and the live app only. It never goes into the Command Center, other projects or public content.
- The studio builds the tool; legal content (checklists, DOSH formats) is checked against the OSH Act 1994 as amended in 2022 and DOSH guidance, and confirmed by Asbenz.
- Changes go through a branch and pull request in the repository, as the existing history does.

## Questions for the manager (Mon 2 Nov)

1. Is there a deadline, and for which modules? (Noise Management and Operational Safety are next on the roadmap.)
2. Which module matters most to management right now?
3. Who else should get accounts (HR, supervisors), and with which permissions?
4. Is Render hosting acceptable long term, or does Asbenz want it on company hosting?
5. Any audit or DOSH visit coming that the portal's reports must be ready for?
