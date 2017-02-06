---
layout: post
title: 'Patching the Human: Help Them Remember Their Security Training' 
category: tech
---

[Sean Cassidy](https://www.twitter.com/sean_a_cassidy), in a recent blog post explained the workings of [LostPass](https://www.seancassidy.me/lostpass.html), a phishing framework specifically targeting the popular password manager [LastPass](https://www.lastpass.com/). In it, he perfectly articulated an idea that has been bouncing around my mind for a couple of months:

>The standard refrain is that we need better user training. That is simply not good enough.

I couldn’t agree more with this statement. We can train them about best practices and cyber threats until we cannot talk, but they will still mess up and the bad guys will still find a way!
Sean goes on to say:

>The real solution is designing software to be phishing resistant. Just like we have anti-exploitation techniques, we need anti-phishing techniques built into more software.

It’s easy to patch software, but it’s extremely hard to patch human error. However, I believe that we may be able to patch the human by helping them remember best practices, as Sean suggests, via software.

In an average internal phishing engagement there is always going to be the users that click on the link that, in a real life phishing attack, would compromise the entire company exposing trade secrets, financial data, or the memes posted in the company IRC. No matter how many times they sign their annual security awareness training certification, they love their phishy links! Or perhaps you have a fantasy user base and no one clicks on any links or downloads any attachments in their emails.

There will always be exploits like LostPass and your entire user population will go down in flames, including you. How can we protect against it? My answer: a whitelist.

I know, you immediately rolled your eyes. Ain’t nobody got time to manage a whitelist! But here is my proposal on how we can patch the human with a minimal stress whitelist:

In effort to avoid as much disruption as possible, take all the domains that anyone in your organization has ever hit in the last three months and take out all the known and perhaps not-so-well-known malicious ones. The remaining good domains will be your whitelist. If you are worried that your user base will notice, thus causing too much disruption with their workflow, expand and take the past six months worth of domains.

Enforce the whitelist via DNS or a browser extension, it doesn’t matter what layer you do it at, as long as it is effective. When a user decides to visit a site that isn’t on the whitelist, present them with a warning page similar to the one they see for a site with a untrusted TLS certificate and give them to options to continue or leave. If they have a legitimate purpose for visiting a non-whitelisted site, they can continue. That way if your CEO is in an important meeting and wants to

show everyone that new hot company’s website, they don’t look like like an idiot. However, for those click happy employees, when they see the warning they’ll immediately think to themselves Did I mean to go here? How did I get here? They will then remember that it was by a link in an email that they weren’t expecting. They will be more likely to remember their security awareness training in that moment and get out of there.

We cannot expect our users to remember everything they hear in user training, but we can help them remember. Will this stop every phishing attack? Nope, in fact there’s a good chance it wouldn’t stop LostPass. In that situation, some users might think that LastPass was taken off the whitelist by mistake and choose to continue. Others would become suspicious and hopefully check with security. But if we mention in training to do the latter, it is more likely what our users will do with a big warning page.

Is this what Sean had in mind when suggesting to build anti-phishing techniques into software? I don’t know, but I do think its a great start. Approaching user problems with this mindset will enable us to better protect our data and organizations. User training is not the whole answer.

If you have another idea on how to “patch the human”, I’d love to here it! Feel free to reach out on [Twitter](https://www.twitter.com/__eth0).

## TL;DR
User training is not going to be enough in protecting against advanced adversaries. Don’t assume your users are going to do exactly what they are taught to do in security training. Plan for the the users that do not listen.

One way to supplement training would be to implement a whitelist of domains and URLs your users are allowed to visit. When a user hits a blocked site, give them the option to continue on or to leave. This will remind them of what they learned and help them realize that link was a little more shady than they thought.

Approaching user problems with this mindset could enable us to better protect our data and organizations. User training is not the whole answer.

