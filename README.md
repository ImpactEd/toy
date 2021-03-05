# README

This is a toy app to give you something to work with. The aim of this pre-work is to give us a way of talking togehter
about programming during the interview.

## Scenario:
The schools are running interventions to try to improve pupils' performance.

The pupils are taking some kind of assessment. They will take it before some intervention and then afterwards, so
we can measure the impact the intervention has on them. The assessment might be a questionnaire about their attitude
to learning, or perhaps an online assessment of some academic activity.

The pupils all have an "external_ident" which is an arbitrary string of some kind (but we'll assume that all the pupils have the external_ident of "pupil-ident-N" where N is an integer between 1 and 20).

The assessment data comes to us in the format of json (one measurement per json file) which also has the external_ident in it -- this [sample json](./sample.json) is a full example and the only "documentation" we've been given by the external service provider.

## Models

The toy is comprised of the following models

* `School` (with a `name`)
* `Pupil` (belonging to one school, with `first_name`, `last_name` and an `external ident` used by external systems)
* `PupilMeasurement` (belonging to one pupil, on a particular `measurement_date`, for a specific `assessment` name, having an `original_mark` and a converted numeric `score`)


## Your task

Can you write a mechanism to create `PupilMeasurements` from a set of json files, with tests. 
Feel free to make any changes you like to the setup or if you don't want to start from this app, you can recreate something similar from scratch if you prefer.
Please also pre-prepare your development db with a `School` and some `Pupils` with with `external_idents` of "pupil-ident-1", "pupil-ident-2" to "pupil-id-20").

We're hoping this will be straight forward and not taxing.

Can you send us your version of the toy app via a zip file, the day before your interview. (Please don't do a github fork or pull-request or fork, because we'd like your contribution to remain private). Please also let us know how to do any install steps (if these have changed from this repo) and how to run your tests (unless you've just added to the rspecs in this repo).

We'll have a quick look at what you've done, but won't be looking at it in any great detail.

What we'd like to do when we get together is to 

* Process a few new json files and see how it does and discuss (we'll give you some json files which should allow you to create PupilMeasurements in your development db)
* Talk about what you'd like to do next to this storing of the PupilMeasurements to take it towards being a real system rather than a toy. Any directions are interesting to us.
