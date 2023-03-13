```python
import pandas as pd
import numpy as np

import os
os.chdir("/opt/app")

from src.helpers import utils as ut
```


```python
os.listdir(ut.NotebookPathConfig.DIR_DATA_RAW)
```

```python
# Import data
df = pd.read_csv(
    ut.NotebookPathConfig.DIR_DATA_RAW / "data.csv",
)
```

```python

```
