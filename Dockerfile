FROM python:3.11.7

ENV PYTHONFAULTHANDLER=1 \
    PYTHONHASHSEED=random \
    PYTHONUNBUFFERED=1

COPY src .
COPY pyproject.toml .

RUN pip install -e .

CMD ["python", "-m", "AOC-leaderboard"]