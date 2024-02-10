---
layout: post
title:  "How To Ask Questions The Smart Way"
source: http://www.catb.org/~esr/faqs/smart-questions.html
author: Eric Steven Raymond
category: [11]
---

## Before asking

Before asking a technical question by e-mail, or in a newsgroup, or on a website chat board, do the following:

1. Try to find an answer by **searching the archives** of the forum
1. Try to find an answer by **searching the Web**.
1. Try to find an answer by **reading the manual**.
1. Try to find an answer by **reading a FAQ.**
1. Try to find an answer by **inspection or experimentation**.
1. Try to find an answer by **asking a skilled friend**.
1. If you're a programmer, **try to find an answer by reading the source code**.

Ensure you do your homework before asking

> When you ask your question, **display the fact that you have done these things first**; this will help establish that you're not being a lazy sponge and wasting people's time. Better yet, display what you have learned from doing these things.

Never expect an answer in return

> **Never assume you are entitled to an answer**. You are not; you aren't, after all, paying for the service. You will earn an answer, if you earn it, by asking a substantial, interesting, and thought-provoking question

When you are likely to be ignored:

1. off topic forum post
1. a very elementary question
1. cross-post to too many different newsgroups
1. post a personal e-mail to somebody who is neither an acquaintance of yours nor personally responsible for solving your problem Hackers

How to research the forum / group before posting a question

> When selecting a Web forum, newsgroup or mailing list, **don't trust the name by itself** too far; **look for a FAQ or charter to verify** your question is on-topic. **Read some of the back traffic** before posting so you'll get a feel for how things are done there.

Ask in public, rather than in private

> In general, questions to a well-selected public forum are more likely to get useful answers than equivalent questions to a private one. There are multiple reasons for this. One is simply the **size of the pool of potential respondents**.

Where to search on the Internet

> Start with a Google search before looking at Stack Exchange; Google indexes it in real time. There's a very good chance someone has already asked a similar question, and the Stack Exchange sites are often near the top of the search results.

Edit and refine your question

> If a commenter asks you for more information, edit your main post to include it. If any answer is helpful, click the up arrow to upvote it; if an answer gives a solution to your problem, click the check under the voting arrows to accept it as correct.

Why asking questions is good

> If certain questions are seen to be asked often, developers can use that information to **improve the documentation or the software itself to be less confusing**.

Provide some context and further help

> Mention in your e-mail that **you tried and could not find the appropriate mailing list**. Also mention that **you don't object to having your message forwarded** to other people.

Bad email subjects

> On mailing lists, newsgroups or Web forums, the subject header is your golden opportunity to attract qualified experts' attention in around 50 characters or fewer. Don't waste it on babble like “Please help me”

Good email subjects

> The process of writing an **“object-deviation” description** will help you organize your thinking about the problem in more detail. **What is affected?**

Changing the email subject line

> If you ask a question in a reply, be sure to change the subject line to indicate that you're asking a question. A Subject line that looks like “Re: test” or “Re: new bug” is less likely to attract useful amounts of attention.

Careless == sloppy at thinking and coding

> We've found by experience that people who are careless and sloppy writers are usually also careless and sloppy at thinking and coding (often enough to bet on, anyway).

Language corrections

> **Spell, punctuate, and capitalize correctly**. Don't confuse “its” with “it's”, “loose” with “lose”, or “discrete” with “discreet”. Don't TYPE IN ALL CAPS; this is read as shouting and considered rude.

Format: plain text or HTML

> If you make your question artificially hard to read, it is more likely to be passed over in favor of one that isn't. So: Send plain text mail, not HTML.

80-character wide text displays

> Don't send e-mail in which entire paragraphs are single multiply-wrapped lines... Assume that your respondents will be reading mail on **80-character-wide text displays and set your line wrap accordingly**.

Avoid emojis

> Web forums, do not abuse “smiley” and “HTML” features (when they are present). A smiley or two is usually OK, but colored fancy text tends to make people think you are lame.

Content

>1.  Describe the **symptoms of your problem** or bug carefully and clearly. Describe the **environment in which it occurs** (machine, OS, application, whatever).
1. Describe the research you did to try and understand the problem before you asked the question.
1. Describe the diagnostic steps you took to try and pin down the problem yourself before you asked the question.
1. Describe any possibly relevant recent changes in your computer or software configuration.
1. If at all possible, provide a way to reproduce the problem in a controlled environment.

How does simplifying the question and the problem help?

- One: being seen to invest effort in simplifying the question makes it more likely you'll get an answer,
- Two: simplifying the question makes it more likely you'll get a useful answer.
- Three: In the process of refining your bug report, you may develop a fix or workaround yourself.

When asking a question, assume you are wrong

> When asking your question, **it is best to write as though you assume you are doing something wrong,** even if you are privately pretty sure you have found an actual bug.

When asking a question, don't retreat to grovelling

> Some people who get that they shouldn't behave rudely or arrogantly, demanding an answer, retreat to the opposite extreme of grovelling. “I know I'm just a pathetic newbie loser, but...”. **This is distracting and unhelpful.**

## Content of question

Raw symptoms, not interpretations

> So, make sure you're telling them the ((raw symptoms of what goes wrong, rather than your interpretations and theories. Let them do the interpretation and diagnosis.

Chronological

> Describe your problem's symptoms in chronological order The clues most useful in figuring out something that went wrong often lie in the events immediately prior. So, your account should describe precisely what you did, and what the machine and software did, leading up to the blowup.

Verbose mode

> If the program that blew up on you has diagnostic options (such as -v for verbose), try to **select options that will add useful debugging information to the transcript**. Remember that more is not necessarily better; try to choose a debug level that will inform rather than drowning the reader in junk.

Don't come with a solution

> Often, people who need technical help have a high-level goal in mind and get stuck on what they think is one particular path towards the goal. They come for help with the step, but don't realize that the path is wrong. It can take substantial effort to get past this.

Open-ended questions don't really help

> Be explicit about your question. Open-ended questions tend to be perceived as open-ended time sinks. Those **people most likely to be able to give you a useful answer are also the busiest people** (if only because they take on the most work themselves).

Make it easy to answer your question

> To understand the world the experts live in, **think of expertise as an abundant resource and time to respond as a scarce one**. The **less of a time commitment you implicitly ask for, the more likely you are to get an answer from someone really good and really busy**.

Reprex

> The most effective way to be precise about a code problem is to **provide a minimal bug-demonstrating test case**. What's a minimal test case? It's an illustration of the problem; just enough code to exhibit the undesirable behavior and no more.

Start removing chunks that don't matter

> If you can't narrow it down to a particular section, make a copy of the source and start removing chunks that don't affect the problematic behavior. The smaller your minimal test case is, the better.

Remove semantically-null questions

> Prune pointless queries Resist the temptation to close your request for help with semantically-null questions like “Can anyone help me?” or “Is there an answer?

Avoid yes-no questions

> In general, asking yes-or-no questions is a good thing to avoid unless you want a yes-or-no answer.

Don't flag your question

> Don't flag your question as “Urgent”, even if it is for you That's your problem, not ours. **Claiming urgency is very likely to be counter-productive**: most hackers will simply delete such messages as rude and selfish attempts to elicit immediate and special attention.

Courtesy!

> Courtesy never hurts, and sometimes helps Be courteous. Use “Please” and “Thanks for your attention” or **“Thanks for your consideration”**.

Followup with the answer

> Follow up with a brief note on the solution. **Send a note after the problem has been solved to all who helped you**; let them know how it came out and thank them again for their help

Edit subject line to add FIXED

> Optimally, the reply should be to the thread started by the original question posting, and should have ‘FIXED’, ‘RESOLVED’ or an equally obvious tag in the subject line

RTFM and STFW first

> RTFM has a younger relative. If you get a reply that reads “STFW”, the person who sent it thinks you should have Searched The Fucking Web. He or she is almost certainly right. Go search it.

## Well, hmmm

Well, I probably won't do this myself. But this is the context...

> Much of what looks like rudeness in hacker circles is not intended to give offense. Rather, it's the product of the direct, cut-through-the-bullshit communications style that is natural to people who are more concerned about solving problems than making others feel warm and fuzzy.

Complaining

> Sometimes people will attack you personally, flame without an apparent reason, etc., even if you don't screw up (or have only screwed up in their imagination). In this case, complaining is the way to really screw up.

Why no answers?

> Sometimes the members of the asked group may simply not know the answer. **No response is not the same as being ignored**, though admittedly it's hard to spot the difference from outside.

How To Answer Questions in a Helpful Way

- Be gentle
- Reply to a first offender off-line.
- If you don't know for sure, say so!
- If you can't help, don't hinder
- Ask probing questions to elicit more details
- While muttering RTFM is sometimes justified when replying to someone who is just a lazy slob, a pointer to documentation is better.
- If you're going to answer the question at all, give good value
- Help your community learn from the question. When you field a good question, ask yourself “How would the relevant documentation or FAQ have to change so that nobody has to answer this again?” Then send a patch to the document maintainer.
