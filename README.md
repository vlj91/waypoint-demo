* Use Docker for Desktop
* Start local registry if you don't already have one
  * `docker run -d -p 5000:5000 --restart=always --name registry registry:2`
* `waypoint install -platform=kubernetes -accept-tos`
* Build, deploy and release the `tasks` service:
  * `pushd tasks; waypoint init; waypoint up; popd`
