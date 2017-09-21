FROM jupyter/datascience-notebook:c8797824e8c0

# beautiful soup, for parsing HTML (spam model exercises)
RUN conda install beautifulsoup4

# natural language toolkit, for tokenizing (spam model exercises)
RUN conda install nltk

RUN python -m nltk.downloader all

# todo: use the latest notebook. Maybe setup a custom image?

# maybe we want to add these libs
#RUN pip3 install xlrd
#RUN pip3 install xlwt
#RUN pip3 install openpyxl
#RUN pip3 install oauth2client
#RUN pip3 install google-api-python-client
#RUN pip3 install bs4
#RUN pip3 install gmaps
#RUN pip3 install folium
#RUN jupyter nbextension enable --py --sys-prefix widgetsnbextension
#RUN jupyter nbextension enable --py gmaps
#RUN HDF5_DIR=/opt/conda/pkgs/hdf5-1.8.17-3 pip3 install tables
#RUN conda install mkl-rt
#RUN pip install -U scikit-learn