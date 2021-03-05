# README

## Scenario:
Schools are running interventions to try to improve pupils' performance.

Their pupils are taking some kinds of assessments. They will take them before the interventions and then afterwards, so
we can measure the impact the intervention has on them. The assessment might be a questionnaire about their attitude
to learning, or perhaps an online assessment of some academic activity.

The pupils all have an "external_ident" which is an arbitrary string of some kind (but we'll assume that all the pupils have the external_ident of "pupil-ident-N" where N is an integer between 1 and 20).

The assessment data comes to us in the format of json (one measurement per json file) which also has the external_ident in it -- this [sample json](./sample.json) is a full example and the only "documentation" we've been given by the external service provider.

## Our data structure

* `School` (with a `name` and `wonde_id` to represent the external data service provider)
* `Pupil` (belonging to one school, with `first_name`, `last_name` and an `external ident` used by external systems)
* `PupilMeasurement` (belonging to one pupil, on a particular `measurement_date`, for a specific `assessment` name, having an `original_mark` and a converted numeric `score`)


## Your task

The aim of this pre-work is to give us a way of talking together about programming during the interview.

Can you write a mechanism to create `PupilMeasurements` from a set of json files, with tests.
Feel free to make any changes you like to the setup of the app in this repo or if you don't want to start from this app, you can recreate something similar from scratch if you prefer.
Please also pre-prepare your development db with a `School` and some `Pupils` with with `external_idents` of "pupil-ident-1", "pupil-ident-2" to "pupil-id-20").

We're hoping this will be straight forward. We're not trying to catch you out, but we would like you to do any defensive programming you have time for. This could be an endless task, so just spend say a couple of hours on it and come prepared to talk.

Can you send us your version of the toy app via a zip file, the day before your interview. (Please don't do a github fork or pull-request or fork, because we'd like your contribution to remain private). Please also let us know how to do any install steps (if these have changed from this repo) and how to run your tests (unless you've just added to the rspecs in this repo).

We'll have a quick look at what you've done, but won't be looking at it in any great detail.

What we'd like to do when we get together is to

* Process a few new json files and see how it does and discuss (we'll give you some json files which should allow you to create PupilMeasurements in your development db)
* Talk about what you'd like to do next to this storing of the PupilMeasurements to take it towards being a real system rather than a toy. Any directions are interesting to us.

## This app

This is a toy rails app to give you something to work with but start from scratch if you need to. 


### Quick ref

* to set it up
  * checkout repo
  * install ruby 2.7.2

  ```shell
  bundle install
  rails db:setup
  ```

* to start server on port 3000

  ```shell
  rails s
  ```

* to run existing rspecs

  ```shell
  rspec spec
  ```
