################################################################################
#                                                                              #
#                                 {o,o}                                        #
#                                 |)__)                                        #
#                                 -"-"-                                        #
#                                                                              #
################################################################################
#
#
#
#################################---FROM---#####################################

FROM ubuntu

################################################################################

#################################---ENV---######################################

ENV DEBIAN_FRONTEND=noninteractive
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

################################################################################

################################---BUILD---#####################################

RUN apt-get update; \
    apt-get install -y openssl \
      build-essential \
      wget \
      xmlsec1 \
      libssl-dev \
      python3 \
      python3-pip; \
    apt-get clean

RUN pip3 install -U pip flask

################################################################################

################################---EXPOSE---####################################

EXPOSE 80

################################################################################

#################################---CMD---######################################

CMD  flask run

################################################################################
