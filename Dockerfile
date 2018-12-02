FROM thojkooi/ci-python

RUN pip install sqflint && mkdir /addons

CMD ["sqflint", "--exit=e", "-d", "/addons"]
