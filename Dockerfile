FROM rocker/rstudio:3.4.1

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl \
        libssl-dev \
        openssl \    
        default-jdk \
        libbz2-dev \
        unixodbc-dev \
        libcurl4-openssl-dev \
        libicu-dev \
        libpcre3-dev \
        liblzma-dev \
        zlib1g-dev \
        gnupg \
        apt-transport-https && \
    curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && \
    curl https://packages.microsoft.com/config/debian/8/prod.list > /etc/apt/sources.list.d/mssql-release.list && \
    apt-get update && \
    ACCEPT_EULA=Y apt-get install -y msodbcsql && \
    echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile && \
    echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc && \ 
    Rscript -e "install.packages('https://cran.r-project.org/src/contrib/Archive/remotes/remotes_1.1.0.tar.gz')" && \
    Rscript -e "remotes::install_version('rJava', version = '0.9-8', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('optparse', version = '1.4.4', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('lubridate', version = '1.6.0', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('xlsx', version = '0.5.7', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('xlsxjars', version = '0.6.1', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('dplyr', version = '0.7.2', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('zoo', version = '1.8-0', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('VennDiagram', version = '1.6.17', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('futile.logger', version = '1.4.3', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('boot', version = '1.3-20', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('XLConnect', version = '0.2-13', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('XLConnectJars', version = '0.2-13', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('xtable', version = '1.8-2', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('scales', version = '0.4.1', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('RColorBrewer', version = '1.1-2', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('reshape2', version = '1.4.2', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('plyr', version = '1.8.4', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('Hmisc', version = '4.0-3', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('Formula', version = '1.2-2', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('survival', version = '2.41-3', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('lattice', version = '0.20-35', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('gridExtra', version = '2.2.1', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('ggthemes', version = '3.4.0', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('ggplot2', version = '2.2.1', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('car', version = '2.1-5', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('reshape', version = '0.8.6', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('jsonlite', version = '1.5', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('knitr', version = '1.16', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('curl', version = '2.8.1', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('openssl', version = '0.9.7', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('mime', version = '0.5', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('R6', version = '2.2.2', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('stringr', version = '1.2.0', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('purrr', version = '0.2.3', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('RODBC', version = '1.3-15', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('httr', version = '1.3.1', repos = 'https://cran.r-project.org')" && \
    Rscript -e "remotes::install_version('RODBCext', version = '0.3.1', repos = 'https://cran.r-project.org')"
