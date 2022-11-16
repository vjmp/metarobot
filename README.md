# Meta robot: robot that runs robot (testsuite)

To run this meta robot, you need:

- clone this repository
- download rcc from [rcc downloads](https://downloads.robocorp.com/rcc/releases/index.html) and put it into somewhere in PATH
- and run following command:

```
rcc run --space metarobot --task metarobot
```

## Notes

- metarobot uses `%{RCC_EXE}` environment variable to run inner "tester" robot
- "tester" robot output is directed to private "secret" folder, so it wont be uploaded to Control Room (when run as Control Room robot or assistant)
- metarobot could then control what actually happens to "tester" robot output (but this example does not have anything implemented)
- but metarobot is structured so, that you can extend that functionality there

## Template: Standard Robot Framework

Want to get started using [Robot Framework](https://robocorp.com/docs/languages-and-frameworks/robot-framework/basics) this is the simplest template to start from.

This template robot:

- Uses [Robot Framework](https://robocorp.com/docs/languages-and-frameworks/robot-framework/basics) syntax.
- Includes all the necessary dependencies and initialization commands (`conda.yaml`).
- Provides a simple task template to start from (`tasks.robot`).

## Learning materials

- [All docs related to Robot Framework](https://robocorp.com/docs/languages-and-frameworks/robot-framework)
