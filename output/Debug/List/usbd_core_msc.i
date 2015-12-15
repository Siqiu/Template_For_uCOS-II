#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\src\\usbd_core_msc.c"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
//#include <RTL.h>
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\rl_usb.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */







#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */




  #pragma system_include


#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ycheck.h"
/* ycheck.h internal checking header file. */
/* Copyright 2005-2010 IAR Systems AB. */

/* Note that there is no include guard for this header. This is intentional. */


  #pragma system_include


/* __INTRINSIC
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that intrinsic support could be turned off
 * individually for each file.
 */










/* __AEABI_PORTABILITY_INTERNAL_LEVEL
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that ABI support could be turned off/on
 * individually for each file.
 *
 * Possible values for this preprocessor symbol:
 *
 * 0 - ABI portability mode is disabled.
 *
 * 1 - ABI portability mode (version 1) is enabled.
 *
 * All other values are reserved for future use.
 */






#line 67 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ycheck.h"




/* A definiton for a function of what effects it has.
   NS  = no_state, i.e. it uses no internal or external state. It may write
         to errno though
   NE  = no_state, no_errno,  i.e. it uses no internal or external state,
         not even writing to errno. 
   NRx = no_read(x), i.e. it doesn't read through pointer parameter x.
   NWx = no_write(x), i.e. it doesn't write through pointer parameter x.
*/

#line 99 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ycheck.h"









#line 11 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"
/* yvals.h internal configuration header file. */
/* Copyright 2001-2010 IAR Systems AB. */





  #pragma system_include


#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ycheck.h"
/* ycheck.h internal checking header file. */
/* Copyright 2005-2010 IAR Systems AB. */

/* Note that there is no include guard for this header. This is intentional. */


  #pragma system_include


/* __INTRINSIC
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that intrinsic support could be turned off
 * individually for each file.
 */










/* __AEABI_PORTABILITY_INTERNAL_LEVEL
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that ABI support could be turned off/on
 * individually for each file.
 *
 * Possible values for this preprocessor symbol:
 *
 * 0 - ABI portability mode is disabled.
 *
 * 1 - ABI portability mode (version 1) is enabled.
 *
 * All other values are reserved for future use.
 */






#line 67 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ycheck.h"

#line 12 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"

                /* Convenience macros */









/* Used to refer to '__aeabi' symbols in the library. */ 


                /* Versions */










/*
 * Support for some C99 or other symbols
 *
 * This setting makes available some macros, functions, etc that are
 * beneficial.
 *
 * Default is to include them.
 *
 * Disabling this in C++ mode will not compile (some C++ functions uses C99
 * functionality).
 */


  /* Default turned on when compiling C++, EC++, or C99. */
#line 59 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"





#line 70 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"

                /* Configuration */
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Defaults.h"
/***************************************************
 *
 * DLib_Defaults.h is the library configuration manager.
 *
 * Copyright 2003-2010 IAR Systems AB.  
 *
 * This configuration header file performs the following tasks:
 *
 * 1. Includes the configuration header file, defined by _DLIB_CONFIG_FILE,
 *    that sets up a particular runtime environment.
 *
 * 2. Includes the product configuration header file, DLib_Product.h, that
 *    specifies default values for the product and makes sure that the
 *    configuration is valid.
 *
 * 3. Sets up default values for all remaining configuration symbols.
 *
 * This configuration header file, the one defined by _DLIB_CONFIG_FILE, and
 * DLib_Product.h configures how the runtime environment should behave. This
 * includes all system headers and the library itself, i.e. all system headers
 * includes this configuration header file, and the library has been built
 * using this configuration header file.
 *
 ***************************************************
 *
 * DO NOT MODIFY THIS FILE!
 *
 ***************************************************/





  #pragma system_include


/* Include the main configuration header file. */
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Config_Normal.h"
/* Customer-specific DLib configuration. */
/* Copyright (C) 2003 IAR Systems.  All rights reserved. */





  #pragma system_include


/* No changes to the defaults. */

#line 40 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Defaults.h"
  /* _DLIB_CONFIG_FILE_STRING is the quoted variant of above */
#line 47 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Defaults.h"

/* Include the product specific header file. */
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Product.h"




   #pragma system_include



/*********************************************************************
*
*       Configuration
*
*********************************************************************/

/* Wide character and multi byte character support in library.
 * This is not allowed to vary over configurations, since math-library
 * is built with wide character support.
 */


/* ARM uses the large implementation of DLib */


/* This ensures that the standard header file "string.h" includes
 * the Arm-specific file "DLib_Product_string.h". */


/* This ensures that the standard header file "fenv.h" includes
 * the Arm-specific file "DLib_Product_fenv.h". */


/* Max buffer used for swap in qsort */




/* Enable system locking  */
#line 45 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Product.h"

/* Enable AEABI support */


/* Enable rtmodel for setjump buffer size */


/* Enable parsing of hex floats */






/* Special placement for locale structures when building ropi libraries */




/* CPP-library uses software floatingpoint interface */


/* Use speedy implementation of floats (simple quad). */


/* Configure generic ELF init routines. */
#line 99 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Product.h"







#line 51 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Defaults.h"



/*
 * The remainder of the file sets up defaults for a number of
 * configuration symbols, each corresponds to a feature in the
 * libary.
 *
 * The value of the symbols should either be 1, if the feature should
 * be supported, or 0 if it shouldn't. (Except where otherwise
 * noted.)
 */


/*
 * Small or Large target
 *
 * This define determines whether the target is large or small. It must be 
 * setup in the DLib_Product header or in the compiler itself.
 *
 * For a small target some functionality in the library will not deliver 
 * the best available results. For instance the _accurate variants will not use
 * the extra precision packet for large arguments.
 * 
 */







/*
 * File handling
 *
 * Determines whether FILE descriptors and related functions exists or not.
 * When this feature is selected, i.e. set to 1, then FILE descriptors and
 * related functions (e.g. fprintf, fopen) exist. All files, even stdin,
 * stdout, and stderr will then be handled with a file system mechanism that
 * buffers files before accessing the lowlevel I/O interface (__open, __read,
 * __write, etc).
 *
 * If not selected, i.e. set to 0, then FILE descriptors and related functions
 * (e.g. fprintf, fopen) does not exist. All functions that normally uses
 * stderr will use stdout instead. Functions that uses stdout and stdin (like
 * printf and scanf) will access the lowlevel I/O interface directly (__open,
 * __read, __write, etc), i.e. there will not be any buffering.
 *
 * The default is not to have support for FILE descriptors.
 */





/*
 * Use static buffers for stdout
 *
 * This setting controls whether the stream stdout uses a static 80 bytes
 * buffer or uses a one byte buffer allocated in the file descriptor. This
 * setting is only applicable if the FILE descriptors are enabled above.
 *
 * Default is to use a static 80 byte buffer.
 */





/*
 * Support of locale interface
 *
 * "Locale" is the system in C that support language- and
 * contry-specific settings for a number of areas, including currency
 * symbols, date and time, and multibyte encodings.
 *
 * This setting determines whether the locale interface exist or not.
 * When this feature is selected, i.e. set to 1, the locale interface exist
 * (setlocale, etc). A number of preselected locales can be activated during
 * runtime. The preselected locales and encodings is choosen by defining any
 * number of _LOCALE_USE_xxx and _ENCODING_USE_xxx symbols. The application
 * will start with the "C" locale choosen. (Single byte encoding is always
 * supported in this mode.)
 *
 *
 * If not selected, i.e. set to 0, the locale interface (setlocale, etc) does
 * not exist. One preselected locale and one preselected encoding is then used
 * directly. That locale can not be changed during runtime. The preselected
 * locale and encoding is choosen by defining at most one of _LOCALE_USE_xxx
 * and at most one of _ENCODING_USE_xxx. The default is to use the "C" locale
 * and the single byte encoding, respectively.
 *
 * The default is not to have support for the locale interface with the "C"
 * locale and the single byte encoding.
 *
 * Supported locales
 * -----------------
 * _LOCALE_USE_C                  C standard locale (the default)
 * _LOCALE_USE_POSIX ISO-8859-1   Posix locale
 * _LOCALE_USE_CS_CZ ISO-8859-2   Czech language locale for Czech Republic
 * _LOCALE_USE_DA_DK ISO-8859-1   Danish language locale for Denmark
 * _LOCALE_USE_DA_EU ISO-8859-15  Danish language locale for Europe
 * _LOCALE_USE_DE_AT ISO-8859-1   German language locale for Austria
 * _LOCALE_USE_DE_BE ISO-8859-1   German language locale for Belgium
 * _LOCALE_USE_DE_CH ISO-8859-1   German language locale for Switzerland
 * _LOCALE_USE_DE_DE ISO-8859-1   German language locale for Germany
 * _LOCALE_USE_DE_EU ISO-8859-15  German language locale for Europe
 * _LOCALE_USE_DE_LU ISO-8859-1   German language locale for Luxemburg
 * _LOCALE_USE_EL_EU ISO-8859-7x  Greek language locale for Europe
 *                                (Euro symbol added)
 * _LOCALE_USE_EL_GR ISO-8859-7   Greek language locale for Greece
 * _LOCALE_USE_EN_AU ISO-8859-1   English language locale for Australia
 * _LOCALE_USE_EN_CA ISO-8859-1   English language locale for Canada
 * _LOCALE_USE_EN_DK ISO_8859-1   English language locale for Denmark
 * _LOCALE_USE_EN_EU ISO-8859-15  English language locale for Europe
 * _LOCALE_USE_EN_GB ISO-8859-1   English language locale for United Kingdom
 * _LOCALE_USE_EN_IE ISO-8859-1   English language locale for Ireland
 * _LOCALE_USE_EN_NZ ISO-8859-1   English language locale for New Zealand
 * _LOCALE_USE_EN_US ISO-8859-1   English language locale for USA
 * _LOCALE_USE_ES_AR ISO-8859-1   Spanish language locale for Argentina
 * _LOCALE_USE_ES_BO ISO-8859-1   Spanish language locale for Bolivia
 * _LOCALE_USE_ES_CL ISO-8859-1   Spanish language locale for Chile
 * _LOCALE_USE_ES_CO ISO-8859-1   Spanish language locale for Colombia
 * _LOCALE_USE_ES_DO ISO-8859-1   Spanish language locale for Dominican Republic
 * _LOCALE_USE_ES_EC ISO-8859-1   Spanish language locale for Equador
 * _LOCALE_USE_ES_ES ISO-8859-1   Spanish language locale for Spain
 * _LOCALE_USE_ES_EU ISO-8859-15  Spanish language locale for Europe
 * _LOCALE_USE_ES_GT ISO-8859-1   Spanish language locale for Guatemala
 * _LOCALE_USE_ES_HN ISO-8859-1   Spanish language locale for Honduras
 * _LOCALE_USE_ES_MX ISO-8859-1   Spanish language locale for Mexico
 * _LOCALE_USE_ES_PA ISO-8859-1   Spanish language locale for Panama
 * _LOCALE_USE_ES_PE ISO-8859-1   Spanish language locale for Peru
 * _LOCALE_USE_ES_PY ISO-8859-1   Spanish language locale for Paraguay
 * _LOCALE_USE_ES_SV ISO-8859-1   Spanish language locale for Salvador
 * _LOCALE_USE_ES_US ISO-8859-1   Spanish language locale for USA
 * _LOCALE_USE_ES_UY ISO-8859-1   Spanish language locale for Uruguay
 * _LOCALE_USE_ES_VE ISO-8859-1   Spanish language locale for Venezuela
 * _LOCALE_USE_ET_EE ISO-8859-1   Estonian language for Estonia
 * _LOCALE_USE_EU_ES ISO-8859-1   Basque language locale for Spain
 * _LOCALE_USE_FI_EU ISO-8859-15  Finnish language locale for Europe
 * _LOCALE_USE_FI_FI ISO-8859-1   Finnish language locale for Finland
 * _LOCALE_USE_FO_FO ISO-8859-1   Faroese language locale for Faroe Islands
 * _LOCALE_USE_FR_BE ISO-8859-1   French language locale for Belgium
 * _LOCALE_USE_FR_CA ISO-8859-1   French language locale for Canada
 * _LOCALE_USE_FR_CH ISO-8859-1   French language locale for Switzerland
 * _LOCALE_USE_FR_EU ISO-8859-15  French language locale for Europe
 * _LOCALE_USE_FR_FR ISO-8859-1   French language locale for France
 * _LOCALE_USE_FR_LU ISO-8859-1   French language locale for Luxemburg
 * _LOCALE_USE_GA_EU ISO-8859-15  Irish language locale for Europe
 * _LOCALE_USE_GA_IE ISO-8859-1   Irish language locale for Ireland
 * _LOCALE_USE_GL_ES ISO-8859-1   Galician language locale for Spain
 * _LOCALE_USE_HR_HR ISO-8859-2   Croatian language locale for Croatia
 * _LOCALE_USE_HU_HU ISO-8859-2   Hungarian language locale for Hungary
 * _LOCALE_USE_ID_ID ISO-8859-1   Indonesian language locale for Indonesia
 * _LOCALE_USE_IS_EU ISO-8859-15  Icelandic language locale for Europe
 * _LOCALE_USE_IS_IS ISO-8859-1   Icelandic language locale for Iceland
 * _LOCALE_USE_IT_EU ISO-8859-15  Italian language locale for Europe
 * _LOCALE_USE_IT_IT ISO-8859-1   Italian language locale for Italy
 * _LOCALE_USE_IW_IL ISO-8859-8   Hebrew language locale for Israel
 * _LOCALE_USE_KL_GL ISO-8859-1   Greenlandic language locale for Greenland
 * _LOCALE_USE_LT_LT   BALTIC     Lithuanian languagelocale for Lithuania
 * _LOCALE_USE_LV_LV   BALTIC     Latvian languagelocale for Latvia
 * _LOCALE_USE_NL_BE ISO-8859-1   Dutch language locale for Belgium
 * _LOCALE_USE_NL_EU ISO-8859-15  Dutch language locale for Europe
 * _LOCALE_USE_NL_NL ISO-8859-9   Dutch language locale for Netherlands
 * _LOCALE_USE_NO_EU ISO-8859-15  Norwegian language locale for Europe
 * _LOCALE_USE_NO_NO ISO-8859-1   Norwegian language locale for Norway
 * _LOCALE_USE_PL_PL ISO-8859-2   Polish language locale for Poland
 * _LOCALE_USE_PT_BR ISO-8859-1   Portugese language locale for Brazil
 * _LOCALE_USE_PT_EU ISO-8859-15  Portugese language locale for Europe
 * _LOCALE_USE_PT_PT ISO-8859-1   Portugese language locale for Portugal
 * _LOCALE_USE_RO_RO ISO-8859-2   Romanian language locale for Romania
 * _LOCALE_USE_RU_RU ISO-8859-5   Russian language locale for Russia
 * _LOCALE_USE_SL_SI ISO-8859-2   Slovenian language locale for Slovenia
 * _LOCALE_USE_SV_EU ISO-8859-15  Swedish language locale for Europe
 * _LOCALE_USE_SV_FI ISO-8859-1   Swedish language locale for Finland
 * _LOCALE_USE_SV_SE ISO-8859-1   Swedish language locale for Sweden
 * _LOCALE_USE_TR_TR ISO-8859-9   Turkish language locale for Turkey
 *
 *  Supported encodings
 *  -------------------
 * n/a                            Single byte (used if no other is defined).
 * _ENCODING_USE_UTF8             UTF8 encoding.
 */






/* We need to have the "C" locale if we have full locale support. */






/*
 * Support of multibytes in printf- and scanf-like functions
 *
 * This is the default value for _DLIB_PRINTF_MULTIBYTE and
 * _DLIB_SCANF_MULTIBYTE. See them for a description.
 *
 * Default is to not have support for multibytes in printf- and scanf-like
 * functions.
 */






/*
 * Throw handling in the EC++ library
 *
 * This setting determines what happens when the EC++ part of the library
 * fails (where a normal C++ library 'throws').
 *
 * The following alternatives exists (setting of the symbol):
 * 0                - The application does nothing, i.e. continues with the
 *                    next statement.
 * 1                - The application terminates by calling the 'abort'
 *                    function directly.
 * <anything else>  - An object of class "exception" is created.  This
 *                    object contains a string describing the problem.
 *                    This string is later emitted on "stderr" before
 *                    the application terminates by calling the 'abort'
 *                    function directly.
 *
 * Default is to do nothing.
 */






/*
 * Hexadecimal floating-point numbers in strtod
 *
 * If selected, i.e. set to 1, strtod supports C99 hexadecimal floating-point
 * numbers. This also enables hexadecimal floating-points in internal functions
 * used for converting strings and wide strings to float, double, and long
 * double.
 *
 * If not selected, i.e. set to 0, C99 hexadecimal floating-point numbers
 * aren't supported.
 *
 * Default is not to support hexadecimal floating-point numbers.
 */






/*
 * Printf configuration symbols.
 *
 * All the configuration symbols described further on controls the behaviour
 * of printf, sprintf, and the other printf variants.
 *
 * The library proves four formatters for printf: 'tiny', 'small',
 * 'large', and 'default'.  The setup in this file controls all except
 * 'tiny'.  Note that both small' and 'large' explicitly removes
 * some features.
 */

/*
 * Handle multibytes in printf
 *
 * This setting controls whether multibytes and wchar_ts are supported in
 * printf. Set to 1 to support them, otherwise set to 0.
 *
 * See _DLIB_FORMATTED_MULTIBYTE for the default setting.
 */





/*
 * Long long formatting in printf
 *
 * This setting controls long long support (%lld) in printf. Set to 1 to
 * support it, otherwise set to 0.

 * Note, if long long should not be supported and 'intmax_t' is larger than
 * an ordinary 'long', then %jd and %jn will not be supported.
 *
 * Default is to support long long formatting.
 */

#line 351 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Defaults.h"






/*
 * Floating-point formatting in printf
 *
 * This setting controls whether printf supports floating-point formatting.
 * Set to 1 to support them, otherwise set to 0.
 *
 * Default is to support floating-point formatting.
 */





/*
 * Hexadecimal floating-point formatting in printf
 *
 * This setting controls whether the %a format, i.e. the output of
 * floating-point numbers in the C99 hexadecimal format. Set to 1 to support
 * it, otherwise set to 0.
 *
 * Default is to support %a in printf.
 */





/*
 * Output count formatting in printf
 *
 * This setting controls whether the output count specifier (%n) is supported
 * or not in printf. Set to 1 to support it, otherwise set to 0.
 *
 * Default is to support %n in printf.
 */





/*
 * Support of qualifiers in printf
 *
 * This setting controls whether qualifiers that enlarges the input value
 * [hlLjtz] is supported in printf or not. Set to 1 to support them, otherwise
 * set to 0. See also _DLIB_PRINTF_INT_TYPE_IS_INT and
 * _DLIB_PRINTF_INT_TYPE_IS_LONG.
 *
 * Default is to support [hlLjtz] qualifiers in printf.
 */





/*
 * Support of flags in printf
 *
 * This setting controls whether flags (-+ #0) is supported in printf or not.
 * Set to 1 to support them, otherwise set to 0.
 *
 * Default is to support flags in printf.
 */





/*
 * Support widths and precisions in printf
 *
 * This setting controls whether widths and precisions are supported in printf.
 * Set to 1 to support them, otherwise set to 0.
 *
 * Default is to support widths and precisions in printf.
 */





/*
 * Support of unsigned integer formatting in printf
 *
 * This setting controls whether unsigned integer formatting is supported in
 * printf. Set to 1 to support it, otherwise set to 0.
 *
 * Default is to support unsigned integer formatting in printf.
 */





/*
 * Support of signed integer formatting in printf
 *
 * This setting controls whether signed integer formatting is supported in
 * printf. Set to 1 to support it, otherwise set to 0.
 *
 * Default is to support signed integer formatting in printf.
 */





/*
 * Support of formatting anything larger than int in printf
 *
 * This setting controls if 'int' should be used internally in printf, rather
 * than the largest existing integer type. If 'int' is used, any integer or
 * pointer type formatting use 'int' as internal type even though the
 * formatted type is larger. Set to 1 to use 'int' as internal type, otherwise
 * set to 0.
 *
 * See also next configuration.
 *
 * Default is to internally use largest existing internally type.
 */





/*
 * Support of formatting anything larger than long in printf
 *
 * This setting controls if 'long' should be used internally in printf, rather
 * than the largest existing integer type. If 'long' is used, any integer or
 * pointer type formatting use 'long' as internal type even though the
 * formatted type is larger. Set to 1 to use 'long' as internal type,
 * otherwise set to 0.
 *
 * See also previous configuration.
 *
 * Default is to internally use largest existing internally type.
 */









/*
 * Emit a char a time in printf
 *
 * This setting controls internal output handling. If selected, i.e. set to 1,
 * then printf emits one character at a time, which requires less code but
 * can be slightly slower for some types of output.
 *
 * If not selected, i.e. set to 0, then printf buffers some outputs.
 *
 * Note that it is recommended to either use full file support (see
 * _DLIB_FILE_DESCRIPTOR) or -- for debug output -- use the linker
 * option "-e__write_buffered=__write" to enable buffered I/O rather
 * than deselecting this feature.
 */






/*
 * Scanf configuration symbols.
 *
 * All the configuration symbols described here controls the
 * behaviour of scanf, sscanf, and the other scanf variants.
 *
 * The library proves three formatters for scanf: 'small', 'large',
 * and 'default'.  The setup in this file controls all, however both
 * 'small' and 'large' explicitly removes some features.
 */

/*
 * Handle multibytes in scanf
 *
 * This setting controls whether multibytes and wchar_t:s are supported in
 * scanf. Set to 1 to support them, otherwise set to 0.
 *
 * See _DLIB_FORMATTED_MULTIBYTE for the default.
 */





/*
 * Long long formatting in scanf
 *
 * This setting controls whether scanf supports long long support (%lld). It
 * also controls, if 'intmax_t' is larger than an ordinary 'long', i.e. how
 * the %jd and %jn specifiers behaves. Set to 1 to support them, otherwise set
 * to 0.
 *
 * Default is to support long long formatting in scanf.
 */

#line 566 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Defaults.h"





/*
 * Support widths in scanf
 *
 * This controls whether scanf supports widths. Set to 1 to support them,
 * otherwise set to 0.
 *
 * Default is to support widths in scanf.
 */





/*
 * Support qualifiers [hjltzL] in scanf
 *
 * This setting controls whether scanf supports qualifiers [hjltzL] or not. Set
 * to 1 to support them, otherwise set to 0.
 *
 * Default is to support qualifiers in scanf.
 */





/*
 * Support floating-point formatting in scanf
 *
 * This setting controls whether scanf supports floating-point formatting. Set
 * to 1 to support them, otherwise set to 0.
 *
 * Default is to support floating-point formatting in scanf.
 */





/*
 * Support output count formatting (%n)
 *
 * This setting controls whether scanf supports output count formatting (%n).
 * Set to 1 to support it, otherwise set to 0.
 *
 * Default is to support output count formatting in scanf.
 */





/*
 * Support scansets ([]) in scanf
 *
 * This setting controls whether scanf supports scansets ([]) or not. Set to 1
 * to support them, otherwise set to 0.
 *
 * Default is to support scansets in scanf.
 */





/*
 * Support signed integer formatting in scanf
 *
 * This setting controls whether scanf supports signed integer formatting or
 * not. Set to 1 to support them, otherwise set to 0.
 *
 * Default is to support signed integer formatting in scanf.
 */





/*
 * Support unsigned integer formatting in scanf
 *
 * This setting controls whether scanf supports unsigned integer formatting or
 * not. Set to 1 to support them, otherwise set to 0.
 *
 * Default is to support unsigned integer formatting in scanf.
 */





/*
 * Support assignment suppressing [*] in scanf
 *
 * This setting controls whether scanf supports assignment suppressing [*] or
 * not. Set to 1 to support them, otherwise set to 0.
 *
 * Default is to support assignment suppressing in scanf.
 */





/*
 * Handle multibytes in asctime and strftime.
 *
 * This setting controls whether multibytes and wchar_ts are
 * supported.Set to 1 to support them, otherwise set to 0.
 *
 * See _DLIB_FORMATTED_MULTIBYTE for the default setting.
 */





/*
 * True if "qsort" should be implemented using bubble sort.
 *
 * Bubble sort is less efficient than quick sort but requires less RAM
 * and ROM resources.
 */





/*
 * Set Buffert size used in qsort
 */





/*
 * The default "rand" function uses an array of 32 long:s of memory to
 * store the current state.
 *
 * The simple "rand" function uses only a single long. However, the
 * quality of the generated psuedo-random numbers are not as good as
 * the default implementation.
 */





/*
 * Wide character and multi byte character support in library.
 */





/*
 * Set attributes on the function used by the C-SPY debug interface to set a
 * breakpoint in.
 */





/*
 * Support threading in the library
 *
 * 0    No thread support
 * 1    Thread support with a, b, and d.
 * 2    Thread support with a, b, and e.
 * 3    Thread support with all thread-local storage in a dynamically allocated
 *        memory area and a, and b.
 *      a. Lock on heap accesses
 *      b. Optional lock on file accesses (see _DLIB_FILE_OP_LOCKS below)
 *      d. Use an external thread-local storage interface for all the
 *         libraries static and global variables.
 *      e. Static and global variables aren't safe for access from several
 *         threads.
 *
 * Note that if locks are used the following symbols must be defined:
 *
 *   _DLIB_THREAD_LOCK_ONCE_TYPE
 *   _DLIB_THREAD_LOCK_ONCE_MACRO(control_variable, init_function)
 *   _DLIB_THREAD_LOCK_ONCE_TYPE_INIT
 *
 * They will be used to initialize the needed locks only once. TYPE is the
 * type for the static control variable, MACRO is the expression that will be
 * evaluated at each usage of a lock, and INIT is the initializer for the
 * control variable.
 *
 * Note that if thread model 3 is used the symbol _DLIB_TLS_POINTER must be
 * defined. It is a thread local pointer to a dynamic memory area that
 * contains all used TLS variables for the library. Optionally the following
 * symbols can be defined as well (default is to use the default const data
 * and data memories):
 *
 *   _DLIB_TLS_INITIALIZER_MEMORY The memory to place the initializers for the
 *                                TLS memory area
 *   _DLIB_TLS_MEMORY             The memory to use for the TLS memory area. A
 *                                pointer to this memory must be castable to a
 *                                default pointer and back.
 *   _DLIB_TLS_REQUIRE_INIT       Set to 1 to require __cstart_init_tls
 *                                when needed to initialize the TLS data
 *                                segment for the main thread.
 *   _DLIB_TLS_SEGMENT_DATA       The name of the TLS RAM data segment
 *   _DLIB_TLS_SEGMENT_INIT       The name of the used to initialize the
 *                                TLS data segment.
 *
 * See DLib_Threads.h for a description of what interfaces needs to be
 * defined for thread support.
 */





/*
 * Used by products where one runtime library can be used by applications
 * with different data models, in order to reduce the total number of
 * libraries required. Typically, this is used when the pointer types does
 * not change over the data models used, but the placement of data variables
 * or/and constant variables do.
 *
 * If defined, this symbol is typically defined to the memory attribute that
 * is used by the runtime library. The actual define must use a
 * _Pragma("type_attribute = xxx") construct. In the header files, it is used
 * on all statically linked data objects seen by the application.
 */




#line 812 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Defaults.h"


/*
 * Turn on support for the Target-specific ABI. The ABI is based on the
 * ARM AEABI. A target, except ARM, may deviate from it.
 */

#line 826 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Defaults.h"


  /* Possible AEABI deviations */
#line 836 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Defaults.h"

#line 844 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Defaults.h"
  /*
   * The "difunc" table contains information about C++ objects that
   * should be dynamically initialized, where each entry in the table
   * represents an initialization function that should be called. When
   * the symbol _DLIB_AEABI_DIFUNC_CONTAINS_OFFSETS is true, each
   * entry in the table is encoded as an offset from the entry
   * location. When false, the entries contain the actual addresses to
   * call.
   */






/*
 * Turn on usage of a pragma to tell the linker the number of elements used
 * in a setjmp jmp_buf.
 */





/*
 * If true, the product supplies a "DLib_Product_string.h" file that
 * is included from "string.h".
 */





/*
 * Determine whether the math fma routines are fast or not.
 */




/*
 * Rtti support.
 */

#line 899 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Defaults.h"

/*
 * Use the "pointers to short" or "pointers to long" implementation of 
 * the basic floating point routines (like Dnorm, Dtest, Dscale, and Dunscale).
 */




/*
 * Use 64-bit long long as intermediary type in Dtest, and fabs.
 * Default is to do this if long long is 64-bits.
 */




/*
 * Favor speed versus some size enlargements in floating point functions.
 */




/*
 * Include dlmalloc as an alternative heap manager in product.
 *
 * Typically, an application will use a "malloc" heap manager that is
 * relatively small but not that efficient. An application can
 * optionally use the "dlmalloc" package, which provides a more
 * effective "malloc" heap manager, if it is included in the product
 * and supported by the settings.
 *
 * See the product documentation on how to use it, and whether or not
 * it is included in the product.
 */

  /* size_t/ptrdiff_t must be a 4 bytes unsigned integer. */
#line 943 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Defaults.h"





/*
 * Allow the 64-bit time_t interface?
 *
 * Default is yes if long long is 64 bits.
 */

  #pragma language = save 
  #pragma language = extended





  #pragma language = restore






/*
 * Is time_t 64 or 32 bits?
 *
 * Default is 32 bits.
 */




/*
 * Do we include math functions that demands lots of constant bytes?
 * (like erf, erfc, expm1, fma, lgamma, tgamma, and *_accurate)
 *
 */




/*
 * Set this to __weak, if supported.
 *
 */
#line 997 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Defaults.h"


/*
 * Deleted options
 *
 */







#line 73 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"











                /* Floating-point */

/*
 * Whenever a floating-point type is equal to another, we try to fold those
 * two types into one. This means that if float == double then we fold float to
 * use double internally. Example sinf(float) will use _Sin(double, uint).
 *
 * _X_FNAME is a redirector for internal support routines. The X can be
 *          D (double), F (float), or L (long double). It redirects by using
 *          another prefix. Example calls to Dtest will be __iar_Dtest,
 *          __iar_FDtest, or __iarLDtest.
 * _X_FUN   is a redirector for functions visible to the customer. As above, the
 *          X can be D, F, or L. It redirects by using another suffix. Example
 *          calls to sin will be sin, sinf, or sinl.
 * _X_TYPE  The type that one type is folded to.
 * _X_PTRCAST is a redirector for a cast operation involving a pointer.
 * _X_CAST  is a redirector for a cast involving the float type.
 *
 * _FLOAT_IS_DOUBLE signals that all internal float routines aren't needed.
 * _LONG_DOUBLE_IS_DOUBLE signals that all internal long double routines
 *                        aren't needed.
 */
#line 147 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"





                /* NAMING PROPERTIES */


/* Has support for fixed point types */




/* Has support for secure functions (printf_s, scanf_s, etc) */
/* Will not compile if enabled */
#line 170 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"

/* Has support for complex C types */




/* If is Embedded C++ language */






/* If is true C++ language */






/* True C++ language setup */
#line 233 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"











                /* NAMESPACE CONTROL */
#line 292 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"









#line 308 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"








#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xencoding_limits.h"
/* xencoding_limits.h internal header file */
/* Copyright 2003-2010 IAR Systems AB.  */





  #pragma system_include


#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ycheck.h"
/* ycheck.h internal checking header file. */
/* Copyright 2005-2010 IAR Systems AB. */

/* Note that there is no include guard for this header. This is intentional. */


  #pragma system_include


/* __INTRINSIC
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that intrinsic support could be turned off
 * individually for each file.
 */










/* __AEABI_PORTABILITY_INTERNAL_LEVEL
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that ABI support could be turned off/on
 * individually for each file.
 *
 * Possible values for this preprocessor symbol:
 *
 * 0 - ABI portability mode is disabled.
 *
 * 1 - ABI portability mode (version 1) is enabled.
 *
 * All other values are reserved for future use.
 */






#line 67 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ycheck.h"

#line 12 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xencoding_limits.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"
/* yvals.h internal configuration header file. */
/* Copyright 2001-2010 IAR Systems AB. */

#line 707 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 13 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xencoding_limits.h"

                                /* Multibyte encoding length. */


#line 24 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xencoding_limits.h"




#line 42 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xencoding_limits.h"

                                /* Utility macro */














#line 317 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"



                /* FLOATING-POINT PROPERTIES */

                /* float properties */
#line 335 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"

                /* double properties */
#line 360 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"

                /* long double properties */
                /* (must be same as double) */




#line 382 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"


                /* INTEGER PROPERTIES */

                                /* MB_LEN_MAX */







  #pragma language=save
  #pragma language=extended
  typedef long long _Longlong;
  typedef unsigned long long _ULonglong;
  #pragma language=restore
#line 405 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"






  typedef unsigned short int _Wchart;
  typedef unsigned short int _Wintt;


#line 424 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"

#line 432 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"

                /* POINTER PROPERTIES */


typedef signed int  _Ptrdifft;
typedef unsigned int     _Sizet;

/* IAR doesn't support restrict  */


                /* stdarg PROPERTIES */
#line 454 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"
  typedef _VA_LIST __Va_list;



__intrinsic __nounwind void __iar_Atexit(void (*)(void));



  typedef struct
  {       /* state of a multibyte translation */
    unsigned int _Wchar;
    unsigned int _State;
  } _Mbstatet;
#line 477 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"










typedef struct
{       /* file position */

  _Longlong _Off;    /* can be system dependent */



  _Mbstatet _Wstate;
} _Fpost;







                /* THREAD AND LOCALE CONTROL */

#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Threads.h"
/***************************************************
 *
 * DLib_Threads.h is the library threads manager.
 *
 * Copyright 2004-2010 IAR Systems AB.  
 *
 * This configuration header file sets up how the thread support in the library
 * should work.
 *
 ***************************************************
 *
 * DO NOT MODIFY THIS FILE!
 *
 ***************************************************/





  #pragma system_include


/*
 * DLib can support a multithreaded environment. The preprocessor symbol 
 * _DLIB_THREAD_SUPPORT governs the support. It can be 0 (no support), 
 * 1 (currently not supported), 2 (locks only), and 3 (simulated TLS and locks).
 */

/*
 * This header sets the following symbols that governs the rest of the
 * library:
 * ------------------------------------------
 * _DLIB_MULTI_THREAD     0 No thread support
 *                        1 Multithread support
 * _DLIB_GLOBAL_VARIABLES 0 Use external TLS interface for the libraries global
 *                          and static variables
 *                        1 Use a lock for accesses to the locale and no 
 *                          security for accesses to other global and static
 *                          variables in the library
 * _DLIB_FILE_OP_LOCKS    0 No file-atomic locks
 *                        1 File-atomic locks

 * _DLIB_COMPILER_TLS     0 No Thread-Local-Storage support in the compiler
 *                        1 Thread-Local-Storage support in the compiler
 * _DLIB_TLS_QUAL         The TLS qualifier, define only if _COMPILER_TLS == 1
 *
 * _DLIB_THREAD_MACRO_SETUP_DONE Whether to use the standard definitions of
 *                               TLS macros defined in xtls.h or the definitions
 *                               are provided here.
 *                        0 Use default macros
 *                        1 Macros defined for xtls.h
 *
 * _DLIB_THREAD_LOCK_ONCE_TYPE
 *                        type for control variable in once-initialization of 
 *                        locks
 * _DLIB_THREAD_LOCK_ONCE_MACRO(control_variable, init_function)
 *                        expression that will be evaluated at each lock access
 *                        to determine if an initialization must be done
 * _DLIB_THREAD_LOCK_ONCE_TYPE_INIT
 *                        initial value for the control variable
 *
 ****************************************************************************
 * Description
 * -----------
 *
 * If locks are to be used (_DLIB_MULTI_THREAD != 0), the following options
 * has to be used in ilink: 
 *   --redirect __iar_Locksyslock=__iar_Locksyslock_mtx
 *   --redirect __iar_Unlocksyslock=__iar_Unlocksyslock_mtx
 *   --redirect __iar_Lockfilelock=__iar_Lockfilelock_mtx
 *   --redirect __iar_Unlockfilelock=__iar_Unlockfilelock_mtx
 *   --keep     __iar_Locksyslock_mtx
 * and, if C++ is used, also:
 *   --redirect __iar_Initdynamicfilelock=__iar_Initdynamicfilelock_mtx
 *   --redirect __iar_Dstdynamicfilelock=__iar_Dstdynamicfilelock_mtx
 *   --redirect __iar_Lockdynamicfilelock=__iar_Lockdynamicfilelock_mtx
 *   --redirect __iar_Unlockdynamicfilelock=__iar_Unlockdynamicfilelock_mtx
 * Xlink uses similar options (-e and -g). The following lock interface must
 * also be implemented: 
 *   typedef void *__iar_Rmtx;                   // Lock info object
 *
 *   void __iar_system_Mtxinit(__iar_Rmtx *);    // Initialize a system lock
 *   void __iar_system_Mtxdst(__iar_Rmtx *);     // Destroy a system lock
 *   void __iar_system_Mtxlock(__iar_Rmtx *);    // Lock a system lock
 *   void __iar_system_Mtxunlock(__iar_Rmtx *);  // Unlock a system lock
 * The interface handles locks for the heap, the locale, the file system
 * structure, the initialization of statics in functions, etc. 
 *
 * The following lock interface is optional to be implemented:
 *   void __iar_file_Mtxinit(__iar_Rmtx *);    // Initialize a file lock
 *   void __iar_file_Mtxdst(__iar_Rmtx *);     // Destroy a file lock
 *   void __iar_file_Mtxlock(__iar_Rmtx *);    // Lock a file lock
 *   void __iar_file_Mtxunlock(__iar_Rmtx *);  // Unlock a file lock
 * The interface handles locks for each file stream.
 * 
 * These three once-initialization symbols must also be defined, if the 
 * default initialization later on in this file doesn't work (done in 
 * DLib_product.h):
 *
 *   _DLIB_THREAD_LOCK_ONCE_TYPE
 *   _DLIB_THREAD_LOCK_ONCE_MACRO(control_variable, init_function)
 *   _DLIB_THREAD_LOCK_ONCE_TYPE_INIT
 *
 * If an external TLS interface is used, the following must
 * be defined:
 *   typedef int __iar_Tlskey_t;
 *   typedef void (*__iar_Tlsdtor_t)(void *);
 *   int __iar_Tlsalloc(__iar_Tlskey_t *, __iar_Tlsdtor_t); 
 *                                                    // Allocate a TLS element
 *   int __iar_Tlsfree(__iar_Tlskey_t);               // Free a TLS element
 *   int __iar_Tlsset(__iar_Tlskey_t, void *);        // Set a TLS element
 *   void *__iar_Tlsget(__iar_Tlskey_t);              // Get a TLS element
 *
 */

/* We don't have a compiler that supports tls declarations */



#line 157 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Threads.h"

  /* Thread support, library supports threaded variables in a user specified
     memory area, locks on heap and on FILE */

  /* See Documentation/ThreadsInternal.html for a description. */





  


#line 176 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Threads.h"





#line 187 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Threads.h"





  #pragma language=save 
  #pragma language=extended
  __intrinsic __nounwind void __iar_dlib_perthread_initialize(void  *);
  __intrinsic __nounwind void  *__iar_dlib_perthread_allocate(void);
  __intrinsic __nounwind void __iar_dlib_perthread_destroy(void);
  __intrinsic __nounwind void __iar_dlib_perthread_deallocate(void  *);









  #pragma segment = "__DLIB_PERTHREAD" 
  #pragma segment = "__DLIB_PERTHREAD_init" 


























#line 242 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Threads.h"

  /* The thread-local variable access function */
  void  *__iar_dlib_perthread_access(void  *);
  #pragma language=restore



























    /* Make sure that each destructor is inserted into _Deallocate_TLS */
  









  /* Internal function declarations. */






  





  
  typedef void *__iar_Rmtx;
  

  
  __intrinsic __nounwind void __iar_system_Mtxinit(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_system_Mtxdst(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_system_Mtxlock(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_system_Mtxunlock(__iar_Rmtx *m);

  __intrinsic __nounwind void __iar_file_Mtxinit(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_file_Mtxdst(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_file_Mtxlock(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_file_Mtxunlock(__iar_Rmtx *m);

  /* Function to destroy the locks. Should be called after atexit and 
     _Close_all. */
  __intrinsic __nounwind void __iar_clearlocks(void);


#line 323 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Threads.h"

  





  

#line 341 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Threads.h"

  typedef unsigned _Once_t;



  













#line 506 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"

#line 516 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"

                /* THREAD-LOCAL STORAGE */
#line 524 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"


                /* MULTITHREAD PROPERTIES */

  
  
  /* The lock interface for DLib to use. */ 
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Locale(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Malloc(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Stream(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Debug(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_StaticGuard(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock(unsigned int);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Locale(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Malloc(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Stream(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Debug(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_StaticGuard(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock(unsigned int);

  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Initdynamicfilelock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Dstdynamicfilelock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Lockdynamicfilelock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlockdynamicfilelock(__iar_Rmtx *);
  
  
#line 564 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"

                /* LOCK MACROS */
#line 572 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"

#line 690 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"

                /* MISCELLANEOUS MACROS AND FUNCTIONS*/





#line 705 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"



/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 12 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"


/* Fixed size types. These are all optional. */

  typedef signed char   int8_t;
  typedef unsigned char uint8_t;



  typedef signed short int   int16_t;
  typedef unsigned short int uint16_t;



  typedef signed int   int32_t;
  typedef unsigned int uint32_t;



  #pragma language=save
  #pragma language=extended
  typedef signed long long int   int64_t;
  typedef unsigned long long int uint64_t;
  #pragma language=restore


/* Types capable of holding at least a certain number of bits.
   These are not optional for the sizes 8, 16, 32, 64. */
typedef signed char   int_least8_t;
typedef unsigned char uint_least8_t;

typedef signed short int   int_least16_t;
typedef unsigned short int uint_least16_t;

typedef signed int   int_least32_t;
typedef unsigned int uint_least32_t;

/* This isn't really optional, but make it so for now. */

  #pragma language=save
  #pragma language=extended
  typedef signed long long int int_least64_t;
  #pragma language=restore


  #pragma language=save
  #pragma language=extended
  typedef unsigned long long int uint_least64_t;
  #pragma language=restore


/* The fastest type holding at least a certain number of bits.
   These are not optional for the size 8, 16, 32, 64.
   For now, the 64 bit size is optional in IAR compilers. */
typedef signed int   int_fast8_t;
typedef unsigned int uint_fast8_t;

typedef signed int   int_fast16_t;
typedef unsigned int uint_fast16_t;

typedef signed int   int_fast32_t;
typedef unsigned int uint_fast32_t;


  #pragma language=save
  #pragma language=extended
  typedef signed long long int int_fast64_t;
  #pragma language=restore


  #pragma language=save
  #pragma language=extended
  typedef unsigned long long int uint_fast64_t;
  #pragma language=restore


/* The integer type capable of holding the largest number of bits. */
#pragma language=save
#pragma language=extended
typedef signed long long int   intmax_t;
typedef unsigned long long int uintmax_t;
#pragma language=restore

/* An integer type large enough to be able to hold a pointer.
   This is optional, but always supported in IAR compilers. */
typedef signed long int   intptr_t;
typedef unsigned long int uintptr_t;

/* An integer capable of holding a pointer to a specific memory type. */



typedef int __data_intptr_t; typedef unsigned int __data_uintptr_t;


/* Minimum and maximum limits. */






























































































/* Macros expanding to integer constants. */

































#line 258 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 24 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\rl_usb.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */



/* General USB header files                                                   */
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_def.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */










#line 32 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_def.h"


typedef signed char     S8;
typedef unsigned char   U8;
typedef short           S16;
typedef unsigned short  U16;
typedef int             S32;
typedef unsigned int    U32;
typedef long long       S64;
typedef unsigned long long U64;
typedef unsigned char   BIT;
typedef unsigned int    BOOL;


/* bmRequestType.Dir */



/* bmRequestType.Type */





/* bmRequestType.Recipient */





/* bmRequestType Definition */
typedef __packed struct _REQUEST_TYPE {
  U8 Recipient : 5;                     /* D4..0: Recipient */
  U8 Type      : 2;                     /* D6..5: Type */
  U8 Dir       : 1;                     /* D7:    Data Phase Txsfer Direction */
} REQUEST_TYPE;

/* USB Standard Request Codes */
#line 81 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_def.h"

/* USB GET_STATUS Bit Values */




/* USB Standard Feature selectors */



/* USB Default Control Pipe Setup Packet */
typedef __packed struct _USB_SETUP_PACKET {
  REQUEST_TYPE bmRequestType;           /* bmRequestType */
  U8  bRequest;                         /* bRequest */
  __packed union {
    U16        wValue;                  /* wValue */
    __packed struct {
      U8         wValueL;
      U8         wValueH;
    };
  };
  __packed union {
    U16        wIndex;                  /* wIndex */
    __packed struct {
      U8         wIndexL;
      U8         wIndexH;
    };
  };
  U16          wLength;                 /* wLength */
} USB_SETUP_PACKET;


/* USB Descriptor Types */
#line 125 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_def.h"

/* USB Device Classes */
#line 139 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_def.h"

/* bmAttributes in Configuration Descriptor */





/* bMaxPower in Configuration Descriptor */


/* bEndpointAddress in Endpoint Descriptor */




/* bmAttributes in Endpoint Descriptor */
#line 170 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_def.h"

/* USB Standard Device Descriptor */
typedef __packed struct _USB_DEVICE_DESCRIPTOR {
  U8  bLength;
  U8  bDescriptorType;
  U16 bcdUSB;
  U8  bDeviceClass;
  U8  bDeviceSubClass;
  U8  bDeviceProtocol;
  U8  bMaxPacketSize0;
  U16 idVendor;
  U16 idProduct;
  U16 bcdDevice;
  U8  iManufacturer;
  U8  iProduct;
  U8  iSerialNumber;
  U8  bNumConfigurations;
} USB_DEVICE_DESCRIPTOR;

/* USB 2.0 Device Qualifier Descriptor */
typedef __packed struct _USB_DEVICE_QUALIFIER_DESCRIPTOR {
  U8  bLength;
  U8  bDescriptorType;
  U16 bcdUSB;
  U8  bDeviceClass;
  U8  bDeviceSubClass;
  U8  bDeviceProtocol;
  U8  bMaxPacketSize0;
  U8  bNumConfigurations;
  U8  bReserved;
} USB_DEVICE_QUALIFIER_DESCRIPTOR;

/* USB Standard Configuration Descriptor */
typedef __packed struct _USB_CONFIGURATION_DESCRIPTOR {
  U8  bLength;
  U8  bDescriptorType;
  U16 wTotalLength;
  U8  bNumInterfaces;
  U8  bConfigurationValue;
  U8  iConfiguration;
  U8  bmAttributes;
  U8  bMaxPower;
} USB_CONFIGURATION_DESCRIPTOR;

/* USB Standard Interface Descriptor */
typedef __packed struct _USB_INTERFACE_DESCRIPTOR {
  U8  bLength;
  U8  bDescriptorType;
  U8  bInterfaceNumber;
  U8  bAlternateSetting;
  U8  bNumEndpoints;
  U8  bInterfaceClass;
  U8  bInterfaceSubClass;
  U8  bInterfaceProtocol;
  U8  iInterface;
} USB_INTERFACE_DESCRIPTOR;

/* USB Standard Endpoint Descriptor */
typedef __packed struct _USB_ENDPOINT_DESCRIPTOR {
  U8  bLength;
  U8  bDescriptorType;
  U8  bEndpointAddress;
  U8  bmAttributes;
  U16 wMaxPacketSize;
  U8  bInterval;
} USB_ENDPOINT_DESCRIPTOR;

/* USB String Descriptor */
typedef __packed struct _USB_STRING_DESCRIPTOR {
  U8  bLength;
  U8  bDescriptorType;
  U16 bString/*[]*/;
} USB_STRING_DESCRIPTOR;

/* USB Common Descriptor */
typedef __packed struct _USB_COMMON_DESCRIPTOR {
  U8  bLength;
  U8  bDescriptorType;
} USB_COMMON_DESCRIPTOR;

/* USB Interface Association Descriptor */
typedef __packed struct _USB_INTERFACE_ASSOCIATION_DESCRIPTOR {
  U8  bLength;
  U8  bDescriptorType;
  U8  bFirstInterface;
  U8  bInterfaceCount;
  U8  bFunctionClass;
  U8  bFunctionSubclass;
  U8  bFunctionProtocol;
  U8  iFunction;
} USB_INTERFACE_ASSOCIATION_DESCRIPTOR;


#line 21 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_cdc.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */



/*------------------------------------------------------------------------------
 *      Definitions  based on usbcdc11.pdf (www.usb.org)
 *----------------------------------------------------------------------------*/
/* Communication device class specification version 1.10 */


/* Communication interface class code */
/* (usbcdc11.pdf, 4.2, Table 15) */


/* Communication interface class subclass codes */
/* (usbcdc11.pdf, 4.3, Table 16) */
#line 38 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_cdc.h"

/* Communication interface class control protocol codes */
/* (usbcdc11.pdf, 4.4, Table 17) */


/* Data interface class code */
/* (usbcdc11.pdf, 4.5, Table 18) */


/* Data interface class protocol codes */
/* (usbcdc11.pdf, 4.7, Table 19) */
#line 61 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_cdc.h"

/* Type values for bDescriptorType field of functional descriptors */
/* (usbcdc11.pdf, 5.2.3, Table 24) */



/* Type values for bDescriptorSubtype field of functional descriptors */
/* (usbcdc11.pdf, 5.2.3, Table 25) */
#line 86 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_cdc.h"

/* CDC class-specific request codes */
/* (usbcdc11.pdf, 6.2, Table 46) */
/* see Table 45 for info about the specific requests. */
#line 125 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_cdc.h"

/* Communication feature selector codes */
/* (usbcdc11.pdf, 6.2.2..6.2.4, Table 47) */



/* Feature Status returned for ABSTRACT_STATE Selector */
/* (usbcdc11.pdf, 6.2.3, Table 48) */




/* Control signal bitmap values for the SetControlLineState request */
/* (usbcdc11.pdf, 6.2.14, Table 51) */



/* CDC class-specific notification codes */
/* (usbcdc11.pdf, 6.3, Table 68) */
/* see Table 67 for Info about class-specific notifications */
#line 153 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_cdc.h"

/* UART state bitmap values (Serial state notification). */
/* (usbcdc11.pdf, 6.3.5, Table 69) */
#line 177 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_cdc.h"


/*------------------------------------------------------------------------------
 *      Structures  based on usbcdc11.pdf (www.usb.org)
 *----------------------------------------------------------------------------*/

/* Header functional descriptor */
/* (usbcdc11.pdf, 5.2.3.1) */
/* This header must precede any list of class-specific descriptors. */
typedef __packed struct _CDC_HEADER_DESCRIPTOR{
  U8  bFunctionLength;                      /* size of this descriptor in bytes */
  U8  bDescriptorType;                      /* CS_INTERFACE descriptor type */
  U8  bDescriptorSubtype;                   /* Header functional descriptor subtype */
  U16 bcdCDC;                               /* USB CDC specification release version */
} CDC_HEADER_DESCRIPTOR;

/* Call management functional descriptor */
/* (usbcdc11.pdf, 5.2.3.2) */
/* Describes the processing of calls for the communication class interface. */
typedef __packed struct _CDC_CALL_MANAGEMENT_DESCRIPTOR {
  U8  bFunctionLength;                      /* size of this descriptor in bytes */
  U8  bDescriptorType;                      /* CS_INTERFACE descriptor type */
  U8  bDescriptorSubtype;                   /* call management functional descriptor subtype */
  U8  bmCapabilities;                       /* capabilities that this configuration supports */
  U8  bDataInterface;                       /* interface number of the data class interface used for call management (optional) */
} CDC_CALL_MANAGEMENT_DESCRIPTOR;

/* Abstract control management functional descriptor */
/* (usbcdc11.pdf, 5.2.3.3) */
/* Describes the command supported by the communication interface class with the Abstract Control Model subclass code. */
typedef __packed struct _CDC_ABSTRACT_CONTROL_MANAGEMENT_DESCRIPTOR {
  U8  bFunctionLength;                      /* size of this descriptor in bytes */
  U8  bDescriptorType;                      /* CS_INTERFACE descriptor type */
  U8  bDescriptorSubtype;                   /* abstract control management functional descriptor subtype */
  U8  bmCapabilities;                       /* capabilities supported by this configuration */
} CDC_ABSTRACT_CONTROL_MANAGEMENT_DESCRIPTOR;

/* Union functional descriptors */
/* (usbcdc11.pdf, 5.2.3.8) */
/* Describes the relationship between a group of interfaces that can be considered to form a functional unit. */
typedef __packed struct _CDC_UNION_DESCRIPTOR {
  U8  bFunctionLength;                      /* size of this descriptor in bytes */
  U8  bDescriptorType;                      /* CS_INTERFACE descriptor type */
  U8  bDescriptorSubtype;                   /* union functional descriptor subtype */
  U8  bMasterInterface;                     /* interface number designated as master */
} CDC_UNION_DESCRIPTOR;

/* Union functional descriptors with one slave interface */
/* (usbcdc11.pdf, 5.2.3.8) */
typedef __packed struct _CDC_UNION_1SLAVE_DESCRIPTOR {
  CDC_UNION_DESCRIPTOR sUnion;              /* Union functional descriptor */
  U8                   bSlaveInterfaces[1]; /* Slave interface 0 */
} CDC_UNION_1SLAVE_DESCRIPTOR;

/* Line coding structure */
/* Format of the data returned when a GetLineCoding request is received */
/* (usbcdc11.pdf, 6.2.13) */
typedef __packed struct _CDC_LINE_CODING {
  U32 dwDTERate;                            /* Data terminal rate in bits per second */
  U8  bCharFormat;                          /* Number of stop bits */
  U8  bParityType;                          /* Parity bit type */
  U8  bDataBits;                            /* Number of data bits */
} CDC_LINE_CODING;

/* Notification header */
/* Data sent on the notification endpoint must follow this header. */
/* see  USB_SETUP_PACKET in file usb.h */
typedef USB_SETUP_PACKET CDC_NOTIFICATION_HEADER;



#line 22 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_hid.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */




/* HID Subclass Codes */



/* HID Protocol Codes */







/* HID Descriptor Types */





/* HID Descriptor */
typedef __packed struct _HID_DESCRIPTOR {
  U8  bLength;
  U8  bDescriptorType;
  U16 bcdHID;
  U8  bCountryCode;
  U8  bNumDescriptors;
  /* Array of one or more descriptors */
  __packed struct _HID_DESCRIPTOR_LIST {
    U8  bDescriptorType;
    U16 wDescriptorLength;
  } DescriptorList[1];
} HID_DESCRIPTOR;


/* HID Request Codes */
#line 60 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_hid.h"

/* HID Report Types */





/* Usage Pages */
#line 84 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_hid.h"
/* ... */


/* Generic Desktop Page (0x01) */
#line 128 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_hid.h"
/* ... */

/* Simulation Controls Page (0x02) */
/* ... */


/* ... */

/* Virtual Reality Controls Page (0x03) */
/* ... */

/* Sport Controls Page (0x04) */
/* ... */

/* Game Controls Page (0x05) */
/* ... */

/* Generic Device Controls Page (0x06) */
/* ... */

/* Keyboard/Keypad Page (0x07) */

/* Keyboard Usage Keys */
extern const unsigned char HID_KEYBOARD_ID_TO_ASCII[256];
extern const unsigned char HID_KEYBOARD_ALT_ID_TO_ASCII[57];

/* Error "Keys" */





/* Letters */



/* Numbers */







/* Funtion Keys */





/* Modifier Keys */
#line 190 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_hid.h"

/* Modifier Keys (values) */
#line 200 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_hid.h"

/* ... */

/* LED Page (0x08) */
#line 279 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_hid.h"

/* Button Page (0x09) */
/*   There is no need to label these usages. */

/* Ordinal Page (0x0A) */
/*   There is no need to label these usages. */

/* Telephony Device Page (0x0B) */
#line 294 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_hid.h"
/* ... */

/* Consumer Page (0x0C) */

/* ... */

/* and others ... */


/* HID Report Item Macros */

/* Main Items */






/* Data (Input, Output, Feature) */
#line 329 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_hid.h"

/* Collection Data */
#line 338 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_hid.h"

/* Global Items */
#line 367 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_hid.h"

/* Local Items */





#line 23 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_msc.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */




/* MSC Subclass Codes */
#line 27 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_msc.h"

/* MSC Protocol Codes */





/* MSC Request Codes */




/* MSC Bulk-only Stage */
#line 47 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_msc.h"


/* Bulk-only Command Block Wrapper */
typedef __packed struct _MSC_CBW {
  U32 dSignature;
  U32 dTag;
  U32 dDataLength;
  U8  bmFlags;
  U8  bLUN;
  U8  bCBLength;
  U8  CB[16];
} MSC_CBW;

/* Bulk-only Command Status Wrapper */
typedef __packed struct _MSC_CSW {
  U32 dSignature;
  U32 dTag;
  U32 dDataResidue;
  U8  bStatus;
} MSC_CSW;





/* CSW Status Definitions */





/* SCSI Commands */
#line 105 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_msc.h"

#line 24 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"

/* USB Device header files                                                    */
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_core.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */




/*--------------------------- Data structures --------------------------------*/

/* USB Device Core Endpoint Data Structure */
typedef struct _USBD_EP_DATA {
  U8 *pData;
  U16 Count;
} USBD_EP_DATA;


/*--------------------------- Global variables -------------------------------*/

/* USB Device Core Global Variables */
extern U16         USBD_DeviceStatus;
extern U8          USBD_DeviceAddress;
extern U8          USBD_Configuration;
extern U32         USBD_EndPointMask;
extern U32         USBD_EndPointHalt;
extern U32         USBD_EndPointStall;
extern U8          USBD_NumInterfaces;
extern U8          USBD_HighSpeed;
extern U8          USBD_ZLP;

extern USBD_EP_DATA     USBD_EP0Data;
extern USB_SETUP_PACKET USBD_SetupPacket;

//extern OS_TID      USBD_RTX_DevTask;
//extern OS_TID      USBD_RTX_EPTask[];
//extern OS_TID      USBD_RTX_CoreTask;


/*--------------------------- Functions exported to class specific files -----*/

extern void        USBD_SetupStage     (void);
extern void        USBD_DataInStage    (void);
extern void        USBD_DataOutStage   (void);
extern void        USBD_StatusInStage  (void);
extern void        USBD_StatusOutStage (void);


/*--------------------------- Event handling routines ------------------------*/

extern        void usbd_class_init    (void);

extern        void USBD_EndPoint0     (U32 event);

extern  void USBD_RTX_EndPoint0 (void);


#line 27 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_core_cdc.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */




/*--------------------------- Core overridable class specific functions ------*/

extern BOOL USBD_EndPoint0_Setup_CDC_ReqToIF (void);
extern BOOL USBD_EndPoint0_Out_CDC_ReqToIF   (void);


#line 28 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_core_hid.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */




/*--------------------------- Core overridable class specific functions ------*/

extern BOOL USBD_ReqGetDescriptor_HID        (U8 **pD, U32 *len);
extern BOOL USBD_EndPoint0_Setup_HID_ReqToIF (void);
extern BOOL USBD_EndPoint0_Out_HID_ReqToIF   (void);


#line 29 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_core_msc.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */




/*--------------------------- Core overridable class specific functions ------*/

extern void USBD_ReqClrFeature_MSC           (U32 EPNum);
extern BOOL USBD_EndPoint0_Setup_MSC_ReqToIF (void);
extern BOOL USBD_EndPoint0_Out_MSC_ReqToIF   (void);


#line 30 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"

#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_desc.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */



#line 29 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_desc.h"

#line 32 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_event.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */




/* USB Device - Device Events                                                 */
#line 29 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_event.h"

/* USB Device - Endpoint Events                                               */
#line 44 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_event.h"

/* USB Device - Core Events                                                   */





/* USB Device - Device Events Callback Pointers                               */
extern void (* const USBD_P_Power_Event    )(BOOL power);
extern void (* const USBD_P_Reset_Event    )(void);
extern void (* const USBD_P_Suspend_Event  )(void);
extern void (* const USBD_P_Resume_Event   )(void);
extern void (* const USBD_P_WakeUp_Event   )(void);
extern void (* const USBD_P_SOF_Event      )(void);
extern void (* const USBD_P_Error_Event    )(U32 error);

/* USB Device - Endpoint Events Callback Pointers                             */
extern void (* const USBD_P_EP[16])         (U32 event);

/* USB Device - Core Events Callback Pointers                                 */
extern void (* const USBD_P_Configure_Event)(void);
extern void (* const USBD_P_Interface_Event)(void);
extern void (* const USBD_P_Feature_Event  )(void);

/* USB Device - RTX version RTX tasks initialization                          */
extern void USBD_RTX_TaskInit               (void);

#line 33 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_cdc_acm.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */




/*--------------------------- Event handling routines ------------------------*/

extern           void USBD_CDC_ACM_Reset_Event          (void);

extern           void USBD_CDC_ACM_SOF_Event            (void);

extern           void USBD_CDC_ACM_EP_INTIN_Event       (U32 event);
extern           void USBD_CDC_ACM_EP_BULKIN_Event      (U32 event);
extern           void USBD_CDC_ACM_EP_BULKOUT_Event     (U32 event);
extern           void USBD_CDC_ACM_EP_BULK_Event        (U32 event);

extern     void USBD_RTX_CDC_ACM_EP_INTIN_Event   (void);
extern     void USBD_RTX_CDC_ACM_EP_BULKIN_Event  (void);
extern     void USBD_RTX_CDC_ACM_EP_BULKOUT_Event (void);
extern     void USBD_RTX_CDC_ACM_EP_BULK_Event    (void);


#line 34 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_hid.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */




/*--------------------------- Global constants -------------------------------*/

/* USB HID Class API enumerated constants                                     */
enum {
  USBD_HID_REQ_EP_CTRL = 0,             /* Request from control endpoint      */
  USBD_HID_REQ_EP_INT,                  /* Request from interrupt endpoint    */
  USBD_HID_REQ_PERIOD_UPDATE            /* Request from periodic update       */
};


/*--------------------------- Event handling routines ------------------------*/

extern        void USBD_HID_Configure_Event    (void);
extern        void USBD_HID_SOF_Event          (void);

extern        void USBD_HID_EP_INTIN_Event     (U32 event);
extern        void USBD_HID_EP_INTOUT_Event    (U32 event);
extern        void USBD_HID_EP_INT_Event       (U32 event);

extern  void USBD_RTX_HID_EP_INTIN_Event (void);
extern  void USBD_RTX_HID_EP_INTOUT_Event(void);
extern  void USBD_RTX_HID_EP_INT_Event   (void);


#line 35 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_msc.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */




/*--------------------------- Global variables -------------------------------*/

/* USB Device Mass Storage Device Class Global Variables */
extern       BOOL USBD_MSC_MediaReady;
extern       BOOL USBD_MSC_ReadOnly;
extern       U32  USBD_MSC_MemorySize;
extern       U32  USBD_MSC_BlockSize;
extern       U32  USBD_MSC_BlockGroup;
extern       U32  USBD_MSC_BlockCount;
extern       U8  *USBD_MSC_BlockBuf;


/*--------------------------- Event handling routines ------------------------*/

extern        void USBD_MSC_EP_BULKIN_Event      (U32 event);
extern        void USBD_MSC_EP_BULKOUT_Event     (U32 event);
extern        void USBD_MSC_EP_BULK_Event        (U32 event);

extern  void USBD_RTX_MSC_EP_BULKIN_Event  (void);
extern  void USBD_RTX_MSC_EP_BULKOUT_Event (void);
extern  void USBD_RTX_MSC_EP_BULK_Event    (void);


#line 36 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_hw.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */




/* USB Hardware Functions */
extern void USBD_Init        (void);
extern void USBD_Connect     (BOOL con);
extern void USBD_Reset       (void);
extern void USBD_Suspend     (void);
extern void USBD_Resume      (void);
extern void USBD_WakeUp      (void);
extern void USBD_WakeUpCfg   (BOOL cfg);
extern void USBD_SetAddress  (U32  adr, U32 setup);
extern void USBD_Configure   (BOOL cfg);
extern void USBD_ConfigEP    (USB_ENDPOINT_DESCRIPTOR *pEPD);
extern void USBD_DirCtrlEP   (U32  dir);
extern void USBD_EnableEP    (U32  EPNum);
extern void USBD_DisableEP   (U32  EPNum);
extern void USBD_ResetEP     (U32  EPNum);
extern void USBD_SetStallEP  (U32  EPNum);
extern void USBD_ClrStallEP  (U32  EPNum);
extern void USBD_ClearEPBuf  (U32  EPNum);
extern U32  USBD_ReadEP      (U32  EPNum, U8 *pData);
extern U32  USBD_WriteEP     (U32  EPNum, U8 *pData, U32 cnt);
extern U32  USBD_GetFrame    (void);
extern U32  USBD_GetError    (void);

#line 37 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"

#line 25 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\rl_usb.h"

/*****************  Functions *************************************************/

/* USB Device functions exported from USB Device Core module                  */
extern void  usbd_init                  (void);
extern void  usbd_connect               (BOOL con);
extern void  usbd_reset_core            (void);
extern BOOL  usbd_configured            (void);

/* USB Device user functions imported to USB HID Class module                 */
extern void  usbd_hid_init              (void);
extern BOOL  usbd_hid_get_report_trigger(U8 rid,   U8 *buf, int len);
extern int   usbd_hid_get_report        (U8 rtype, U8 rid, U8 *buf, U8  req);
extern void  usbd_hid_set_report        (U8 rtype, U8 rid, U8 *buf, int len, U8 req);
extern U8    usbd_hid_get_protocol      (void);
extern void  usbd_hid_set_protocol      (U8 protocol);

/* USB Device user functions imported to USB Mass Storage Class module        */
extern void  usbd_msc_init              (void);
extern void  usbd_msc_read_sect         (U32 block, U8 *buf, U32 num_of_blocks);
extern void  usbd_msc_write_sect        (U32 block, U8 *buf, U32 num_of_blocks);
extern void  usbd_msc_start_stop        (BOOL start);

/* USB Device user functions imported to USB Audio Class module               */
extern void  usbd_adc_init              (void);

/* USB Device CDC ACM class functions called automatically by USBD Core module*/
extern int32_t  USBD_CDC_ACM_Initialize                (void);
extern int32_t  USBD_CDC_ACM_Uninitialize              (void);
extern int32_t  USBD_CDC_ACM_Reset                     (void);
/* USB Device CDC ACM class user functions                                    */
extern int32_t  USBD_CDC_ACM_PortInitialize            (void);
extern int32_t  USBD_CDC_ACM_PortUninitialize          (void);
extern int32_t  USBD_CDC_ACM_PortReset                 (void);
extern int32_t  USBD_CDC_ACM_PortSetLineCoding         (CDC_LINE_CODING *line_coding);
extern int32_t  USBD_CDC_ACM_PortGetLineCoding         (CDC_LINE_CODING *line_coding);
extern int32_t  USBD_CDC_ACM_PortSetControlLineState   (uint16_t ctrl_bmp);
extern int32_t  USBD_CDC_ACM_DataSend                  (const uint8_t *buf, int32_t len);
extern int32_t  USBD_CDC_ACM_DataFree                  (void);
extern int32_t  USBD_CDC_ACM_PutChar                   (const uint8_t  ch);
extern int32_t  USBD_CDC_ACM_DataRead                  (      uint8_t *buf, int32_t len);
extern int32_t  USBD_CDC_ACM_GetChar                   (void);
extern int32_t  USBD_CDC_ACM_DataAvailable             (void);
extern int32_t  USBD_CDC_ACM_Notify                    (uint16_t stat);
/* USB Device CDC ACM class overridable functions                             */
extern int32_t  USBD_CDC_ACM_SendEncapsulatedCommand   (void);
extern int32_t  USBD_CDC_ACM_GetEncapsulatedResponse   (void);
extern int32_t  USBD_CDC_ACM_SetCommFeature            (uint16_t feat);
extern int32_t  USBD_CDC_ACM_GetCommFeature            (uint16_t feat);
extern int32_t  USBD_CDC_ACM_ClearCommFeature          (uint16_t feat);
extern int32_t  USBD_CDC_ACM_SetLineCoding             (void);
extern int32_t  USBD_CDC_ACM_GetLineCoding             (void);
extern int32_t  USBD_CDC_ACM_SetControlLineState       (uint16_t ctrl_bmp);
extern int32_t  USBD_CDC_ACM_SendBreak                 (uint16_t dur);

/* USB Device user functions imported to USB Custom Class module              */
extern void  usbd_cls_init              (void);
extern void  usbd_cls_sof               (void);
extern BOOL  usbd_cls_dev_req           (BOOL setup);
extern BOOL  usbd_cls_if_req            (BOOL setup);
extern BOOL  usbd_cls_ep_req            (BOOL setup);





#line 18 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\src\\usbd_core_msc.c"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\string.h"
/* string.h standard header */
/* Copyright 2009-2010 IAR Systems AB. */




  #pragma system_include


#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ycheck.h"
/* ycheck.h internal checking header file. */
/* Copyright 2005-2010 IAR Systems AB. */

/* Note that there is no include guard for this header. This is intentional. */


  #pragma system_include


/* __INTRINSIC
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that intrinsic support could be turned off
 * individually for each file.
 */










/* __AEABI_PORTABILITY_INTERNAL_LEVEL
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that ABI support could be turned off/on
 * individually for each file.
 *
 * Possible values for this preprocessor symbol:
 *
 * 0 - ABI portability mode is disabled.
 *
 * 1 - ABI portability mode (version 1) is enabled.
 *
 * All other values are reserved for future use.
 */






#line 67 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ycheck.h"

#line 11 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\string.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ysizet.h"
/* ysizet.h internal header file. */
/* Copyright 2003-2010 IAR Systems AB.  */





  #pragma system_include


#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ycheck.h"
/* ycheck.h internal checking header file. */
/* Copyright 2005-2010 IAR Systems AB. */

/* Note that there is no include guard for this header. This is intentional. */


  #pragma system_include


/* __INTRINSIC
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that intrinsic support could be turned off
 * individually for each file.
 */










/* __AEABI_PORTABILITY_INTERNAL_LEVEL
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that ABI support could be turned off/on
 * individually for each file.
 *
 * Possible values for this preprocessor symbol:
 *
 * 0 - ABI portability mode is disabled.
 *
 * 1 - ABI portability mode (version 1) is enabled.
 *
 * All other values are reserved for future use.
 */






#line 67 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ycheck.h"

#line 12 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ysizet.h"



                /* type definitions */




typedef _Sizet size_t;




typedef unsigned int __data_size_t;











#line 13 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\string.h"

#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Product_string.h"
/**************************************************
 *
 * ARM-specific configuration for string.h in DLib.
 *
 * Copyright 2006 IAR Systems. All rights reserved.
 *
 * $Id: DLib_Product_string.h 78576 2014-05-05 13:37:27Z mats $
 *
 **************************************************/





  #pragma system_include




  
  

  /*
   * The following is pre-declared by the compiler.
   *
   * __INTRINSIC void __aeabi_memset (void *, size_t, int);
   * __INTRINSIC void __aeabi_memcpy (void *, const void *, size_t);
   * __INTRINSIC void __aeabi_memmove(void *, const void *, size_t);
   */


  /*
   * Inhibit inline definitions for routines with an effective
   * ARM-specific implementation.
   *
   * Not in Cortex-M1 and Cortex-MS1
   */



#line 47 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Product_string.h"



  /*
   * Redirect calls to standard functions to the corresponding
   * __aeabi_X function.
   */


  #pragma inline=forced_no_body
  __intrinsic __nounwind void * memcpy(void * _D, const void * _S, size_t _N)
  {
    __aeabi_memcpy(_D, _S, _N);
    return _D;
  }


  #pragma inline=forced_no_body
  __intrinsic __nounwind void * memmove(void * _D, const void * _S, size_t _N)
  {
    __aeabi_memmove(_D, _S, _N);
    return _D;
  }


  #pragma inline=forced_no_body
  __intrinsic __nounwind void * memset(void * _D, int _C, size_t _N)
  {
    __aeabi_memset(_D, _N, _C);
    return _D;
  }

  
  



#line 16 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\string.h"



                /* macros */




                /* declarations */

_Pragma("function_effects = no_state, no_errno, no_write(1,2)")   __intrinsic __nounwind int        memcmp(const void *, const void *,
                                                size_t);
_Pragma("function_effects = no_state, no_errno, no_read(1), no_write(2), returns 1") __intrinsic __nounwind void *     memcpy(void *, 
                                                const void *, size_t);
_Pragma("function_effects = no_state, no_errno, no_read(1), no_write(2), returns 1") __intrinsic __nounwind void *     memmove(void *, const void *, size_t);
_Pragma("function_effects = no_state, no_errno, no_read(1), returns 1")    __intrinsic __nounwind void *     memset(void *, int, size_t);
_Pragma("function_effects = no_state, no_errno, no_write(2), returns 1")    __intrinsic __nounwind char *     strcat(char *, 
                                                const char *);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)")   __intrinsic __nounwind int        strcmp(const char *, const char *);
_Pragma("function_effects = no_write(1,2)")     __intrinsic __nounwind int        strcoll(const char *, const char *);
_Pragma("function_effects = no_state, no_errno, no_read(1), no_write(2), returns 1") __intrinsic __nounwind char *     strcpy(char *, 
                                                const char *);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)")   __intrinsic __nounwind size_t     strcspn(const char *, const char *);
                 __intrinsic __nounwind char *     strerror(int);
_Pragma("function_effects = no_state, no_errno, no_write(1)")      __intrinsic __nounwind size_t     strlen(const char *);
_Pragma("function_effects = no_state, no_errno, no_write(2), returns 1")    __intrinsic __nounwind char *     strncat(char *, 
                                                 const char *, size_t);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)")   __intrinsic __nounwind int        strncmp(const char *, const char *, 
                                                 size_t);
_Pragma("function_effects = no_state, no_errno, no_read(1), no_write(2), returns 1") __intrinsic __nounwind char *     strncpy(char *, 
                                                 const char *, size_t);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)")   __intrinsic __nounwind size_t     strspn(const char *, const char *);
_Pragma("function_effects = no_write(2)")        __intrinsic __nounwind char *     strtok(char *, 
                                                const char *);
_Pragma("function_effects = no_write(2)")        __intrinsic __nounwind size_t     strxfrm(char *, 
                                                 const char *, size_t);


  _Pragma("function_effects = no_write(1)")      __intrinsic __nounwind char *   strdup(const char *);
  _Pragma("function_effects = no_write(1,2)")   __intrinsic __nounwind int      strcasecmp(const char *, const char *);
  _Pragma("function_effects = no_write(1,2)")   __intrinsic __nounwind int      strncasecmp(const char *, const char *, 
                                                   size_t);
  _Pragma("function_effects = no_state, no_errno, no_write(2)")    __intrinsic __nounwind char *   strtok_r(char *, const char *, char **);
  _Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind size_t   strnlen(char const *, size_t);




#line 81 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\string.h"
  _Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind void *memchr(const void *_S, int _C, size_t _N);
  _Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind char *strchr(const char *_S, int _C);
  _Pragma("function_effects = no_state, no_errno, no_write(1,2)") __intrinsic __nounwind char *strpbrk(const char *_S, const char *_P);
  _Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind char *strrchr(const char *_S, int _C);
  _Pragma("function_effects = no_state, no_errno, no_write(1,2)") __intrinsic __nounwind char *strstr(const char *_S, const char *_P);




                /* Inline definitions. */


                /* The implementations. */

_Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind void *__iar_Memchr(const void *, int, size_t);
_Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind char *__iar_Strchr(const char *, int);
               __intrinsic __nounwind char *__iar_Strerror(int, char *);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)") __intrinsic __nounwind char *__iar_Strpbrk(const char *, const char *);
_Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind char *__iar_Strrchr(const char *, int);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)") __intrinsic __nounwind char *__iar_Strstr(const char *, const char *);


                /* inlines and overloads, for C and C++ */
#line 168 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\string.h"
                /* Then the overloads for C. */
    #pragma inline
    void *memchr(const void *_S, int _C, size_t _N)
    {
      return (__iar_Memchr(_S, _C, _N));
    }

    #pragma inline
    char *strchr(const char *_S, int _C)
    {
      return (__iar_Strchr(_S, _C));
    }

    #pragma inline
    char *strpbrk(const char *_S, const char *_P)
    {
      return (__iar_Strpbrk(_S, _P));
    }

    #pragma inline
    char *strrchr(const char *_S, int _C)
    {
      return (__iar_Strrchr(_S, _C));
    }

    #pragma inline
    char *strstr(const char *_S, const char *_P)
    {
      return (__iar_Strstr(_S, _P));
    }


  #pragma inline
  char *strerror(int _Err)
  {
    return (__iar_Strerror(_Err, 0));
  }

#line 451 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\string.h"






#line 479 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\string.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 19 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\src\\usbd_core_msc.c"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_for_lib.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */



/* USB Device header files                                                    */
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_lib_cdc.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */




/*--------------------------- USB Requests -----------------------------------*/

extern int32_t USBD_CDC_ACM_SendEncapsulatedCommand (void);
extern int32_t USBD_CDC_ACM_GetEncapsulatedResponse (void);
extern int32_t USBD_CDC_ACM_SetCommFeature          (uint16_t feat);
extern int32_t USBD_CDC_ACM_GetCommFeature          (uint16_t feat);
extern int32_t USBD_CDC_ACM_ClearCommFeature        (uint16_t feat);
extern int32_t USBD_CDC_ACM_SetLineCoding           (void);
extern int32_t USBD_CDC_ACM_GetLineCoding           (void);
extern int32_t USBD_CDC_ACM_SetControlLineState     (uint16_t ctrl_bmp);
extern int32_t USBD_CDC_ACM_SendBreak               (uint16_t dur);


#line 21 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_for_lib.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_lib_hid.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */




/*--------------------------- USB Requests -----------------------------------*/

extern BOOL USBD_HID_GetReport   (void);
extern BOOL USBD_HID_SetReport   (void);
extern BOOL USBD_HID_GetIdle     (void);
extern BOOL USBD_HID_SetIdle     (void);
extern BOOL USBD_HID_GetProtocol (void);
extern BOOL USBD_HID_SetProtocol (void);


#line 22 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_for_lib.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_lib_msc.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */




/*--------------------------- USB Requests -----------------------------------*/

extern void USBD_MSC_ClrStallEP(U32 EPNum);
extern BOOL USBD_MSC_Reset     (void);
extern BOOL USBD_MSC_GetMaxLUN (void);
extern void USBD_MSC_GetCBW    (void);
extern void USBD_MSC_SetCSW    (void);


#line 23 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_for_lib.h"

/* USB System Configuration header file                                       */
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_lib.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */



/*------------------------------------------------------------------------------
 *           USB Device Configuration
 *----------------------------------------------------------------------------*/
extern       U8   USBD_AltSetting[];
extern       U8   USBD_EP0Buf[];
extern const U8   usbd_power;
extern const U8   usbd_hs_enable;
extern const U16  usbd_if_num;
extern const U8   usbd_ep_num;
extern const U8   usbd_max_packet0;


/*------------------------------------------------------------------------------
 *           USB Device Class Configuration
 *----------------------------------------------------------------------------*/
extern const U8   usbd_hid_enable;
extern const U8   usbd_hid_if_num;
extern const U8   usbd_hid_ep_intin;
extern const U8   usbd_hid_ep_intout;
extern const U16  usbd_hid_interval     [2];
extern const U16  usbd_hid_maxpacketsize[2];
extern const U8   usbd_hid_inreport_num;
extern const U8   usbd_hid_outreport_num;
extern const U16  usbd_hid_inreport_max_sz;
extern const U16  usbd_hid_outreport_max_sz;
extern const U16  usbd_hid_featreport_max_sz;
extern       U16  USBD_HID_PollingCnt;
extern       U16  USBD_HID_PollingReload[];
extern       U8   USBD_HID_IdleCnt      [];
extern       U8   USBD_HID_IdleReload   [];
extern       U8   USBD_HID_IdleSet      [];
extern       U8   USBD_HID_InReport     [];
extern       U8   USBD_HID_OutReport    [];
extern       U8   USBD_HID_FeatReport   [];

extern const U8   usbd_msc_enable;
extern const U8   usbd_msc_if_num;
extern const U8   usbd_msc_ep_bulkin;
extern const U8   usbd_msc_ep_bulkout;
extern const U16  usbd_msc_maxpacketsize[2];
extern const U8  *usbd_msc_inquiry_data;
extern       U8   USBD_MSC_BulkBuf      [];

extern const U8   usbd_adc_enable;
extern const U8   usbd_adc_cif_num;
extern const U8   usbd_adc_sif1_num;
extern const U8   usbd_adc_sif2_num;
extern const U8   usbd_adc_ep_isoout;
extern const U32  usbd_adc_cfg_datafreq;
extern const U32  usbd_adc_cfg_p_s;
extern const U32  usbd_adc_cfg_p_c;
extern const U32  usbd_adc_cfg_b_s;
extern       S16  USBD_ADC_DataBuf      [];

extern const U8   usbd_cdc_acm_enable;
extern const U8   usbd_cdc_acm_cif_num;
extern const U8   usbd_cdc_acm_dif_num;
extern const U8   usbd_cdc_acm_bufsize;
extern const U8   usbd_cdc_acm_ep_intin;
extern const U8   usbd_cdc_acm_ep_bulkin;
extern const U8   usbd_cdc_acm_ep_bulkout;
extern const U16  usbd_cdc_acm_sendbuf_sz;
extern const U16  usbd_cdc_acm_receivebuf_sz;
extern const U16  usbd_cdc_acm_maxpacketsize [2];
extern const U16  usbd_cdc_acm_maxpacketsize1[2];
extern        U8  USBD_CDC_ACM_SendBuf       [];
extern        U8  USBD_CDC_ACM_ReceiveBuf    [];
extern        U8  USBD_CDC_ACM_NotifyBuf     [10];

extern       void usbd_os_evt_set       (U16 event_flags, U32 task);
extern       U16  usbd_os_evt_get       (void);
extern       U32  usbd_os_evt_wait_or   (U16 wait_flags, U16 timeout);

extern const BOOL __rtx;


/*------------------------------------------------------------------------------
 *      USB Device Descriptors
 *----------------------------------------------------------------------------*/
extern const U8   USBD_HID_ReportDescriptor[];
extern const U16  USBD_HID_ReportDescriptorSize;
extern const U16  USBD_HID_DescriptorOffset;
extern const U8   USBD_DeviceDescriptor[];
extern const U8   USBD_DeviceQualifier[];
extern const U8   USBD_DeviceQualifier_HS[];
extern const U8   USBD_ConfigDescriptor[];
extern const U8   USBD_ConfigDescriptor_HS[];
extern const U8   USBD_OtherSpeedConfigDescriptor[];
extern const U8   USBD_OtherSpeedConfigDescriptor_HS[];
extern const U8   USBD_OtherSpeedConfigDescriptor[];
extern const U8   USBD_OtherSpeedConfigDescriptor_HS[];
extern const U8   USBD_StringDescriptor[];

#line 26 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_for_lib.h"

#line 20 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\src\\usbd_core_msc.c"


/*
 *  Clear Feature USB Device Request - MSC specific handling
 *    Parameters:      EPNum: Endpoint number
 *    Return Value:    None
 */

__weak void USBD_ReqClrFeature_MSC (U32 EPNum) {
  USBD_MSC_ClrStallEP (EPNum);
}


/*
 *  USB Device Endpoint 0 Event Callback - MSC specific handling (Setup Request To Interface)
 *    Parameters:      none
 *    Return Value:    TRUE - Setup class request ok, FALSE - Setup class request not supported
 */

__weak BOOL USBD_EndPoint0_Setup_MSC_ReqToIF (void) {
  if (USBD_SetupPacket.wIndexL == usbd_msc_if_num) {         /* IF number correct? */
    switch (USBD_SetupPacket.bRequest) {
      case 0xFF:
        if ((USBD_SetupPacket.wValue   == 0) &&              /* RESET with invalid parameters -> STALL */
            (USBD_SetupPacket.wLength  == 0)) {
          if (USBD_MSC_Reset()) {
            USBD_StatusInStage();
            return (1);
          }
        }
        break;
      case 0xFE:
        if ((USBD_SetupPacket.wValue   == 0) &&              /* GET_MAX_LUN with invalid parameters -> STALL */
            (USBD_SetupPacket.wLength  == 1)) {
          if (USBD_MSC_GetMaxLUN()) {
            USBD_EP0Data.pData = USBD_EP0Buf;
            USBD_DataInStage();
            return (1);
          }
        }
        break;
    }
  }
  return (0);
}
