# Project Proposal: PRUBSN Agent Portal

**For:** the Takaful Practice and the Chairman's agency team · **Prepared by:** George with Gabby · **Status:** Draft, waiting for the upline's answers (Mon 2 Nov) and PRUBSN's rules (by Wed 4 Nov)

## Problem / Opportunity

Agents track prospects, follow-ups and renewals in WhatsApp, notebooks and memory. Follow-ups slip and team leaders cannot see activity. A simple portal can give each agent a prospect pipeline with reminders, and give the leader a team view, as long as it follows PRUBSN's rules on client data.

## Proposed Scope

**First release, to be confirmed with the upline: Prospect pipeline.**

1. Each agent records a prospect with stage (new, contacted, meeting, proposal, closed), next action and date. No policy numbers, IC numbers or medical details.
2. A "today" list of follow-ups, overdue first.
3. A weekly activity count per agent for the team leader (contacts, meetings, cases), not client details.

**Possible later modules:** renewals due (only if PRUBSN allows storing policy dates), training and licence expiry tracker, approved marketing materials library, team targets.

## Closest Existing Example

The Command Center's People and Tasks tables already work this way for the Chairman alone.

## Technology Choices

Decide after PRUBSN's rules are known. If client data may not leave PRUBSN systems, the portal tracks activity and reminders only, with no client details. Options mirror the OSH Portal: a no-code tool for a small team, or a small web app for a bigger agency.

## Standards That Apply

[SECURITY_STANDARDS.md](../../docs/SECURITY_STANDARDS.md) and Malaysia's PDPA (personal data), plus PRUBSN's agent and data policies once on file.

## Risks

- **Regulatory:** storing client data outside PRUBSN systems may not be allowed. Build nothing with real client data before written approval.
- **Adoption:** agents only use it if it is faster than WhatsApp; keep it phone-first and very simple.
- **Branding:** PRUBSN names and logos only with permission.

## Classification & Timeline

Second in priority after the OSH Portal. Start design after the PRUBSN answers; build after the OSH Portal's first module.

## Questions for the Upline (Mon 2 Nov evening)

1. Is there a deadline, and who in the agency wants this?
2. How many agents would use it?
3. Which one feature would help agents most right now?
4. What do agents use today to track prospects?
5. Would the agency pay for hosting or licences, or is this my own tool?

## Questions for PRUBSN (by Wed 4 Nov)

1. Can an agent or agency use its own tool to track prospects and clients? What approval is needed?
2. What client information may be stored outside PRUBSN systems, if any?
3. May the portal use the PRUBSN name or logo?
4. Please share the agent social media guidelines (needed for the Takaful social media team).
