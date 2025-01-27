#=============================================================================
# Copyright 2022 NVIDIA Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#=============================================================================

# Use CPM to find or clone thrust
function(find_or_configure_thrust)
    message("[xlc_todo_delete] begin in find_or_configure_thrust")
    include(${rapids-cmake-dir}/cpm/thrust.cmake)
    message("[xlc_todo_delete] finished include thrust.cmake")

    rapids_cpm_thrust(NAMESPACE legate
                      BUILD_EXPORT_SET legate-core-exports
                      INSTALL_EXPORT_SET legate-core-exports)
    message("[xlc_todo_delete] finished rapids_cpm_thrust")
endfunction()

find_or_configure_thrust()
