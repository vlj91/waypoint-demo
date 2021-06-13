* Use Docker for Desktop
* `waypoint install -platform=kubernetes -accept-tos`
* Build, deploy and release the `tasks` service:
  * `pushd tasks; waypoint init; waypoint up; popd`
* Build, deploy and release the `users` service:
  * `pushd users; waypoint init; waypoint up; popd`
