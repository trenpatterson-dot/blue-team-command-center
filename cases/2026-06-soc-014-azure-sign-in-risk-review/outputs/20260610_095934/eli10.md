# A Beginner's Guide to a Cybersecurity Lab: Azure Sign-in Risk Review

Welcome! Today, we're going to talk about a special project called the **2026 06 Soc 014 Azure Sign In Risk Review**. This is like a detective's case where we investigate potential security issues in a computer system.

In this case, our focus is on Azure, which is a popular cloud platform used for building and hosting applications. The goal of this project was to review the risk associated with sign-ins to an Azure account.

Here's what we did:
1. We looked at a summary of the Azure sign-in risks. This told us about any suspicious activities related to the account.
2. We identified the user account that was being investigated.
3. Next, we checked for failed sign-ins from unfamiliar sources. These are places where the user usually doesn't sign in from, which could be a red flag.
4. Finally, we compared these suspicious activities with expected successful sign-ins to find any differences.

By doing this, we found some interesting things:
1. There were failed sign-ins from an unfamiliar location. This could mean someone was trying to access the account without permission.
2. We also saw that there were successful sign-ins from expected sources. This is good because it shows that regular, authorized users are accessing the system as usual.
3. We learned about the Multi-Factor Authentication (MFA) requirement and its result for the user account. MFA adds an extra layer of security by requiring more than one method of verification to log in.
4. We discovered some indicators that showed the level of risk associated with the user's sign-ins. This helps us understand how secure the account is.
5. Lastly, we got recommendations for Conditional Access, which are rules that control who can access the system and how they can do it.

Why does this matter? It's important to keep our systems safe from unauthorized access. By reviewing the sign-in risks, we can make sure that only authorized users are getting into our Azure account and that we have strong security measures in place.