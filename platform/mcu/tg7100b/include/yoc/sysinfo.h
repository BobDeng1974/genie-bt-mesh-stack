/*
 * Copyright (C) 2017 C-SKY Microsystems Co., Ltd. All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef YOC_SYSINFO_H
#define YOC_SYSINFO_H

#include <aos/version.h>

/**
 * Get aos device id(id2/cid).
 *
 * @return  device name success, 0 failure.
 */
char *aos_get_device_id(void);

/**
 * Get yoc get imsi.
 *
 * @return  imsi string.
 */
const char *aos_get_imsi(void);

/**
 * Get yoc get imei.
 *
 * @return  imei string.
 */
const char *aos_get_imei(void);


#endif /* AOS_VERSION_H */

