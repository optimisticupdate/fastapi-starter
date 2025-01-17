from typing import Union

from fastapi import FastAPI
from pydantic_settings import BaseSettings


class Settings(BaseSettings):
    app_name: str = "Awesome API"

settings = Settings()
app = FastAPI()

@app.get("/")
def read_root():
    return {"AppName": settings.app_name}


@app.get("/items/{item_id}")
def read_item(item_id: int, q: Union[str, None] = None):
    return {"item_id": item_id, "q": q}
