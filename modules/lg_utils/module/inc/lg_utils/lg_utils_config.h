/**************************************************************************//**
 *
 * @file
 * @brief lg_utils Configuration Header
 *
 * @addtogroup lg_utils-config
 * @{
 *
 *****************************************************************************/
#ifndef __LG_UTILS_CONFIG_H__
#define __LG_UTILS_CONFIG_H__

#ifdef GLOBAL_INCLUDE_CUSTOM_CONFIG
#include <global_custom_config.h>
#endif
#ifdef LG_UTILS_INCLUDE_CUSTOM_CONFIG
#include <lg_utils_custom_config.h>
#endif

/* <auto.start.cdefs(LG_UTILS_CONFIG_HEADER).header> */
#include <AIM/aim.h>
/**
 * LG_UTILS_CONFIG_INCLUDE_LOGGING
 *
 * Include or exclude logging. */


#ifndef LG_UTILS_CONFIG_INCLUDE_LOGGING
#define LG_UTILS_CONFIG_INCLUDE_LOGGING 1
#endif

/**
 * LG_UTILS_CONFIG_LOG_OPTIONS_DEFAULT
 *
 * Default enabled log options. */


#ifndef LG_UTILS_CONFIG_LOG_OPTIONS_DEFAULT
#define LG_UTILS_CONFIG_LOG_OPTIONS_DEFAULT AIM_LOG_OPTIONS_DEFAULT
#endif

/**
 * LG_UTILS_CONFIG_LOG_BITS_DEFAULT
 *
 * Default enabled log bits. */


#ifndef LG_UTILS_CONFIG_LOG_BITS_DEFAULT
#define LG_UTILS_CONFIG_LOG_BITS_DEFAULT AIM_LOG_BITS_DEFAULT
#endif

/**
 * LG_UTILS_CONFIG_LOG_CUSTOM_BITS_DEFAULT
 *
 * Default enabled custom log bits. */


#ifndef LG_UTILS_CONFIG_LOG_CUSTOM_BITS_DEFAULT
#define LG_UTILS_CONFIG_LOG_CUSTOM_BITS_DEFAULT 0
#endif

/**
 * LG_UTILS_CONFIG_PORTING_STDLIB
 *
 * Default all porting macros to use the C standard libraries. */


#ifndef LG_UTILS_CONFIG_PORTING_STDLIB
#define LG_UTILS_CONFIG_PORTING_STDLIB 1
#endif

/**
 * LG_UTILS_CONFIG_PORTING_INCLUDE_STDLIB_HEADERS
 *
 * Include standard library headers for stdlib porting macros. */


#ifndef LG_UTILS_CONFIG_PORTING_INCLUDE_STDLIB_HEADERS
#define LG_UTILS_CONFIG_PORTING_INCLUDE_STDLIB_HEADERS LG_UTILS_CONFIG_PORTING_STDLIB
#endif

/**
 * LG_UTILS_CONFIG_INCLUDE_UCLI
 *
 * Include generic uCli support. */


#ifndef LG_UTILS_CONFIG_INCLUDE_UCLI
#define LG_UTILS_CONFIG_INCLUDE_UCLI 0
#endif



/**
 * All compile time options can be queried or displayed
 */

/** Configuration settings structure. */
typedef struct lg_utils_config_settings_s {
    /** name */
    const char* name;
    /** value */
    const char* value;
} lg_utils_config_settings_t;

/** Configuration settings table. */
/** lg_utils_config_settings table. */
extern lg_utils_config_settings_t lg_utils_config_settings[];

/**
 * @brief Lookup a configuration setting.
 * @param setting The name of the configuration option to lookup.
 */
const char* lg_utils_config_lookup(const char* setting);

/**
 * @brief Show the compile-time configuration.
 * @param pvs The output stream.
 */
int lg_utils_config_show(struct aim_pvs_s* pvs);

/* <auto.end.cdefs(LG_UTILS_CONFIG_HEADER).header> */

#include "lg_utils_porting.h"

#endif /* __LG_UTILS_CONFIG_H__ */
/* @} */