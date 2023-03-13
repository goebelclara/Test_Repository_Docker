from pathlib import Path

class NotebookPathConfig:
    DIR_ROOT = Path("/opt/app/")
    DIR_DATA = DIR_ROOT / "data"
    DIR_DATA_RAW = DIR_DATA / "raw"
    DIR_DATA_PROCESSED = DIR_DATA / "processed"
    DIR_DATA_DELIVERABLES = DIR_DATA / "deliverables"
    DIR_SRC = DIR_ROOT / "src"
    DIR_NOTEBOOKS = DIR_SRC / "notebooks"