# chippa

## What is it?

Chippa is a web app for cataloguing and creating lists of media.

## Why?

An important piece of IP for a public relations firm is their media lists.  These lists are an accumulations of journalists, freelancers, influencers, and producers who work within the media industry and whom PR firms reach out to with pitches of story ideas for their clients.  The lists contain a media person's contact info and notes about past interactions.

## Motivation

My girlfriend is a publicist at a public relations firm. She showed me that the media lists at her firm are nothing more than excel documents that are shared around between publicists via email.

### Problems with Excel

The main problems with an excel spreadsheet are:

* The information is not centrally stored and updated.  Any update to an individual's list is not forwarded to others.  This leads to custom lists and stale information.
* Poor security.  These lists are not access controlled by the firm, so any employee planning on leaving the firm can walk out with a copy of the list.  This is a huge breach in IP security!

## Solutions

### Solution 1

```
"I can build that!""
        ~ Every software engineer when they hear of a new SaaS product idea
```

I could build a custom solution for this, but why?  This would be a lot of work when a SaaS or Off The Shelf solution for this already exists.  Next!

### Solution 2

There has to be a SaaS solution for this already... and there is!  Woohoo!!

Ok, we're done.  Let's go ho... not so fast!

The SaaS solution costs > $20k / year?!  This is because of how they view these media lists.  Instead of saying each organization has its own media lists, this solution says we have a master media list.  This master list contains information from everyone else's media lists.  If you need to add or update people, go ahead, but everyone else including other pr formds who have bought in will have these updates too.

So to use this company you have to:

* Give up your IP about media contacts
* Pay a ludicrous amount to use it

This might be tempting for a new pr firm or a firm moving to a new market, but not for an established pr firm like that one my girlfriend works at.  Next!

### Solution 3

I told my girlfriend to have a shared excel document within the firm.  That did not work because they do not have a shared document system setup and that doing so would cost more money than the firm was willing to pay.  Next!

### Solution 4

I then suggested they look into something a great SaaS tool called [Airtable](https://airtable.com/).  For their needs, they would need to use one of the paid account tiers.  For a PR firm of ~60 people, that works out to >$10k / year.  Again, too rich for their blood.  Next!

### ~~Solution 5~~ Solution 1

I can build that!  It may not make a good business, but I can build that.

#### Pros:

* I can practice building something for a customer (my girlfriend).
* I have access to a product / subject matter expert (my girlfriend).
* It will give me something to point as a portfolio project.
* It will be fun and rewarding to help people I know with their problem


#### Cons:

* I won't make a lot or any money for my efforts.

I am not in it for the money and this repo exists, so Solution 5 it is!

## Feature Set

Chippa is still a work in progress, but here is the planned feature set:

* A SaaS product with individual user accounts tied to a team or organization.
* A system to store media members in a central database.  This information includes emails, phone numbers, addresses, notes, previous articles they have written, metrics of value when working with this person, etc.
* The ability to add media members to lists.
* Tooling around lists like sending emails and tracking their open and response rates, etc.

## Why 'chippa'?

Chippa is the name of my girlfriend's cat.  I like this cat so I named the project after the cat.
