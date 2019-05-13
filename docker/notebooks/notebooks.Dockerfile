FROM lappis/botrequirements:latest


RUN apt install -y graphviz libgraphviz-dev pkg-config

# Pygraphviz depends on package graphviz wich needs to be configurated
# acording to each OS. because of it it's not added to bot.requirements
RUN pip install --no-cache-dir jupyter pygraphviz==1.5

WORKDIR /work/

CMD jupyter-notebook --allow-root --NotebookApp.token='' --ip=0.0.0.0 --NotebookApp.password=''
