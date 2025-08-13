#!/bin/bash

current_dir=$( cd $(dirname ${BASH_SOURCE[0]}) && pwd )
src_dir=${current_dir}
build_dir=${current_dir}/build
install_dir=${current_dir}/output

cmake -S ${src_dir} -B ${build_dir}
cmake --build ${build_dir} -j 4
cmake --install ${build_dir} --prefix ${install_dir}
