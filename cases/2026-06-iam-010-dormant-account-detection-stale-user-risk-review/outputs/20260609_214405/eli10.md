# Cybersecurity Lab: Dormant Account Detection

In this lab, we played the role of a cybersecurity analyst to find dormant accounts that might pose a risk to our system. This is called **Dormant Account Detection Stale User Risk Review**. It's like cleaning up an old toy box, where we check each account (toy) to see if it's still being used or if it's been sitting there for a long time without any play (activity).

Here's what we did:
1. We made a list of all the accounts in our system (account review data).
2. We checked each account to see when it was last used (last logon/sign-in field).
3. If an account hadn't been used for a long time, we looked at its group membership or privileges. Some of these accounts might have special permissions that could be harmful if they fall into the wrong hands.

Here's what we found:
1. Some accounts were enabled but had not been used for a long time. These are like toys that have been forgotten in the toy box. We need to check if they still need to be there or if they can be put away safely.
2. There were dormant accounts with special permissions. These are like toys that are usually played with by adults, and we need to make sure they're being used properly.
3. We found some accounts that should be checked further because they might belong to contractors or temporary employees. These are like toys that don't really belong in the toy box at all.
4. There were also accounts that required our attention because they needed owner validation, disabling, or privilege removal. These are like broken toys that need fixing or throwing away.

Why does this matter? It's important to keep our system safe and secure. Leaving dormant accounts with special permissions can create opportunities for hackers to sneak in and cause trouble. By finding and managing these accounts, we're helping to protect our system from potential threats.