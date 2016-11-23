FROM sorear/fedora-riscv-wip:latest
MAINTAINER Nicolas Ojeda Bar <n.oje.bar@gmail.com>
RUN dnf install -y gcc make patchutils git
RUN git config --global pack.threads 1
RUN git clone https://github.com/nojb/riscv-ocaml
RUN cd riscv-ocaml && ./configure && make world.opt && make install
