# Copyright (c) 2023 Institute of Parallel And Distributed Systems (IPADS), Shanghai Jiao Tong University (SJTU)
# Licensed under the Mulan PSL v2.
# You can use this software according to the terms and conditions of the Mulan PSL v2.
# You may obtain a copy of Mulan PSL v2 at:
#     http://license.coscl.org.cn/MulanPSL2
# THIS SOFTWARE IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OF ANY KIND, EITHER EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO NON-INFRINGEMENT, MERCHANTABILITY OR FIT FOR A PARTICULAR
# PURPOSE.
# See the Mulan PSL v2 for more details.

file(GLOB uiutil_src "src/*.c")

add_library(uiutil SHARED ${uiutil_src})
chcore_target_include_and_export_directory(uiutil PUBLIC include)
chcore_target_include_and_export_directory(uiutil PUBLIC ../include)
target_link_libraries(uiutil PRIVATE pipe)
message(STATUS "Library external_lib linked with my_app")
