# README

This is a toy app to give you something to work with. The aim of this pre-work is to give us a way of talking togehter
about programming.

## Scenario:

The pupils are taking some kind of assessment. They will take it on before some intervention and then afterwards, so
we can measure the impact the intervention has on them. The assessment might be a questionnaire about their attitude
to learning, or perhaps an online assessment of some academic activity.

The pupils all have an "external_ident" which is an arbitrary string of some kind (but we'll assume that all the pupils have the external_ident of "pupil-ident-NN" where NN is an integer between 1 and 20)

The assessment data comes to us in the format of json which also has the external_ident in it -- this [sample json](./sample.json) is our only documentation.

## Models

The toy is comprised of the following models

* School (with a name)
* Pupil (belonging to one school, with first name, last name and an "external ident" used by external systems)
* PupilMeasurement (belonging to one pupil, on a particular date, for a specific assessment name, having an "original mark" and a converted numeric "score")


## Your task

Can you write a mechanism to create Pupil measurements from a set of Json files, with tests. 
Feel free to make any changes you like to the setup or if you don't want to start from this app, you can recreate it (or a similar version) from scratch if you prefer. 

We're hoping this will be straight forward and not taxing.

Can you send us your version of the toy app via a zip file. (please don't do an online github pull-request or fork, because we'd like your contribution to remain private)

We'll have a quick look at what you've done, but not as a judgement.

What we'd like to do when we get together is to 

* Process a few new json files and see how it does and discuss (we'll give you a zip of some json files for pupils with (make sure you have external idents in your database of "pupil-ident-1", "pupil-ident-2" to "pupil-id-20")
* Talk about what you'd like to do next to this storing of the pupil measurements to take it towards being a reals system rather than a toy. Any directions are interesting to us.
