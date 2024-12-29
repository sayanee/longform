---
layout: post
title:  "The Rise (and Lessons Learned) of ML Models to Personalize Content on Home "
author: Annie Edmundson
source: https://engineering.atspotify.com/2021/11/the-rise-and-lessons-learned-of-ml-models-to-personalize-content-on-home-part-i/
category: [6]
---

Use of Machine learning

> Machine learning is central to how we **personalize the Home page user experience and connect listeners to the creators that are most relevant to them**.

Like many recommendation systems, the Spotify Home page recommendations are powered by two stages:

- Stage 1: Candidate generation: The best albums, playlists, artists, and podcasts are selected for each listener.
- Stage 2: Ranking: Candidates are ranked in the best order for each listener.

Content generation by rules, curation, and predictions

> Some content is generated via heuristics and rules and some content is manually curated by editors, while other content is generated via predictions using trained models

Three models:

1. The Podcast Model: Predicts podcasts a listener is likely to listen to in the Shows you might like shelf.
1. The Shortcuts Model: Predicts the listener’s next familiar listen in the Shortcuts feature.
1. The Playlists Model: Predicts the playlists a new listener is likely to listen to in the Try something else shelf.

At a high level, an ML workflow can be broken down into three main phases:

1. data management
1. experimentation
1. operationalization.

Keeping an up to date model

> To keep a model up to date (which is more important for some tasks than others; more to come on this), retraining and model versioning are the last steps in our workflow.

Scoring and checking the model

> In our Kubeflow pipelines, we have components that check the evaluation score and automatically push the model to production if the score is above our threshold.

Training and serving features

> Historically, we have had one set of infrastructure for fetching and transforming features during experimentation (training) and a different set of infrastructure for fetching and transforming features for making predictions (serving).


Detecting drift

> The alerting we have added to our data validation pipeline allows us to detect significant differences in our feature sets — it uses the Chebyshev distance metric, which compares the distance between two vectors, and can help alert us to drift in training and serving features.
