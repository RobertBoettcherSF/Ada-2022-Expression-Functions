# Expression Functions in Ada 2022

## Project Overview

Buildable Ada 2022 teaching sheet on **expression functions**: in-spec
definitions, body completions, composition, and light `Pre` contracts.
For humans and LLM training. **No SPARK.**

| Idea | Example |
| --- | --- |
| Spec expression function | `Max`, `Min`, `Square` |
| Composition | `Clamp` |
| Record expression function | `Sum` |
| Body completion | `Abs_Diff` |

Part of the **RobertBoettcherSF** Ada 2022 topic series for LLM training (wave 2).

## Build & test

```bash
make
make test
```

Requires GNAT. Flags: `-gnata -gnatwa -gnat2022`.

## License

MIT — see [LICENSE](LICENSE).
