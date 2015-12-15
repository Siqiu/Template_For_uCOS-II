#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\App\\Module_CAN\\Module_Can.c"
/**
  ******************************************************************************
  * @file    Module_Can.c
  * @author  Donatello
  * @version V1.0
  * @date    2015.9.15
  * @brief
  ******************************************************************************
  */
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\App\\Module_CAN\\Module_Can.h"
/**
  ******************************************************************************
  * @file    Module_Can.h
  * @author  Donatello
  * @version V1.0
  * @date    2015.9.15
  * @brief
  ******************************************************************************
  */
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\config\\includes.h"
/*
*********************************************************************************************************
*                                              EXAMPLE CODE
*
*                          (c) Copyright 2003-2013; Micrium, Inc.; Weston, FL
*
*               All rights reserved.  Protected by international copyright laws.
*               Knowledge of the source code may NOT be used to develop a similar product.
*               Please help us continue to provide the Embedded community with the finest
*               software available.  Your honesty is greatly appreciated.
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*
*                                           MASTER INCLUDES
*
*                                     Freescale MK60DN512Zxxx10
*                                              on the
*
*                                     Micrium uC-Eval-Freescale
*                                        Evaluation Board
*
* Filename      : includes.h
* Version       : V1.00
* Programmer(s) : WZX
*********************************************************************************************************
*/





/*
*********************************************************************************************************
*                                         STANDARD LIBRARIES
*********************************************************************************************************
*/

#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"
/* stdio.h standard header */
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









#line 11 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"
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
#line 12 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"
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











#line 13 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ystdio.h"
/* ystdio.h internal header */
/* Copyright 2009-2010 IAR Systems AB. */




  #pragma system_include







#line 58 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ystdio.h"
  
/* File system functions that have debug variants. They are agnostic on 
   whether the library is full or normal. */

__intrinsic __nounwind int remove(const char *);
__intrinsic __nounwind int rename(const char *, const char *);











/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.042:0576 */
#line 14 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"



/* Module consistency. */
#pragma rtmodel="__dlib_file_descriptor","0"

                /* macros */








#line 66 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"

#line 88 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"

#line 99 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"










                /* type definitions */
typedef _Fpost fpos_t;

                /* printf and scanf pragma support */
#pragma language=save
#pragma language=extended

#line 125 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"

#line 177 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"


             /* Corresponds to fgets(char *, int, stdin); */
_Pragma("function_effects = no_read(1)")    __intrinsic __nounwind char * __gets(char *, int);
_Pragma("function_effects = no_read(1)")    __intrinsic __nounwind char * gets(char *);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind void perror(const char *);
_Pragma("function_effects = no_write(1)")    _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int printf(const char *, ...);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind int puts(const char *);
_Pragma("function_effects = no_write(1)")    _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown")  __intrinsic __nounwind int scanf(const char *, ...);
_Pragma("function_effects = no_read(1), no_write(2)") _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int sprintf(char *, 
                                                 const char *, ...);
_Pragma("function_effects = no_write(1,2)") _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown")  __intrinsic __nounwind int sscanf(const char *, 
                                                const char *, ...);
             __intrinsic __nounwind char * tmpnam(char *);
             /* Corresponds to "ungetc(c, stdout)" */
             __intrinsic __nounwind int __ungetchar(int);
_Pragma("function_effects = no_write(1)")    _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int vprintf(const char *,
                                                 __Va_list);

  _Pragma("function_effects = no_write(1)")    _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown")  __intrinsic __nounwind int vscanf(const char *, 
                                                  __Va_list);
  _Pragma("function_effects = no_write(1,2)") _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown")  __intrinsic __nounwind int vsscanf(const char *, 
                                                   const char *, 
                                                   __Va_list);

_Pragma("function_effects = no_read(1), no_write(2)")  _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int vsprintf(char *, 
                                                   const char *,
                                                   __Va_list);
              /* Corresponds to fwrite(p, x, y, stdout); */
_Pragma("function_effects = no_write(1)")      __intrinsic __nounwind size_t __write_array(const void *, size_t, size_t);

  _Pragma("function_effects = no_read(1), no_write(3)") _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int snprintf(char *, size_t, 
                                                    const char *, ...);
  _Pragma("function_effects = no_read(1), no_write(3)") _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int vsnprintf(char *, size_t,
                                                     const char *, 
                                                     __Va_list);


              __intrinsic __nounwind int getchar(void);
              __intrinsic __nounwind int putchar(int);



#pragma language=restore

#line 238 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"




#line 292 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"

/*
 * Copyright (c) 1992-2002 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 42 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\config\\includes.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdlib.h"
/* stdlib.h standard header */
/* Copyright 2005-2010 IAR Systems AB. */





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

#line 12 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdlib.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ysizet.h"
/* ysizet.h internal header file. */
/* Copyright 2003-2010 IAR Systems AB.  */

#line 30 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ysizet.h"







#line 14 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdlib.h"


/* Module consistency. */
#pragma rtmodel="__dlib_full_locale_support",   "0"





extern int __aeabi_MB_CUR_MAX(void);


#line 34 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdlib.h"





                /* MACROS */













                /* TYPE DEFINITIONS */


  typedef _Wchart wchar_t;


typedef struct
{       /* result of int divide */
  int quot;
  int rem;
} div_t;

typedef struct
{       /* result of long divide */
  long quot;
  long rem;
} ldiv_t;



    #pragma language=save
    #pragma language=extended
    typedef struct
    {     /* result of long long divide */
      _Longlong quot;
      _Longlong rem;
    } lldiv_t;
    #pragma language=restore



                /* DECLARATIONS */
 /* low-level functions */
__intrinsic __nounwind int atexit(void (*)(void));

  __intrinsic __noreturn __nounwind void _Exit(int) ;

__intrinsic __noreturn __nounwind void exit(int) ;
__intrinsic __nounwind char * getenv(const char *);
__intrinsic __nounwind int system(const char *);



             __intrinsic __noreturn __nounwind void abort(void) ;
_Pragma("function_effects = no_state, no_errno")     __intrinsic __nounwind int abs(int);
             __intrinsic __nounwind void * calloc(size_t, size_t);
_Pragma("function_effects = no_state, no_errno")     __intrinsic __nounwind div_t div(int, int);
             __intrinsic __nounwind void free(void *);
_Pragma("function_effects = no_state, no_errno")     __intrinsic __nounwind long labs(long);
_Pragma("function_effects = no_state, no_errno")     __intrinsic __nounwind ldiv_t ldiv(long, long);


    #pragma language=save
    #pragma language=extended
    _Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind long long llabs(long long);
    _Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind lldiv_t lldiv(long long, long long);
    #pragma language=restore


             __intrinsic __nounwind void * malloc(size_t);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind int mblen(const char *, size_t);
_Pragma("function_effects = no_read(1), no_write(2)") __intrinsic __nounwind size_t mbstowcs(wchar_t *, 
                                          const char *, size_t);
_Pragma("function_effects = no_read(1), no_write(2)") __intrinsic __nounwind int mbtowc(wchar_t *, const char *, 
                                     size_t);
             __intrinsic __nounwind int rand(void);
             __intrinsic __nounwind void srand(unsigned int);
             __intrinsic __nounwind void * realloc(void *, size_t);
_Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind long strtol(const char *, 
                                      char **, int);
_Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind unsigned long strtoul(const char *, char **, int);
_Pragma("function_effects = no_read(1), no_write(2)") __intrinsic __nounwind size_t wcstombs(char *, 
                                          const wchar_t *, size_t);
_Pragma("function_effects = no_read(1)")    __intrinsic __nounwind int wctomb(char *, wchar_t);


    #pragma language=save
    #pragma language=extended
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind long long strtoll(const char *, char **, int);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind unsigned long long strtoull(const char *, 
                                                          char **, int);
    #pragma language=restore





#line 188 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdlib.h"



    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind unsigned long __iar_Stoul(const char *, char **, 
                                                        int);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind float         __iar_Stof(const char *, char **, long);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind double        __iar_Stod(const char *, char **, long);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind long double   __iar_Stold(const char *, char **, 
                                                          long);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind long          __iar_Stolx(const char *, char **, int, 
                                                        int *);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind unsigned long __iar_Stoulx(const char *, char **,
                                                         int, int *);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind float         __iar_Stofx(const char *, char **, 
                                                        long, int *);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind double        __iar_Stodx(const char *, char **, 
                                                        long, int *);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind long double   __iar_Stoldx(const char *, char **, 
                                                         long, int *);

      #pragma language=save
      #pragma language=extended
      _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind _Longlong   __iar_Stoll(const char *, char **, 
                                                        int);
      _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind _ULonglong   __iar_Stoull(const char *, char **, 
                                                          int);
      _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind _Longlong    __iar_Stollx(const char *, char **, 
                                                          int, int *);
      _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind _ULonglong   __iar_Stoullx(const char *, char **, 
                                                           int, int *);
      #pragma language=restore








typedef int _Cmpfun(const void *, const void *);

_Pragma("function_effects = no_write(1,2)") __intrinsic void * bsearch(const void *, 
                                                   const void *, size_t,
                                                   size_t, _Cmpfun *);
             __intrinsic void qsort(void *, size_t, size_t, 
                                               _Cmpfun *);
             __intrinsic void __qsortbbl(void *, size_t, size_t, 
                                                    _Cmpfun *);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind double atof(const char *);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind int atoi(const char *);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind long atol(const char *);


    #pragma language=save
    #pragma language=extended
    _Pragma("function_effects = no_write(1)") __intrinsic __nounwind long long atoll(const char *);
    #pragma language=restore

  _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind float strtof(const char *, 
                                         char **);
  _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind long double strtold(const char *, char **);

_Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind double strtod(const char *, 
                                        char **);
                                        

                                        
               __intrinsic __nounwind size_t __iar_Mbcurmax(void);

  _Pragma("function_effects = no_state, no_errno")     __intrinsic __nounwind int __iar_DLib_library_version(void);

  


#line 276 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdlib.h"



  
  typedef void _Atexfun(void);
  
#line 304 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdlib.h"


                /* INLINES, FOR C and C++ */
    #pragma inline=no_body
    double atof(const char *_S)
    {      /* convert string to double */
      return (__iar_Stod(_S, 0, 0));
    }

    #pragma inline=no_body
    int atoi(const char *_S)
    {      /* convert string to int */
      return ((int)__iar_Stoul(_S, 0, 10));
    }

    #pragma inline=no_body
    long atol(const char *_S)
    {      /* convert string to long */
      return ((long)__iar_Stoul(_S, 0, 10));
    }



        #pragma language=save
        #pragma language=extended
        #pragma inline=no_body
        long long atoll(const char *_S)
        {      /* convert string to long long */



            return ((long long)__iar_Stoull(_S, 0, 10));

        }
        #pragma language=restore



    #pragma inline=no_body
    double strtod(const char * _S, char ** _Endptr)
    {      /* convert string to double, with checking */
      return (__iar_Stod(_S, _Endptr, 0));
    }


      #pragma inline=no_body
      float strtof(const char * _S, char ** _Endptr)
      {      /* convert string to float, with checking */
        return (__iar_Stof(_S, _Endptr, 0));
      }

      #pragma inline=no_body
      long double strtold(const char * _S, char ** _Endptr)
      {      /* convert string to long double, with checking */
        return (__iar_Stold(_S, _Endptr, 0));
      }


    #pragma inline=no_body
    long strtol(const char * _S, char ** _Endptr, 
                int _Base)
    {      /* convert string to unsigned long, with checking */
      return (__iar_Stolx(_S, _Endptr, _Base, 0));
    }

    #pragma inline=no_body
    unsigned long strtoul(const char * _S, char ** _Endptr, 
                          int _Base)
    {      /* convert string to unsigned long, with checking */
      return (__iar_Stoul(_S, _Endptr, _Base));
    }



        #pragma language=save
        #pragma language=extended
        #pragma inline=no_body
        long long strtoll(const char * _S, char ** _Endptr,
                          int _Base)
        {      /* convert string to long long, with checking */



            return (__iar_Stoll(_S, _Endptr, _Base));

        }

        #pragma inline=no_body
        unsigned long long strtoull(const char * _S, 
                                    char ** _Endptr, int _Base)
        {      /* convert string to unsigned long long, with checking */



            return (__iar_Stoull(_S, _Endptr, _Base));

        }
        #pragma language=restore





  #pragma inline=no_body
  int abs(int i)
  {      /* compute absolute value of int argument */
    return (i < 0 ? -i : i);
  }

  #pragma inline=no_body
  long labs(long i)
  {      /* compute absolute value of long argument */
    return (i < 0 ? -i : i);
  }



      #pragma language=save
      #pragma language=extended
      #pragma inline=no_body
      long long llabs(long long i)
      {      /* compute absolute value of long long argument */
        return (i < 0 ? -i : i);
      }
      #pragma language=restore



#line 465 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdlib.h"




#line 494 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdlib.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 43 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\config\\includes.h"
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

#line 11 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"



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
#line 44 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\config\\includes.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdbool.h"
/* stdbool.h header */
/* Copyright 2003-2010 IAR Systems AB.  */

/* NOTE: IAR Extensions must be enabled in order to use the bool type! */





  #pragma system_include















/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 45 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\config\\includes.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\math.h"
/* math.h standard header */
/* Copyright 2003-2010 IAR Systems AB. */




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

#line 11 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\math.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ymath.h"
/* ymath.h internal header */
/* Copyright 2003-2010 IAR Systems AB. */




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

#line 13 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ymath.h"





                /* MACROS FOR _X_FNAME(Dtest) RETURN (0 => ZERO) */










_Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind short        __iar_Dtest(double);
_Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind int          __iar_Dsign(double);


  _Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind short        __iar_FDtest(float);
  _Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind int          __iar_FDsign(float);










                /* TYPE DEFINITIONS */
typedef union
{       /* pun float types as integer array */
  unsigned short _Word[8 / 2];
  float _Float;
  double _Double;
  long double _Long_double;
} _Dconst;

                /* double DECLARATIONS */
_Pragma("function_effects = no_state") __intrinsic __nounwind double       __iar_Cosh(double, double);

  _Pragma("function_effects = no_state") __intrinsic __nounwind double       __iar_Erfc(double);

_Pragma("function_effects = no_state") __intrinsic __nounwind short        __iar_Exp(double *, double, long);
_Pragma("function_effects = no_state") __intrinsic __nounwind double       __iar_Log(double, int);
_Pragma("function_effects = no_state") __intrinsic __nounwind double       __iar_Logpoly(double);
_Pragma("function_effects = no_state") __intrinsic __nounwind unsigned int __iar_Quad(double *);
_Pragma("function_effects = no_state") __intrinsic __nounwind unsigned int __iar_QuadXp(double *);
_Pragma("function_effects = no_state") __intrinsic __nounwind unsigned int __iar_Quadph(double *, double);
_Pragma("function_effects = no_state") __intrinsic __nounwind double       __iar_Rint(double);
_Pragma("function_effects = no_state") __intrinsic __nounwind double       __iar_Sin(double, unsigned int);

  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_Sin_small(double, unsigned int);

_Pragma("function_effects = no_state") __intrinsic __nounwind double       __iar_Sinh(double, double);
_Pragma("function_effects = no_state") __intrinsic __nounwind double       __iar_Tgamma(double *, short *pex);

                /* float DECLARATIONS */

  _Pragma("function_effects = no_state") __intrinsic __nounwind float        __iar_FCosh(float, float);
  _Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind short        __iar_FDtest(float);
  _Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind int          __iar_FDsign(float);

    _Pragma("function_effects = no_state") __intrinsic __nounwind float        __iar_FErfc(float);

  _Pragma("function_effects = no_state") __intrinsic __nounwind short        __iar_FExp(float *, float, long);
  _Pragma("function_effects = no_state") __intrinsic __nounwind float        __iar_FLog(float, int);
  _Pragma("function_effects = no_state") __intrinsic __nounwind float        __iar_FLogpoly(float);
  _Pragma("function_effects = no_state") __intrinsic __nounwind unsigned int __iar_FQuad(float *);
  _Pragma("function_effects = no_state") __intrinsic __nounwind unsigned int __iar_FQuadXp(float *);
  _Pragma("function_effects = no_state") __intrinsic __nounwind unsigned int __iar_FQuadph(float *, float);
  _Pragma("function_effects = no_state") __intrinsic __nounwind float        __iar_FRint(float);
  _Pragma("function_effects = no_state") __intrinsic __nounwind float        __iar_FSin(float, unsigned int);

    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_Sin_smallf(float, unsigned int);

  _Pragma("function_effects = no_state") __intrinsic __nounwind float        __iar_FSinh(float, float);
  _Pragma("function_effects = no_state") __intrinsic __nounwind float        __iar_FTgamma(float *, short *pex);


                /* long double DECLARATIONS */
#line 122 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ymath.h"



 extern float const __aeabi_HUGE_VALF;
 extern float const __aeabi_INFINITY;
 extern float const __aeabi_NAN;
 extern double const __aeabi_HUGE_VAL;
 extern long double const __aeabi_HUGE_VALL;

                /* long double ADDITIONS TO math.h NEEDED FOR complex */
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (atan2l)(long double, long double);
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (cosl)(long double);
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (expl)(long double);
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (ldexpl)(long double, int);
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (logl)(long double);
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (powl)(long double, long double);
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (sinl)(long double);
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (sqrtl)(long double);
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (tanl)(long double);
                /* float ADDITIONS TO math.h NEEDED FOR complex */
_Pragma("function_effects = no_state") __intrinsic __nounwind float (atan2f)(float, float);
_Pragma("function_effects = no_state") __intrinsic __nounwind float (cosf)(float);
_Pragma("function_effects = no_state") __intrinsic __nounwind float (expf)(float);
_Pragma("function_effects = no_state") __intrinsic __nounwind float (ldexpf)(float, int);
_Pragma("function_effects = no_state") __intrinsic __nounwind float (logf)(float);
_Pragma("function_effects = no_state") __intrinsic __nounwind float (powf)(float, float);
_Pragma("function_effects = no_state") __intrinsic __nounwind float (sinf)(float);
_Pragma("function_effects = no_state") __intrinsic __nounwind float (sqrtf)(float);
_Pragma("function_effects = no_state") __intrinsic __nounwind float (tanf)(float);







/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 12 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\math.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xtgmath.h"
/* xtgmath.h internal header */
/* Copyright 2009-2010 IAR Systems AB. */




  #pragma system_include








#line 23 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xtgmath.h"

#line 240 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xtgmath.h"



/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
 V5.04:0576 */
#line 13 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\math.h"



#line 32 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\math.h"











  typedef float float_t;
  typedef double double_t;




                /* double declarations */
_Pragma("function_effects = no_state")    __intrinsic __nounwind double acos(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double asin(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double atan(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double atan2(double, double);
_Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double ceil(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double exp(double);
_Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double fabs(double);
_Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double floor(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double fmod(double, double);
_Pragma("function_effects = no_state, no_errno, no_read(2)") __intrinsic __nounwind double frexp(double, int *);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double ldexp(double, int);
_Pragma("function_effects = no_state, no_errno, no_read(2)") __intrinsic __nounwind double modf(double, double *);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double pow(double, double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double sqrt(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double tan(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double tanh(double);

_Pragma("function_effects = no_state")    __intrinsic __nounwind double cos(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double cosh(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double log(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double log10(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double sin(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double sinh(double);



                /* double declarations */
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double acosh(double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double asinh(double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double atanh(double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double cbrt(double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double copysign(double, double);

    _Pragma("function_effects = no_state")    __intrinsic __nounwind double erf(double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind double erfc(double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind double expm1(double);

  _Pragma("function_effects = no_state")    __intrinsic __nounwind double exp2(double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double fdim(double, double);

    _Pragma("function_effects = no_state")    __intrinsic __nounwind double fma(double, double, double);

  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double fmax(double, double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double fmin(double, double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double hypot(double, double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind int    ilogb(double);

    _Pragma("function_effects = no_state")    __intrinsic __nounwind double lgamma(double);


    #pragma language=save
    #pragma language=extended
    _Pragma("function_effects = no_state") __intrinsic __nounwind _Longlong llrint(double);
    _Pragma("function_effects = no_state") __intrinsic __nounwind _Longlong llround(double);
    #pragma language=restore

  _Pragma("function_effects = no_state")    __intrinsic __nounwind double log1p(double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double log2(double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double logb(double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long   lrint(double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long   lround(double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double nan(const char *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double nearbyint(double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double nextafter(double, double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double nexttoward(double, long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double remainder(double, double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double remquo(double, double, int *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double rint(double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double round(double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double scalbn(double, int);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double scalbln(double, long);

    _Pragma("function_effects = no_state")    __intrinsic __nounwind double tgamma(double);

  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double trunc(double);

                /* float declarations */
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float acosf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float asinf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float atanf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float atan2f(float, float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float ceilf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float expf(float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float fabsf(float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float floorf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float fmodf(float, float);
  _Pragma("function_effects = no_state, no_errno, no_read(2)") __intrinsic __nounwind float frexpf(float, int *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float ldexpf(float, int);
  _Pragma("function_effects = no_state, no_errno, no_read(2)") __intrinsic __nounwind float modff(float, float *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float powf(float, float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float sqrtf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float tanf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float tanhf(float);

  _Pragma("function_effects = no_state")    __intrinsic __nounwind float acoshf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float asinhf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float atanhf(float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float cbrtf(float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float copysignf(float, float);

    _Pragma("function_effects = no_state")    __intrinsic __nounwind float erff(float);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind float erfcf(float);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind float expm1f(float);

  _Pragma("function_effects = no_state")    __intrinsic __nounwind float exp2f(float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float fdimf(float, float);

    _Pragma("function_effects = no_state")    __intrinsic __nounwind float fmaf(float, float, float);

  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float fmaxf(float, float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float fminf(float, float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float hypotf(float, float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind int   ilogbf(float);

    _Pragma("function_effects = no_state")    __intrinsic __nounwind float lgammaf(float);


    #pragma language=save
    #pragma language=extended
    _Pragma("function_effects = no_state")    __intrinsic __nounwind _Longlong llrintf(float);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind _Longlong llroundf(float);
    #pragma language=restore

  _Pragma("function_effects = no_state")    __intrinsic __nounwind float log1pf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float log2f(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float logbf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long  lrintf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long  lroundf(float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float nanf(const char *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float nearbyintf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float nextafterf(float, float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float nexttowardf(float, long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float remainderf(float, float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float remquof(float, float, int *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float rintf(float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float roundf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float scalbnf(float, int);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float scalblnf(float, long);

    _Pragma("function_effects = no_state")    __intrinsic __nounwind float tgammaf(float);

  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float truncf(float);

  _Pragma("function_effects = no_state")    __intrinsic __nounwind float cosf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float coshf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float logf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float log10f(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float sinf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float sinhf(float);

                /* long double declarations */
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double acosl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double asinl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double atanl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double atan2l(long double, long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double ceill(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double expl(long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double fabsl(long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double floorl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double fmodl(long double, long double);
  _Pragma("function_effects = no_state, no_errno, no_read(2)") __intrinsic __nounwind long double frexpl(long double, int *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double ldexpl(long double, int);
  _Pragma("function_effects = no_state, no_errno, no_read(2)") __intrinsic __nounwind long double modfl(long double, long double *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double powl(long double, long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double sqrtl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double tanl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double tanhl(long double);

  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double acoshl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double asinhl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double atanhl(long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double cbrtl(long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double copysignl(long double, long double);

    _Pragma("function_effects = no_state")    __intrinsic __nounwind long double erfl(long double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind long double erfcl(long double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind long double expm1l(long double);

  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double exp2l(long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double fdiml(long double, long double);

    _Pragma("function_effects = no_state")    __intrinsic __nounwind long double fmal(long double, long double, 
                                              long double);

  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double fmaxl(long double, long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double fminl(long double, long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double hypotl(long double, long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind int         ilogbl(long double);

    _Pragma("function_effects = no_state")    __intrinsic __nounwind long double lgammal(long double);


    #pragma language=save
    #pragma language=extended
    _Pragma("function_effects = no_state")    __intrinsic __nounwind _Longlong llrintl(long double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind _Longlong llroundl(long double);
    #pragma language=restore

  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double log1pl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double log2l(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double logbl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long        lrintl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long lroundl(long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double nanl(const char *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double nearbyintl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double nextafterl(long double, long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double nexttowardl(long double, long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double remainderl(long double, long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double remquol(long double, long double, int *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double rintl(long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double roundl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double scalbnl(long double, int);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double scalblnl(long double, long);

    _Pragma("function_effects = no_state")    __intrinsic __nounwind long double tgammal(long double);

  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double truncl(long double);

  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double cosl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double coshl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double logl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double log10l(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double sinl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double sinhl(long double);





                  /* Accurate versions of certain float functions. */
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_tan_accurate(double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_cos_accurate(double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_sin_accurate(double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_pow_accurate(double, double);

  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_Sin_accurate(double, unsigned int);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_Pow_accurate(double, double, short *pex);

      _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_tan_accuratef(float);
      _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_cos_accuratef(float);
      _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_sin_accuratef(float);
      _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_pow_accuratef(float, float);

      _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_Sin_accuratef(float, unsigned int);
      _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_Pow_accuratef(float, float, short *pex);

      _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_tan_accuratel(long double);
      _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_cos_accuratel(long double);
      _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_sin_accuratel(long double);
      _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_pow_accuratel(long double, 
                                                            long double);

      _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_Sin_accuratel(long double, 
                                                            unsigned int);
      _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_Pow_accuratel(long double, 
                                                            long double,
                                                            short *pex);





                  /* Small versions of certain float functions. */
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_cos_small(double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_exp_small(double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_log_small(double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_log10_small(double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_pow_small(double, double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_sin_small(double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_tan_small(double);
  

    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_cos_smallf(float);
    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_exp_smallf(float);
    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_log_smallf(float);
    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_log10_smallf(float);
    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_pow_smallf(float, float);
    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_sin_smallf(float);
    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_tan_smallf(float);

    _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_cos_smalll(long double);
    _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_exp_smalll(long double);
    _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_log_smalll(long double);
    _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_log10_smalll(long double);
    _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_pow_smalll(long double, long double);
    _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_sin_smalll(long double);
    _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_tan_smalll(long double);









#line 502 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\math.h"


#line 1289 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\math.h"




                /* double INLINES, FOR C and C++ */

/* C inline definitions */

  #pragma inline=no_body
  double cos(double _X)
  {       /* return cosine */
    return __iar_Sin(_X, 1);
  }

  #pragma inline=no_body
  double cosh(double _X)
  {       /* return hyperbolic cosine */
    return __iar_Cosh(_X, 1);
  }

  #pragma inline=no_body
  double log(double _X)
  {       /* return natural logarithm */
    return __iar_Log(_X, 0);
  }

  #pragma inline=no_body
  double log10(double _X)
  {       /* return base-10 logarithm */
    return __iar_Log(_X, 1);
  }

  #pragma inline=no_body
  double sin(double _X)
  {       /* return sine */
    return __iar_Sin(_X, 0);
  }

  #pragma inline=no_body
  double sinh(double _X)
  {       /* return hyperbolic sine */
    return __iar_Sinh(_X, 1);
  }


                /* double INLINES, FOR C99 and C++ */

    #pragma inline=no_body
    double log2(double _Left)
    {   /* return base-2 logarithm */
      return (__iar_Log(_Left, -1));
    }

    #pragma inline=no_body
    double nan(const char *s)
    {   /* construct a NaN */
      return (0.Nan);
    }

    #pragma inline=no_body
    double nextafter(double x, double y)
    {   /* compute next value after x going toward y */
      return (nexttoward(x, (long double)y));
    }

    #pragma inline=no_body
    double remainder(double x, double y)
    {   /* compute remainder of x/y */
      return (remquo(x, y, 0));
    }



                /* float INLINES, FOR C and C++ */

    #pragma inline=no_body
    float cosf(float _X)
    {       /* return cosine */
      return (__iar_FSin(_X, 1));
    }

    #pragma inline=no_body
    float coshf(float _X)
    {       /* return hyperbolic cosine */
      return (__iar_FCosh(_X,  1.0F));
    }

    #pragma inline=no_body
    float logf(float _X)
    {       /* return natural logarithm */
      return (__iar_FLog(_X, 0));
    }

    #pragma inline=no_body 
    float log2f(float _Left)
    {       /* return base-2 logarithm */
      return (__iar_FLog(_Left, -1));
    }

    #pragma inline=no_body
    float log10f(float _X)
    {       /* return base-10 logarithm */
      return (__iar_FLog(_X, 1));
    }

    #pragma inline=no_body
    float nanf(const char *s)
    {   /* construct a NaN */
      return (0.Nan);
    }

    #pragma inline=no_body
    float nextafterf(float x, float y)
    {   /* compute next value after x going toward y */
      return (nexttowardf(x, (long double)y));
    }

    #pragma inline=no_body
    float remainderf(float x, float y)
    {   /* compute remainder of x/y */
      return (remquof(x, y, 0));
    }

    #pragma inline=no_body
    float sinf(float _X)
    {       /* return sine */
      return (__iar_FSin(_X, 0));
    }

    #pragma inline=no_body
    float sinhf(float _X)
    {       /* return hyperbolic sine */
      return (__iar_FSinh(_X,  1.0F));
    }


                /* long double INLINES, FOR C and C++ */

    #pragma inline=no_body
    long double cosl(long double _X)
    {       /* return cosine */
      return (__iar_Sin(_X, 1));
    }

    #pragma inline=no_body
    long double coshl(long double _X)
    {       /* return hyperbolic cosine */
      return (__iar_Cosh(_X, (double) 1.0L));
    }

    #pragma inline=no_body
    long double logl(long double _X)
    {       /* return natural logarithm */
      return (__iar_Log(_X, 0));
    }

    #pragma inline=no_body 
    long double log2l(long double _Left)
    {       /* return base-2 logarithm */
      return (__iar_Log(_Left, -1));
    }

    #pragma inline=no_body
    long double log10l(long double _X)
    {       /* return base-10 logarithm */
      return (__iar_Log(_X, 1));
    }

    #pragma inline=no_body
    long double nanl(const char *s)
    {   /* construct a NaN */
      return (0.Nan);
    }

    #pragma inline=no_body
    long double nextafterl(long double x, long double y)
    {   /* compute next value after x going toward y */
      return (nexttowardl(x, y));
    }

    #pragma inline=no_body
    long double remainderl(long double x, long double y)
    {   /* compute remainder of x/y */
      return (remquol(x, y, 0));
    }

    #pragma inline=no_body
    long double sinl(long double _X)
    {       /* return sine */
      return (__iar_Sin(_X, 0));
    }

    #pragma inline=no_body
    long double sinhl(long double _X)
    {       /* return hyperbolic sine */
      return (__iar_Sinh(_X, (double) 1.0L));
    }







  /* C99 floating point functionality */

























  /* For generic C99 compare operations */



  
  
  _Pragma("function_effects = no_state")    __intrinsic __nounwind int __iar_Dcomp(double, double);

    _Pragma("function_effects = no_state")    __intrinsic __nounwind int __iar_FDcomp(float, float);




  
  
#line 1677 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\math.h"
  


      
#line 1690 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\math.h"






#line 1702 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\math.h"
    


  #pragma inline=no_body
  int __iar_Dcomp(double x, double y)
  {
    if ((__c99_generic(x,,, __iar_Dtest, __iar_FDtest, __iar_Dtest,,,)(x) == 2) || (__c99_generic(y,,, __iar_Dtest, __iar_FDtest, __iar_Dtest,,,)(y) == 2))
    {
      return 0;
    }
    if (x > y)
    {
      return 4;
    }
    if (x < y)
    {
      return 1;
    }
    if (x == y)
    {
      return 2;
    }
    return 0;
  }


    #pragma inline=no_body
    int __iar_FDcomp(float x, float y)
    {
      if ((__c99_generic(x,,, __iar_Dtest, __iar_FDtest, __iar_Dtest,,,)(x) == 2) || (__c99_generic(y,,, __iar_Dtest, __iar_FDtest, __iar_Dtest,,,)(y) == 2))
      {
        return 0;
      }
      if (x > y)
      {
        return 4;
      }
      if (x < y)
      {
        return 1;
      }
      if (x == y)
      {
        return 2;
      }
      return 0;
    }


#line 1774 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\math.h"




                /* GENERIC TEMPLATES */
#line 1854 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\math.h"




#line 2010 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\math.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 46 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\config\\includes.h"
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

#line 30 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ysizet.h"







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
#line 47 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\config\\includes.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ctype.h"
/* ctype.h standard header */
/* Copyright 2003-2010 IAR Systems AB. */




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

#line 11 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ctype.h"



#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xlocale.h"
/* xlocale.h internal header file */
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

#line 12 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xlocale.h"


#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xtls.h"
/* xtls.h internal header */
/* Copyright 2003-2010 IAR Systems AB. */




  #pragma system_include


#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xmtx.h"
/* xmtx.h internal header */
/* Copyright 2005-2010 IAR Systems AB. */




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

#line 11 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xmtx.h"


#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdlib.h"
/* stdlib.h standard header */
/* Copyright 2005-2010 IAR Systems AB. */

#line 468 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdlib.h"

#line 494 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdlib.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 14 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xmtx.h"


#line 32 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xmtx.h"



/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 11 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xtls.h"

/* We need to turn off this warning */
#pragma diag_suppress = Pe076


__intrinsic __nounwind int __iar_Atthreadexit(void (*)(void));
__intrinsic __nounwind void __iar_Destroytls(void);









#line 34 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xtls.h"

#line 43 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xtls.h"











#line 195 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xtls.h"





/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 15 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xlocale.h"

#line 94 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xlocale.h"

  /*
   * ======================================================================
   * Reduced support.  One locale (possibly "C") is hardwired.
   */

  /*
   * This defined the Macro _LOCALE_WITH_USED (i.e. With used
   * locale). Expands "f" to the corresponding identifier in the
   * selected locale.
   */

#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xlocaleuse.h"
/* localeuse.h - Pick the one locale to use (for non-full locale support).
 * Copyright 2003-2010  IAR Systems AB.  
 *
 * Do not edit; this file was automatically generated by 'locparse'.
 */





  #pragma system_include





#line 179 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xlocaleuse.h"

#line 107 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xlocale.h"

#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xlocale_c.h"
/* locale_c.h Standard "C" locale definitions. */
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

#line 11 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xlocale_c.h"


#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\wchar.h"
/* wchar.h standard header */
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

#line 11 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\wchar.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ysizet.h"
/* ysizet.h internal header file. */
/* Copyright 2003-2010 IAR Systems AB.  */

#line 30 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ysizet.h"







#line 13 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\wchar.h"



/* Consistency check */




/* Module consistency. */
#pragma rtmodel="__dlib_file_descriptor","0"

/* Support for portable C++ object model. */







                /* MACROS */












                /* TYPE DEFINITIONS */
typedef _Mbstatet mbstate_t;

struct tm;








  typedef _Wintt wint_t;



                /* stdio DECLARATIONS */
#line 83 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\wchar.h"

__intrinsic __nounwind wint_t getwchar(void);
__intrinsic __nounwind wint_t __ungetwchar(wint_t);
__intrinsic __nounwind wint_t putwchar(wchar_t);
__intrinsic __nounwind int swprintf(wchar_t *, size_t, 
                          const wchar_t *, ...);
__intrinsic __nounwind int swscanf(const wchar_t *,
                         const wchar_t *, ...);
__intrinsic __nounwind int vswprintf(wchar_t *, size_t,
                           const wchar_t *, __Va_list);
__intrinsic __nounwind int vwprintf(const wchar_t *, __Va_list);

  __intrinsic __nounwind int vswscanf(const wchar_t *, const wchar_t *,
                            __Va_list);
  __intrinsic __nounwind int vwscanf(const wchar_t *, __Va_list);

__intrinsic __nounwind int wprintf(const wchar_t *, ...);
__intrinsic __nounwind int wscanf(const wchar_t *, ...);

                /* stdlib DECLARATIONS */
__intrinsic __nounwind size_t mbrlen(const char *, size_t,
                           mbstate_t *);
__intrinsic __nounwind size_t mbrtowc(wchar_t *, const char *, size_t,
                            mbstate_t *);
__intrinsic __nounwind size_t mbsrtowcs(wchar_t *, const char **,
                              size_t, mbstate_t *);
__intrinsic __nounwind int mbsinit(const mbstate_t *);
__intrinsic __nounwind size_t wcrtomb(char *, wchar_t, mbstate_t *);
__intrinsic __nounwind size_t wcsrtombs(char *, const wchar_t **,
                              size_t, mbstate_t *);
__intrinsic __nounwind long wcstol(const wchar_t *, wchar_t **, int);
__intrinsic __nounwind unsigned long wcstoul(const wchar_t *,
                                   wchar_t **, int);



    #pragma language=save
    #pragma language=extended
    __intrinsic __nounwind _Longlong wcstoll(const wchar_t *, 
                                   wchar_t **, int);
    __intrinsic __nounwind _ULonglong wcstoull(const wchar_t *, 
                                     wchar_t **, int);
    #pragma language=restore



                /* string DECLARATIONS */
__intrinsic __nounwind wchar_t * wcscat(wchar_t *, const wchar_t *);
__intrinsic __nounwind int wcscmp(const wchar_t *, const wchar_t *);
__intrinsic __nounwind int wcscoll(const wchar_t *, const wchar_t *);
__intrinsic __nounwind wchar_t * wcscpy(wchar_t *, const wchar_t *);
__intrinsic __nounwind size_t wcscspn(const wchar_t *, const wchar_t *);
__intrinsic __nounwind size_t wcslen(const wchar_t *);
__intrinsic __nounwind wchar_t * wcsncat(wchar_t *, const wchar_t *, 
                               size_t);
__intrinsic __nounwind int wcsncmp(const wchar_t *, const wchar_t *, size_t);
__intrinsic __nounwind wchar_t * wcsncpy(wchar_t *, const wchar_t *,
                               size_t);
__intrinsic __nounwind size_t wcsspn(const wchar_t *, const wchar_t *);
__intrinsic __nounwind wchar_t * wcstok(wchar_t *, const wchar_t *,
                              wchar_t **);
__intrinsic __nounwind size_t wcsxfrm(wchar_t *, const wchar_t *, 
                            size_t);
__intrinsic __nounwind int wmemcmp(const wchar_t *, const wchar_t *, size_t);
__intrinsic __nounwind wchar_t * wmemcpy(wchar_t *, const wchar_t *, 
                               size_t);
__intrinsic __nounwind wchar_t * wmemmove(wchar_t *, const wchar_t *, size_t);
__intrinsic __nounwind wchar_t * wmemset(wchar_t *, wchar_t, size_t);

                /* time DECLARATIONS */
__intrinsic __nounwind size_t wcsftime(wchar_t *, size_t,
                             const wchar_t *, 
                             const struct tm *);


__intrinsic __nounwind wint_t btowc(int);

  __intrinsic __nounwind float wcstof(const wchar_t *, wchar_t **);
  __intrinsic __nounwind long double wcstold(const wchar_t *,
                                   wchar_t **);

__intrinsic __nounwind double wcstod(const wchar_t *, wchar_t **);
__intrinsic __nounwind int wctob(wint_t);



  __intrinsic __nounwind wint_t __iar_Btowc(int);
  __intrinsic __nounwind int __iar_Wctob(wint_t);
  __intrinsic __nounwind double __iar_WStod(const wchar_t *, wchar_t **, long);
  __intrinsic __nounwind float __iar_WStof(const wchar_t *, wchar_t **, long);
  __intrinsic __nounwind long double __iar_WStold(const wchar_t *, wchar_t **, long);
  __intrinsic __nounwind unsigned long __iar_WStoul(const wchar_t *, wchar_t **, int);
  __intrinsic __nounwind _Longlong __iar_WStoll(const wchar_t *, wchar_t **, int);
  __intrinsic __nounwind _ULonglong __iar_WStoull(const wchar_t *, wchar_t **, int);

  __intrinsic __nounwind wchar_t * __iar_Wmemchr(const wchar_t *, wchar_t, size_t);
  __intrinsic __nounwind wchar_t * __iar_Wcschr(const wchar_t *, wchar_t);
  __intrinsic __nounwind wchar_t * __iar_Wcspbrk(const wchar_t *, const wchar_t *);
  __intrinsic __nounwind wchar_t * __iar_Wcsrchr(const wchar_t *, wchar_t);
  __intrinsic __nounwind wchar_t * __iar_Wcsstr(const wchar_t *, const wchar_t *);
  

  


/* IAR, can't use the Dinkum stratagem for wmemchr,... */

#line 204 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\wchar.h"
  __intrinsic __nounwind wchar_t * wmemchr(const wchar_t *, wchar_t, size_t);
  __intrinsic __nounwind wchar_t * wcschr(const wchar_t *, wchar_t);
  __intrinsic __nounwind wchar_t * wcspbrk(const wchar_t *, const wchar_t *);
  __intrinsic __nounwind wchar_t * wcsrchr(const wchar_t *, wchar_t);
  __intrinsic __nounwind wchar_t * wcsstr(const wchar_t *, const wchar_t *);


#line 267 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\wchar.h"
    #pragma inline
    wchar_t * wmemchr(const wchar_t *_S, wchar_t _C, size_t _N)
    {
      return (__iar_Wmemchr(_S, _C, _N));
    }

    #pragma inline
    wchar_t * wcschr(const wchar_t *_S, wchar_t _C)
    {
      return (__iar_Wcschr(_S, _C));
    }

    #pragma inline
    wchar_t * wcspbrk(const wchar_t *_S, const wchar_t *_P)
    {
      return (__iar_Wcspbrk(_S, _P));
    }

    #pragma inline
    wchar_t * wcsrchr(const wchar_t *_S, wchar_t _C)
    {
      return (__iar_Wcsrchr(_S, _C));
    }

    #pragma inline
    wchar_t * wcsstr(const wchar_t *_S, const wchar_t *_P)
    {
      return (__iar_Wcsstr(_S, _P));
    }


  #pragma inline
  wint_t btowc(int _C)
  {       /* convert single byte to wide character */
    return (__iar_Btowc(_C));
  }


    #pragma inline
    float wcstof(const wchar_t *_S,
                 wchar_t **_Endptr)
    {       /* convert wide string to double */
      return (__iar_WStof(_S, _Endptr, 0));
    }

    #pragma inline
    long double wcstold(const wchar_t *_S,
                        wchar_t **_Endptr)
    {       /* convert wide string to double */
      return (__iar_WStold(_S, _Endptr, 0));
    }


      #pragma language=save
      #pragma language=extended
      #pragma inline
       _Longlong wcstoll(const wchar_t * _S, 
                         wchar_t ** _Endptr, int _Base)
       {
	return (__iar_WStoll(_S, _Endptr, _Base));
       }

      #pragma inline
      _ULonglong wcstoull(const wchar_t * _S, 
                          wchar_t ** _Endptr, int _Base)
      {
	return (__iar_WStoull(_S, _Endptr, _Base));
      }
      #pragma language=restore




  #pragma inline
  double wcstod(const wchar_t *_S,
                wchar_t **_Endptr)
  {       /* convert wide string to double */
    return (__iar_WStod(_S, _Endptr, 0));
  }


  #pragma inline
  unsigned long wcstoul(const wchar_t *_S,
                        wchar_t **_Endptr, int _Base)
  {       /* convert wide string to unsigned long */
    return (__iar_WStoul(_S, _Endptr, _Base));
  }

  #pragma inline
  int wctob(wint_t _Wc)
  {       /* convert wide character to single byte */
    return (__iar_Wctob(_Wc));
  }






#line 410 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\wchar.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 15 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xlocale_c.h"







__intrinsic __nounwind int _LocaleC_toupper(int);
__intrinsic __nounwind int _LocaleC_tolower(int);

__intrinsic __nounwind int _LocaleC_isalpha(int);
__intrinsic __nounwind int _LocaleC_iscntrl(int);
__intrinsic __nounwind int _LocaleC_islower(int);
__intrinsic __nounwind int _LocaleC_ispunct(int);
__intrinsic __nounwind int _LocaleC_isspace(int);
__intrinsic __nounwind int _LocaleC_isupper(int);



__intrinsic __nounwind wint_t _LocaleC_towupper(wint_t);
__intrinsic __nounwind wint_t _LocaleC_towlower(wint_t);

__intrinsic __nounwind int _LocaleC_iswalpha(wint_t);
__intrinsic __nounwind int _LocaleC_iswcntrl(wint_t);
__intrinsic __nounwind int _LocaleC_iswlower(wint_t);
__intrinsic __nounwind int _LocaleC_iswpunct(wint_t);
__intrinsic __nounwind int _LocaleC_iswspace(wint_t);
__intrinsic __nounwind int _LocaleC_iswupper(wint_t);
__intrinsic __nounwind int _LocaleC_iswdigit(wint_t);
__intrinsic __nounwind int _LocaleC_iswxdigit(wint_t);





/*
 * Inline definitions.
 */


  /* Note: The first two must precede the functions they are used in. */
  #pragma inline
  int _LocaleC_islower(int _C)
  {
    return (_C>='a' && _C<='z');
  }

  #pragma inline
  int _LocaleC_isupper(int _C)
  {
    return (_C>='A' && _C<='Z');
  }

  #pragma inline
  int _LocaleC_isalpha(int _C)
  {
    return (   _LocaleC_islower(_C)
            || _LocaleC_isupper(_C));
  }

  #pragma inline
  int _LocaleC_iscntrl(int _C)
  {
    return (   (_C>='\x00' && _C<='\x1f')
            || _C=='\x7f');
  }

  #pragma inline
  int _LocaleC_ispunct(int _C)
  {
    return (   (_C>='\x21' && _C<='\x2f')
            || (_C>='\x3a' && _C<='\x40')
            || (_C>='\x5b' && _C<='\x60')
            || (_C>='\x7b' && _C<='\x7e'));
  }

  #pragma inline
  int _LocaleC_isspace(int _C)
  {
    return (   (_C>='\x09' && _C<='\x0d')
            || (_C==' '));
  }

  #pragma inline
  int _LocaleC_tolower(int _C)
  {
    return (_LocaleC_isupper(_C)?_C-'A'+'a':_C);
  }

  #pragma inline
  int _LocaleC_toupper(int _C)
  {
    return (_LocaleC_islower(_C)?_C-'a'+'A':_C);
  }




#line 111 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xlocale.h"









#line 21 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ctype.h"



/* Module consistency. */
#pragma rtmodel="__dlib_full_locale_support",   "0"





         __intrinsic __nounwind int isalnum(int);
         __intrinsic __nounwind int isalpha(int);

         __intrinsic __nounwind int isblank(int);

         __intrinsic __nounwind int iscntrl(int);
_Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind int isdigit(int);
         __intrinsic __nounwind int isgraph(int);
         __intrinsic __nounwind int islower(int);
         __intrinsic __nounwind int isprint(int);
         __intrinsic __nounwind int ispunct(int);
         __intrinsic __nounwind int isspace(int);
         __intrinsic __nounwind int isupper(int);
_Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind int isxdigit(int);
         __intrinsic __nounwind int tolower(int);
         __intrinsic __nounwind int toupper(int);


/* Aeabi table constants */
#line 58 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ctype.h"




      #pragma inline=no_body
      int isblank(int _C)
      {
        return (   _C == ' '
                || _C == '\t'
                || isspace(_C));
      }


    #pragma inline=no_body
    int isdigit(int _C)
    {
      return _C >= '0' && _C <= '9';
    }

    #pragma inline=no_body
    int isxdigit(int _C)
    {
      return (   (_C >= 'a' && _C <= 'f')
              || (_C >= 'A' && _C <= 'F')
              || isdigit(_C));
    }

    #pragma inline=no_body
    int isalnum(int _C)
    {
      return (   isalpha(_C)
              || isdigit(_C));
    }

    #pragma inline=no_body
    int isprint(int _C)
    {
      return (   (_C >= ' ' && _C <= '\x7e')
              || isalpha(_C)
              || ispunct(_C));
    }

    #pragma inline=no_body
    int isgraph(int _C)
    {
      return (   _C != ' '
              && isprint(_C));
    }
#line 230 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ctype.h"







#line 243 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ctype.h"

      /* In non-full mode we redirect the corresponding locale function. */
      
      extern int _LocaleC_toupper(int);
      extern int _LocaleC_tolower(int);
      extern int _LocaleC_isalpha(int);
      extern int _LocaleC_iscntrl(int);
      extern int _LocaleC_islower(int);
      extern int _LocaleC_ispunct(int);
      extern int _LocaleC_isspace(int);
      extern int _LocaleC_isupper(int);
      

      #pragma inline=no_body
      int toupper(int _C)
      {
        return _LocaleC_toupper(_C);
      }

      #pragma inline=no_body
      int tolower(int _C)
      {
        return _LocaleC_tolower(_C);
      }

      #pragma inline=no_body
      int isalpha(int _C)
      {
       return _LocaleC_isalpha(_C);
      }

      #pragma inline=no_body
      int iscntrl(int _C)
      {
        return _LocaleC_iscntrl(_C);
      }

      #pragma inline=no_body
      int islower(int _C)
      {
        return _LocaleC_islower(_C);
      }

      #pragma inline=no_body
      int ispunct(int _C)
      {
        return _LocaleC_ispunct(_C);
      }

      #pragma inline=no_body
      int isspace(int _C)
      {
        return _LocaleC_isspace(_C);
      }

      #pragma inline=no_body
      int isupper(int _C)
      {
        return _LocaleC_isupper(_C);
      }






  
  



#line 333 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ctype.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 48 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\config\\includes.h"
#include <stdarg.h>

/*
*********************************************************************************************************
*                                              LIBRARIES
*********************************************************************************************************
*/

//#include  <cpu.h>
//#include  <lib_def.h>
//#include  <lib_ascii.h>
//#include  <lib_math.h>
//#include  <lib_mem.h>
//#include  <lib_str.h>



/*
*********************************************************************************************************
*                                              APP / BSP
*********************************************************************************************************
*/

//#include  <bsp.h>

/*
*********************************************************************************************************
*                                                 OS
*********************************************************************************************************
*/

#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"
/*
*********************************************************************************************************
*                                                uC/OS-II
*                                          The Real-Time Kernel
*
*                              (c) Copyright 1992-2010, Micrium, Weston, FL
*                                           All Rights Reserved
*
* File    : uCOS_II.H
* By      : Jean J. Labrosse
* Version : V2.92
*
* LICENSING TERMS:
* ---------------
*   uC/OS-II is provided in source form for FREE evaluation, for educational use or for peaceful research.
* If you plan on using  uC/OS-II  in a commercial product you need to contact Micri�m to properly license
* its use in your product. We provide ALL the source code for your convenience and to help you experience
* uC/OS-II.   The fact that the  source is provided does  NOT  mean that you can use it without  paying a
* licensing fee.
*********************************************************************************************************
*/








/*
*********************************************************************************************************
*                                          uC/OS-II VERSION NUMBER
*********************************************************************************************************
*/



/*
*********************************************************************************************************
*                                           INCLUDE HEADER FILES
*********************************************************************************************************
*/

//#include <app_cfg.h>
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\config\\os_cfg.h"
/*
*********************************************************************************************************
*                                                uC/OS-II
*                                          The Real-Time Kernel
*                                  uC/OS-II Configuration File for V2.8x
*
*                               (c) Copyright 2005-2009, Micrium, Weston, FL
*                                          All Rights Reserved
*
*
* File    : OS_CFG.H
* By      : Jean J. Labrosse
* Version : V2.90
*
* LICENSING TERMS:
* ---------------
*   uC/OS-II is provided in source form for FREE evaluation, for educational use or for peaceful research.
* If you plan on using  uC/OS-II  in a commercial product you need to contact Micri祄 to properly license
* its use in your product. We provide ALL the source code for your convenience and to help you experience
* uC/OS-II.   The fact that the  source is provided does  NOT  mean that you can use it without  paying a
* licensing fee.
*********************************************************************************************************
*/





                                       /* ---------------------- MISCELLANEOUS ----------------------- */














                                       /* ... MUST NEVER be higher than 254!                           */













                                       /* --------------------- TASK STACK SIZE ---------------------- */





                                       /* --------------------- TASK MANAGEMENT ---------------------- */
#line 77 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\config\\os_cfg.h"


                                       /* ----------------------- EVENT FLAGS ------------------------ */
#line 87 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\config\\os_cfg.h"


                                       /* -------------------- MESSAGE MAILBOXES --------------------- */
#line 97 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\config\\os_cfg.h"


                                       /* --------------------- MEMORY MANAGEMENT -------------------- */





                                       /* ---------------- MUTUAL EXCLUSION SEMAPHORES --------------- */






                                       /* ---------------------- MESSAGE QUEUES ---------------------- */
#line 122 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\config\\os_cfg.h"


                                       /* ------------------------ SEMAPHORES ------------------------ */
#line 131 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\config\\os_cfg.h"


                                       /* --------------------- TIME MANAGEMENT ---------------------- */






                                       /* --------------------- TIMER MANAGEMENT --------------------- */
#line 46 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\port\\os_cpu.h"
/*
*********************************************************************************************************
*                                                uC/OS-II
*                                          The Real-Time Kernel
*
*
*                              (c) Copyright 2010; Micrium, Inc.; Weston, FL
*                    All rights reserved.  Protected by international copyright laws.
*
*                                           ARM Cortex-M4 Port
*
* File      : OS_CPU.H
* Version   : V2.92
* By        : JJL
*
* LICENSING TERMS:
* ---------------
*             uC/OS-III is provided in source form to registered licensees ONLY.  It is 
*             illegal to distribute this source code to any third party unless you receive 
*             written permission by an authorized Micrium representative.  Knowledge of 
*             the source code may NOT be used to develop a similar product.
*
*             Please help us continue to provide the Embedded community with the finest
*             software available.  Your honesty is greatly appreciated.
*
*             You can contact us at www.micrium.com.
*
* For       : ARMv7 Cortex-M4
* Mode      : Thumb-2 ISA
* Toolchain : IAR EWARM
*********************************************************************************************************
*/














/*
*********************************************************************************************************
*                                               MACROS
*********************************************************************************************************
*/



/*
*********************************************************************************************************
*                                       TIMESTAMP CONFIGURATION
*
* Note(s) : (1) OS_TS_GET() is generally defined as CPU_TS_Get32() to allow CPU timestamp timer to be of
*               any data type size.
*
*           (2) For architectures that provide 32-bit or higher precision free running counters 
*               (i.e. cycle count registers):
*
*               (a) OS_TS_GET() may be defined as CPU_TS_TmrRd() to improve performance when retrieving
*                   the timestamp.
*
*               (b) CPU_TS_TmrRd() MUST be configured to be greater or equal to 32-bits to avoid
*                   truncation of TS.
*********************************************************************************************************
*/














/*
*********************************************************************************************************
*                              OS TICK INTERRUPT PRIORITY CONFIGURATION
*
* Note(s) : (1) For systems that don't need any high, real-time priority interrupts; the tick interrupt
*               should be configured as the highest priority interrupt but won't adversely affect system
*               operations.
*
*           (2) For systems that need one or more high, real-time interrupts; these should be configured
*               higher than the tick interrupt which MAY delay execution of the tick interrupt.
*
*               (a) If the higher priority interrupts do NOT continually consume CPU cycles but only
*                   occasionally delay tick interrupts, then the real-time interrupts can successfully
*                   handle their intermittent/periodic events with the system not losing tick interrupts
*                   but only increasing the jitter.
*
*               (b) If the higher priority interrupts consume enough CPU cycles to continually delay the
*                   tick interrupt, then the CPU/system is most likely over-burdened & can't be expected
*                   to handle all its interrupts/tasks. The system time reference gets compromised as a
*                   result of losing tick interrupts.
*********************************************************************************************************
*/





/*
*********************************************************************************************************
*                                              DATA TYPES
*                                         (Compiler Specific)
*********************************************************************************************************
*/

typedef unsigned char  BOOLEAN;
typedef unsigned char  INT8U;                    /* Unsigned  8 bit quantity                           */
typedef signed   char  INT8S;                    /* Signed    8 bit quantity                           */
typedef unsigned short INT16U;                   /* Unsigned 16 bit quantity                           */
typedef signed   short INT16S;                   /* Signed   16 bit quantity                           */
typedef unsigned int   INT32U;                   /* Unsigned 32 bit quantity                           */
typedef signed   int   INT32S;                   /* Signed   32 bit quantity                           */
typedef float          FP32;                     /* Single precision floating point                    */
typedef double         FP64;                     /* Double precision floating point                    */

typedef unsigned int   OS_STK;                   /* Each stack entry is 32-bit wide                    */
typedef unsigned int   OS_CPU_SR;                /* Define size of CPU status register (PSR = 32 bits) */

/*
*********************************************************************************************************
*                                              Cortex-M3
*                                      Critical Section Management
*
* Method #1:  Disable/Enable interrupts using simple instructions.  After critical section, interrupts
*             will be enabled even if they were disabled before entering the critical section.
*             NOT IMPLEMENTED
*
* Method #2:  Disable/Enable interrupts by preserving the state of interrupts.  In other words, if
*             interrupts were disabled before entering the critical section, they will be disabled when
*             leaving the critical section.
*             NOT IMPLEMENTED
*
* Method #3:  Disable/Enable interrupts by preserving the state of interrupts.  Generally speaking you
*             would store the state of the interrupt disable flag in the local variable 'cpu_sr' and then
*             disable interrupts.  'cpu_sr' is allocated in all of uC/OS-II's functions that need to
*             disable interrupts.  You would restore the interrupt disable state by copying back 'cpu_sr'
*             into the CPU's status register.
*********************************************************************************************************
*/







/*
*********************************************************************************************************
*                                          GLOBAL VARIABLES
*********************************************************************************************************
*/

extern  OS_STK   OS_CPU_ExceptStk[128u];
extern  OS_STK  *OS_CPU_ExceptStkBase;

/*
*********************************************************************************************************
*                                         FUNCTION PROTOTYPES
*********************************************************************************************************
*/


OS_CPU_SR  OS_CPU_SR_Save(void);
void       OS_CPU_SR_Restore(OS_CPU_SR cpu_sr);


void  OSCtxSw              (void);
void  OSIntCtxSw           (void);
void  OSStartHighRdy       (void);

void  OS_CPU_PendSVHandler (void);


void  OS_CPU_SysTickHandler(void);
void  OS_CPU_SysTickInit   (INT32U  cnts);

#line 47 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"

/*
*********************************************************************************************************
*                                             MISCELLANEOUS
*********************************************************************************************************
*/





























#line 89 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"









/*$PAGE*/
/*
*********************************************************************************************************
*                              TASK STATUS (Bit definition for OSTCBStat)
*********************************************************************************************************
*/
#line 112 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"



/*
*********************************************************************************************************
*                           TASK PEND STATUS (Status codes for OSTCBStatPend)
*********************************************************************************************************
*/




/*
*********************************************************************************************************
*                                        OS_EVENT types
*********************************************************************************************************
*/
#line 135 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"


                                            /* ... (Must be different value than OS_EVENT_TYPE_xxx)    */

/*
*********************************************************************************************************
*                                         EVENT FLAGS
*********************************************************************************************************
*/



















/*
*********************************************************************************************************
*                                   Values for OSTickStepState
*
* Note(s): This feature is used by uC/OS-View.
*********************************************************************************************************
*/







/*
*********************************************************************************************************
*       Possible values for 'opt' argument of OSSemDel(), OSMboxDel(), OSQDel() and OSMutexDel()
*********************************************************************************************************
*/



/*
*********************************************************************************************************
*                                        OS???Pend() OPTIONS
*
* These #defines are used to establish the options for OS???PendAbort().
*********************************************************************************************************
*/



/*
*********************************************************************************************************
*                                     OS???PostOpt() OPTIONS
*
* These #defines are used to establish the options for OSMboxPostOpt() and OSQPostOpt().
*********************************************************************************************************
*/





/*
*********************************************************************************************************
*                                 TASK OPTIONS (see OSTaskCreateExt())
*********************************************************************************************************
*/





/*
*********************************************************************************************************
*                            TIMER OPTIONS (see OSTmrStart() and OSTmrStop())
*********************************************************************************************************
*/








/*
*********************************************************************************************************
*                                            TIMER STATES
*********************************************************************************************************
*/





/*
*********************************************************************************************************
*                                             ERROR CODES
*********************************************************************************************************
*/


#line 256 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"

#line 267 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"













#line 294 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"

#line 301 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"

#line 312 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"



#line 321 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"



#line 338 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"

/*$PAGE*/
/*
*********************************************************************************************************
*                                          EVENT CONTROL BLOCK
*********************************************************************************************************
*/


typedef  INT8U    OS_PRIO;





typedef struct os_event {
    INT8U    OSEventType;                    /* Type of event control block (see OS_EVENT_TYPE_xxxx)    */
    void    *OSEventPtr;                     /* Pointer to message or queue structure                   */
    INT16U   OSEventCnt;                     /* Semaphore Count (not used if other EVENT type)          */
    OS_PRIO  OSEventGrp;                     /* Group corresponding to tasks waiting for event to occur */
    OS_PRIO  OSEventTbl[((63u) / 8u + 1u)];  /* List of tasks waiting for event to occur                */


    INT8U   *OSEventName;

} OS_EVENT;



/*
*********************************************************************************************************
*                                       EVENT FLAGS CONTROL BLOCK
*********************************************************************************************************
*/








typedef  INT16U   OS_FLAGS;







typedef struct os_flag_grp {                /* Event Flag Group                                        */
    INT8U         OSFlagType;               /* Should be set to OS_EVENT_TYPE_FLAG                     */
    void         *OSFlagWaitList;           /* Pointer to first NODE of task waiting on event flag     */
    OS_FLAGS      OSFlagFlags;              /* 8, 16 or 32 bit flags                                   */

    INT8U        *OSFlagName;

} OS_FLAG_GRP;



typedef struct os_flag_node {               /* Event Flag Wait List Node                               */
    void         *OSFlagNodeNext;           /* Pointer to next     NODE in wait list                   */
    void         *OSFlagNodePrev;           /* Pointer to previous NODE in wait list                   */
    void         *OSFlagNodeTCB;            /* Pointer to TCB of waiting task                          */
    void         *OSFlagNodeFlagGrp;        /* Pointer to Event Flag Group                             */
    OS_FLAGS      OSFlagNodeFlags;          /* Event flag to wait on                                   */
    INT8U         OSFlagNodeWaitType;       /* Type of wait:                                           */
                                            /*      OS_FLAG_WAIT_AND                                   */
                                            /*      OS_FLAG_WAIT_ALL                                   */
                                            /*      OS_FLAG_WAIT_OR                                    */
                                            /*      OS_FLAG_WAIT_ANY                                   */
} OS_FLAG_NODE;


/*$PAGE*/
/*
*********************************************************************************************************
*                                          MESSAGE MAILBOX DATA
*********************************************************************************************************
*/


typedef struct os_mbox_data {
    void   *OSMsg;                         /* Pointer to message in mailbox                            */
    OS_PRIO OSEventTbl[((63u) / 8u + 1u)]; /* List of tasks waiting for event to occur                 */
    OS_PRIO OSEventGrp;                    /* Group corresponding to tasks waiting for event to occur  */
} OS_MBOX_DATA;


/*
*********************************************************************************************************
*                                     MEMORY PARTITION DATA STRUCTURES
*********************************************************************************************************
*/


typedef struct os_mem {                   /* MEMORY CONTROL BLOCK                                      */
    void   *OSMemAddr;                    /* Pointer to beginning of memory partition                  */
    void   *OSMemFreeList;                /* Pointer to list of free memory blocks                     */
    INT32U  OSMemBlkSize;                 /* Size (in bytes) of each block of memory                   */
    INT32U  OSMemNBlks;                   /* Total number of blocks in this partition                  */
    INT32U  OSMemNFree;                   /* Number of memory blocks remaining in this partition       */

    INT8U  *OSMemName;                    /* Memory partition name                                     */

} OS_MEM;


typedef struct os_mem_data {
    void   *OSAddr;                    /* Pointer to the beginning address of the memory partition     */
    void   *OSFreeList;                /* Pointer to the beginning of the free list of memory blocks   */
    INT32U  OSBlkSize;                 /* Size (in bytes) of each memory block                         */
    INT32U  OSNBlks;                   /* Total number of blocks in the partition                      */
    INT32U  OSNFree;                   /* Number of memory blocks free                                 */
    INT32U  OSNUsed;                   /* Number of memory blocks used                                 */
} OS_MEM_DATA;


/*$PAGE*/
/*
*********************************************************************************************************
*                                    MUTUAL EXCLUSION SEMAPHORE DATA
*********************************************************************************************************
*/


typedef struct os_mutex_data {
    OS_PRIO OSEventTbl[((63u) / 8u + 1u)];  /* List of tasks waiting for event to occur                */
    OS_PRIO OSEventGrp;                     /* Group corresponding to tasks waiting for event to occur */
    BOOLEAN OSValue;                        /* Mutex value (OS_FALSE = used, OS_TRUE = available)      */
    INT8U   OSOwnerPrio;                    /* Mutex owner's task priority or 0xFF if no owner         */
    INT8U   OSMutexPCP;                     /* Priority Ceiling Priority or 0xFF if PCP disabled       */
} OS_MUTEX_DATA;


/*
*********************************************************************************************************
*                                          MESSAGE QUEUE DATA
*********************************************************************************************************
*/


typedef struct os_q {                   /* QUEUE CONTROL BLOCK                                         */
    struct os_q   *OSQPtr;              /* Link to next queue control block in list of free blocks     */
    void         **OSQStart;            /* Pointer to start of queue data                              */
    void         **OSQEnd;              /* Pointer to end   of queue data                              */
    void         **OSQIn;               /* Pointer to where next message will be inserted  in   the Q  */
    void         **OSQOut;              /* Pointer to where next message will be extracted from the Q  */
    INT16U         OSQSize;             /* Size of queue (maximum number of entries)                   */
    INT16U         OSQEntries;          /* Current number of entries in the queue                      */
} OS_Q;


typedef struct os_q_data {
    void          *OSMsg;               /* Pointer to next message to be extracted from queue          */
    INT16U         OSNMsgs;             /* Number of messages in message queue                         */
    INT16U         OSQSize;             /* Size of message queue                                       */
    OS_PRIO        OSEventTbl[((63u) / 8u + 1u)];  /* List of tasks waiting for event to occur         */
    OS_PRIO        OSEventGrp;          /* Group corresponding to tasks waiting for event to occur     */
} OS_Q_DATA;


/*
*********************************************************************************************************
*                                           SEMAPHORE DATA
*********************************************************************************************************
*/


typedef struct os_sem_data {
    INT16U  OSCnt;                          /* Semaphore count                                         */
    OS_PRIO OSEventTbl[((63u) / 8u + 1u)];  /* List of tasks waiting for event to occur                */
    OS_PRIO OSEventGrp;                     /* Group corresponding to tasks waiting for event to occur */
} OS_SEM_DATA;


/*
*********************************************************************************************************
*                                            TASK STACK DATA
*********************************************************************************************************
*/


typedef struct os_stk_data {
    INT32U  OSFree;                    /* Number of free entries on the stack                          */
    INT32U  OSUsed;                    /* Number of entries used on the stack                          */
} OS_STK_DATA;


/*$PAGE*/
/*
*********************************************************************************************************
*                                          TASK CONTROL BLOCK
*********************************************************************************************************
*/

typedef struct os_tcb {
    OS_STK          *OSTCBStkPtr;           /* Pointer to current top of stack                         */


    void            *OSTCBExtPtr;           /* Pointer to user definable data for TCB extension        */
    OS_STK          *OSTCBStkBottom;        /* Pointer to bottom of stack                              */
    INT32U           OSTCBStkSize;          /* Size of task stack (in number of stack elements)        */
    INT16U           OSTCBOpt;              /* Task options as passed by OSTaskCreateExt()             */
    INT16U           OSTCBId;               /* Task ID (0..65535)                                      */


    struct os_tcb   *OSTCBNext;             /* Pointer to next     TCB in the TCB list                 */
    struct os_tcb   *OSTCBPrev;             /* Pointer to previous TCB in the TCB list                 */


    OS_EVENT        *OSTCBEventPtr;         /* Pointer to          event control block                 */



    OS_EVENT       **OSTCBEventMultiPtr;    /* Pointer to multiple event control blocks                */



    void            *OSTCBMsg;              /* Message received from OSMboxPost() or OSQPost()         */




    OS_FLAG_NODE    *OSTCBFlagNode;         /* Pointer to event flag node                              */

    OS_FLAGS         OSTCBFlagsRdy;         /* Event flags that made task ready to run                 */


    INT32U           OSTCBDly;              /* Nbr ticks to delay task or, timeout waiting for event   */
    INT8U            OSTCBStat;             /* Task      status                                        */
    INT8U            OSTCBStatPend;         /* Task PEND status                                        */
    INT8U            OSTCBPrio;             /* Task priority (0 == highest)                            */

    INT8U            OSTCBX;                /* Bit position in group  corresponding to task priority   */
    INT8U            OSTCBY;                /* Index into ready table corresponding to task priority   */
    OS_PRIO          OSTCBBitX;             /* Bit mask to access bit position in ready table          */
    OS_PRIO          OSTCBBitY;             /* Bit mask to access bit position in ready group          */


    INT8U            OSTCBDelReq;           /* Indicates whether a task needs to delete itself         */



    INT32U           OSTCBCtxSwCtr;         /* Number of time the task was switched in                 */
    INT32U           OSTCBCyclesTot;        /* Total number of clock cycles the task has been running  */
    INT32U           OSTCBCyclesStart;      /* Snapshot of cycle counter at start of task resumption   */
    OS_STK          *OSTCBStkBase;          /* Pointer to the beginning of the task stack              */
    INT32U           OSTCBStkUsed;          /* Number of bytes used from the stack                     */



    INT8U           *OSTCBTaskName;



    INT32U           OSTCBRegTbl[1u];

} OS_TCB;

/*$PAGE*/
/*
************************************************************************************************************************
*                                                   TIMER DATA TYPES
************************************************************************************************************************
*/


typedef  void (*OS_TMR_CALLBACK)(void *ptmr, void *parg);



typedef  struct  os_tmr {
    INT8U            OSTmrType;                       /* Should be set to OS_TMR_TYPE                                  */
    OS_TMR_CALLBACK  OSTmrCallback;                   /* Function to call when timer expires                           */
    void            *OSTmrCallbackArg;                /* Argument to pass to function when timer expires               */
    void            *OSTmrNext;                       /* Double link list pointers                                     */
    void            *OSTmrPrev;
    INT32U           OSTmrMatch;                      /* Timer expires when OSTmrTime == OSTmrMatch                    */
    INT32U           OSTmrDly;                        /* Delay time before periodic update starts                      */
    INT32U           OSTmrPeriod;                     /* Period to repeat timer                                        */

    INT8U           *OSTmrName;                       /* Name to give the timer                                        */

    INT8U            OSTmrOpt;                        /* Options (see OS_TMR_OPT_xxx)                                  */
    INT8U            OSTmrState;                      /* Indicates the state of the timer:                             */
                                                      /*     OS_TMR_STATE_UNUSED                                       */
                                                      /*     OS_TMR_STATE_RUNNING                                      */
                                                      /*     OS_TMR_STATE_STOPPED                                      */
} OS_TMR;



typedef  struct  os_tmr_wheel {
    OS_TMR          *OSTmrFirst;                      /* Pointer to first timer in linked list                         */
    INT16U           OSTmrEntries;
} OS_TMR_WHEEL;


/*$PAGE*/
/*
*********************************************************************************************************
*                                            GLOBAL VARIABLES
*********************************************************************************************************
*/

extern  INT32U            OSCtxSwCtr;               /* Counter of number of context switches           */


extern  OS_EVENT         *OSEventFreeList;          /* Pointer to list of free EVENT control blocks    */
extern  OS_EVENT          OSEventTbl[10u];/* Table of EVENT control blocks                   */



extern  OS_FLAG_GRP       OSFlagTbl[5u];  /* Table containing event flag groups              */
extern  OS_FLAG_GRP      *OSFlagFreeList;           /* Pointer to free list of event flag groups       */



extern  INT8U             OSCPUUsage;               /* Percentage of CPU used                          */
extern  INT32U            OSIdleCtrMax;             /* Max. value that idle ctr can take in 1 sec.     */
extern  INT32U            OSIdleCtrRun;             /* Val. reached by idle ctr at run time in 1 sec.  */
extern  BOOLEAN           OSStatRdy;                /* Flag indicating that the statistic task is rdy  */
extern  OS_STK            OSTaskStatStk[128u];      /* Statistics task stack          */


extern  INT8U             OSIntNesting;             /* Interrupt nesting level                         */

extern  INT8U             OSLockNesting;            /* Multitasking lock nesting level                 */

extern  INT8U             OSPrioCur;                /* Priority of current task                        */
extern  INT8U             OSPrioHighRdy;            /* Priority of highest priority task               */

extern  OS_PRIO           OSRdyGrp;                        /* Ready list group                         */
extern  OS_PRIO           OSRdyTbl[((63u) / 8u + 1u)];       /* Table of tasks which are ready to run    */

extern  BOOLEAN           OSRunning;                       /* Flag indicating that kernel is running   */

extern  INT8U             OSTaskCtr;                       /* Number of tasks created                  */

extern  volatile  INT32U  OSIdleCtr;                                 /* Idle counter                   */





extern  OS_STK            OSTaskIdleStk[128u];      /* Idle task stack                */


extern  OS_TCB           *OSTCBCur;                        /* Pointer to currently running TCB         */
extern  OS_TCB           *OSTCBFreeList;                   /* Pointer to list of free TCBs             */
extern  OS_TCB           *OSTCBHighRdy;                    /* Pointer to highest priority TCB R-to-R   */
extern  OS_TCB           *OSTCBList;                       /* Pointer to doubly linked list of TCBs    */
extern  OS_TCB           *OSTCBPrioTbl[63u + 1u];    /* Table of pointers to created TCBs   */
extern  OS_TCB            OSTCBTbl[20u + 2u];   /* Table of TCBs                  */


extern  INT8U             OSTickStepState;          /* Indicates the state of the tick step feature    */



extern  OS_MEM           *OSMemFreeList;            /* Pointer to free list of memory partitions       */
extern  OS_MEM            OSMemTbl[5u];/* Storage for memory partition manager            */



extern  OS_Q             *OSQFreeList;              /* Pointer to list of free QUEUE control blocks    */
extern  OS_Q              OSQTbl[4u];        /* Table of QUEUE control blocks                   */



extern  volatile  INT32U  OSTime;                   /* Current value of system time (in ticks)         */



extern  INT16U            OSTmrFree;                /* Number of free entries in the timer pool        */
extern  INT16U            OSTmrUsed;                /* Number of timers used                           */
extern  INT32U            OSTmrTime;                /* Current timer time                              */

extern  OS_EVENT         *OSTmrSem;                 /* Sem. used to gain exclusive access to timers    */
extern  OS_EVENT         *OSTmrSemSignal;           /* Sem. used to signal the update of timers        */

extern  OS_TMR            OSTmrTbl[16u]; /* Table containing pool of timers                 */
extern  OS_TMR           *OSTmrFreeList;            /* Pointer to free list of timers                  */
extern  OS_STK            OSTmrTaskStk[128u];

extern  OS_TMR_WHEEL      OSTmrWheelTbl[8u];


extern  INT8U   const     OSUnMapTbl[256];          /* Priority->Index    lookup table                 */

/*$PAGE*/
/*
*********************************************************************************************************
*                                          FUNCTION PROTOTYPES
*                                     (Target Independent Functions)
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*                                            MISCELLANEOUS
*********************************************************************************************************
*/




INT8U         OSEventNameGet          (OS_EVENT        *pevent,
                                       INT8U          **pname,
                                       INT8U           *perr);

void          OSEventNameSet          (OS_EVENT        *pevent,
                                       INT8U           *pname,
                                       INT8U           *perr);



INT16U        OSEventPendMulti        (OS_EVENT       **pevents_pend,
                                       OS_EVENT       **pevents_rdy,
                                       void           **pmsgs_rdy,
                                       INT32U           timeout,
                                       INT8U           *perr);




/*
*********************************************************************************************************
*                                         EVENT FLAGS MANAGEMENT
*********************************************************************************************************
*/




OS_FLAGS      OSFlagAccept            (OS_FLAG_GRP     *pgrp,
                                       OS_FLAGS         flags,
                                       INT8U            wait_type,
                                       INT8U           *perr);


OS_FLAG_GRP  *OSFlagCreate            (OS_FLAGS         flags,
                                       INT8U           *perr);


OS_FLAG_GRP  *OSFlagDel               (OS_FLAG_GRP     *pgrp,
                                       INT8U            opt,
                                       INT8U           *perr);



INT8U         OSFlagNameGet           (OS_FLAG_GRP     *pgrp,
                                       INT8U          **pname,
                                       INT8U           *perr);

void          OSFlagNameSet           (OS_FLAG_GRP     *pgrp,
                                       INT8U           *pname,
                                       INT8U           *perr);


OS_FLAGS      OSFlagPend              (OS_FLAG_GRP     *pgrp,
                                       OS_FLAGS         flags,
                                       INT8U            wait_type,
                                       INT32U           timeout,
                                       INT8U           *perr);

OS_FLAGS      OSFlagPendGetFlagsRdy   (void);
OS_FLAGS      OSFlagPost              (OS_FLAG_GRP     *pgrp,
                                       OS_FLAGS         flags,
                                       INT8U            opt,
                                       INT8U           *perr);


OS_FLAGS      OSFlagQuery             (OS_FLAG_GRP     *pgrp,
                                       INT8U           *perr);



/*
*********************************************************************************************************
*                                        MESSAGE MAILBOX MANAGEMENT
*********************************************************************************************************
*/




void         *OSMboxAccept            (OS_EVENT        *pevent);


OS_EVENT     *OSMboxCreate            (void            *pmsg);


OS_EVENT     *OSMboxDel               (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);


void         *OSMboxPend              (OS_EVENT        *pevent,
                                       INT32U           timeout,
                                       INT8U           *perr);


INT8U         OSMboxPendAbort         (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);



INT8U         OSMboxPost              (OS_EVENT        *pevent,
                                       void            *pmsg);



INT8U         OSMboxPostOpt           (OS_EVENT        *pevent,
                                       void            *pmsg,
                                       INT8U            opt);



INT8U         OSMboxQuery             (OS_EVENT        *pevent,
                                       OS_MBOX_DATA    *p_mbox_data);



/*
*********************************************************************************************************
*                                           MEMORY MANAGEMENT
*********************************************************************************************************
*/



OS_MEM       *OSMemCreate             (void            *addr,
                                       INT32U           nblks,
                                       INT32U           blksize,
                                       INT8U           *perr);

void         *OSMemGet                (OS_MEM          *pmem,
                                       INT8U           *perr);

INT8U         OSMemNameGet            (OS_MEM          *pmem,
                                       INT8U          **pname,
                                       INT8U           *perr);

void          OSMemNameSet            (OS_MEM          *pmem,
                                       INT8U           *pname,
                                       INT8U           *perr);

INT8U         OSMemPut                (OS_MEM          *pmem,
                                       void            *pblk);


INT8U         OSMemQuery              (OS_MEM          *pmem,
                                       OS_MEM_DATA     *p_mem_data);




/*
*********************************************************************************************************
*                                MUTUAL EXCLUSION SEMAPHORE MANAGEMENT
*********************************************************************************************************
*/




BOOLEAN       OSMutexAccept           (OS_EVENT        *pevent,
                                       INT8U           *perr);


OS_EVENT     *OSMutexCreate           (INT8U            prio,
                                       INT8U           *perr);


OS_EVENT     *OSMutexDel              (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);


void          OSMutexPend             (OS_EVENT        *pevent,
                                       INT32U           timeout,
                                       INT8U           *perr);

INT8U         OSMutexPost             (OS_EVENT        *pevent);


INT8U         OSMutexQuery            (OS_EVENT        *pevent,
                                       OS_MUTEX_DATA   *p_mutex_data);




/*$PAGE*/
/*
*********************************************************************************************************
*                                         MESSAGE QUEUE MANAGEMENT
*********************************************************************************************************
*/




void         *OSQAccept               (OS_EVENT        *pevent,
                                       INT8U           *perr);


OS_EVENT     *OSQCreate               (void           **start,
                                       INT16U           size);


OS_EVENT     *OSQDel                  (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);



INT8U         OSQFlush                (OS_EVENT        *pevent);


void         *OSQPend                 (OS_EVENT        *pevent,
                                       INT32U           timeout,
                                       INT8U           *perr);


INT8U         OSQPendAbort            (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);



INT8U         OSQPost                 (OS_EVENT        *pevent,
                                       void            *pmsg);



INT8U         OSQPostFront            (OS_EVENT        *pevent,
                                       void            *pmsg);



INT8U         OSQPostOpt              (OS_EVENT        *pevent,
                                       void            *pmsg,
                                       INT8U            opt);



INT8U         OSQQuery                (OS_EVENT        *pevent,
                                       OS_Q_DATA       *p_q_data);




/*$PAGE*/
/*
*********************************************************************************************************
*                                          SEMAPHORE MANAGEMENT
*********************************************************************************************************
*/



INT16U        OSSemAccept             (OS_EVENT        *pevent);


OS_EVENT     *OSSemCreate             (INT16U           cnt);


OS_EVENT     *OSSemDel                (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);


void          OSSemPend               (OS_EVENT        *pevent,
                                       INT32U           timeout,
                                       INT8U           *perr);


INT8U         OSSemPendAbort          (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);


INT8U         OSSemPost               (OS_EVENT        *pevent);


INT8U         OSSemQuery              (OS_EVENT        *pevent,
                                       OS_SEM_DATA     *p_sem_data);



void          OSSemSet                (OS_EVENT        *pevent,
                                       INT16U           cnt,
                                       INT8U           *perr);




/*$PAGE*/
/*
*********************************************************************************************************
*                                            TASK MANAGEMENT
*********************************************************************************************************
*/

INT8U         OSTaskChangePrio        (INT8U            oldprio,
                                       INT8U            newprio);



INT8U         OSTaskCreate            (void           (*task)(void *p_arg),
                                       void            *p_arg,
                                       OS_STK          *ptos,
                                       INT8U            prio);



INT8U         OSTaskCreateExt         (void           (*task)(void *p_arg),
                                       void            *p_arg,
                                       OS_STK          *ptos,
                                       INT8U            prio,
                                       INT16U           id,
                                       OS_STK          *pbos,
                                       INT32U           stk_size,
                                       void            *pext,
                                       INT16U           opt);



INT8U         OSTaskDel               (INT8U            prio);
INT8U         OSTaskDelReq            (INT8U            prio);



INT8U         OSTaskNameGet           (INT8U            prio,
                                       INT8U          **pname,
                                       INT8U           *perr);

void          OSTaskNameSet           (INT8U            prio,
                                       INT8U           *pname,
                                       INT8U           *perr);



INT8U         OSTaskResume            (INT8U            prio);
INT8U         OSTaskSuspend           (INT8U            prio);



INT8U         OSTaskStkChk            (INT8U            prio,
                                       OS_STK_DATA     *p_stk_data);



INT8U         OSTaskQuery             (INT8U            prio,
                                       OS_TCB          *p_task_data);





INT32U        OSTaskRegGet            (INT8U            prio,
                                       INT8U            id,
                                       INT8U           *perr);

void          OSTaskRegSet            (INT8U            prio,
                                       INT8U            id,
                                       INT32U           value,
                                       INT8U           *perr);


/*$PAGE*/
/*
*********************************************************************************************************
*                                            TIME MANAGEMENT
*********************************************************************************************************
*/

void          OSTimeDly               (INT32U           ticks);


INT8U         OSTimeDlyHMSM           (INT8U            hours,
                                       INT8U            minutes,
                                       INT8U            seconds,
                                       INT16U           ms);



INT8U         OSTimeDlyResume         (INT8U            prio);



INT32U        OSTimeGet               (void);
void          OSTimeSet               (INT32U           ticks);


void          OSTimeTick              (void);

/*
*********************************************************************************************************
*                                            TIMER MANAGEMENT
*********************************************************************************************************
*/


OS_TMR      *OSTmrCreate              (INT32U           dly,
                                       INT32U           period,
                                       INT8U            opt,
                                       OS_TMR_CALLBACK  callback,
                                       void            *callback_arg,
                                       INT8U           *pname,
                                       INT8U           *perr);

BOOLEAN      OSTmrDel                 (OS_TMR          *ptmr,
                                       INT8U           *perr);


INT8U        OSTmrNameGet             (OS_TMR          *ptmr,
                                       INT8U          **pdest,
                                       INT8U           *perr);

INT32U       OSTmrRemainGet           (OS_TMR          *ptmr,
                                       INT8U           *perr);

INT8U        OSTmrStateGet            (OS_TMR          *ptmr,
                                       INT8U           *perr);

BOOLEAN      OSTmrStart               (OS_TMR          *ptmr,
                                       INT8U           *perr);

BOOLEAN      OSTmrStop                (OS_TMR          *ptmr,
                                       INT8U            opt,
                                       void            *callback_arg,
                                       INT8U           *perr);

INT8U        OSTmrSignal              (void);


/*
*********************************************************************************************************
*                                             MISCELLANEOUS
*********************************************************************************************************
*/

void          OSInit                  (void);

void          OSIntEnter              (void);
void          OSIntExit               (void);






void          OSSchedLock             (void);
void          OSSchedUnlock           (void);


void          OSStart                 (void);

void          OSStatInit              (void);

INT16U        OSVersion               (void);

/*$PAGE*/
/*
*********************************************************************************************************
*                                      INTERNAL FUNCTION PROTOTYPES
*                            (Your application MUST NOT call these functions)
*********************************************************************************************************
*/


void          OS_Dummy                (void);



INT8U         OS_EventTaskRdy         (OS_EVENT        *pevent,
                                       void            *pmsg,
                                       INT8U            msk,
                                       INT8U            pend_stat);

void          OS_EventTaskWait        (OS_EVENT        *pevent);

void          OS_EventTaskRemove      (OS_TCB          *ptcb,
                                       OS_EVENT        *pevent);


void          OS_EventTaskWaitMulti   (OS_EVENT       **pevents_wait);

void          OS_EventTaskRemoveMulti (OS_TCB          *ptcb,
                                       OS_EVENT       **pevents_multi);


void          OS_EventWaitListInit    (OS_EVENT        *pevent);



void          OS_FlagInit             (void);
void          OS_FlagUnlink           (OS_FLAG_NODE    *pnode);


void          OS_MemClr               (INT8U           *pdest,
                                       INT16U           size);

void          OS_MemCopy              (INT8U           *pdest,
                                       INT8U           *psrc,
                                       INT16U           size);


void          OS_MemInit              (void);



void          OS_QInit                (void);


void          OS_Sched                (void);


INT8U         OS_StrLen               (INT8U           *psrc);


void          OS_TaskIdle             (void            *p_arg);

void          OS_TaskReturn           (void);


void          OS_TaskStat             (void            *p_arg);



void          OS_TaskStkClr           (OS_STK          *pbos,
                                       INT32U           size,
                                       INT16U           opt);



void          OS_TaskStatStkChk       (void);


INT8U         OS_TCBInit              (INT8U            prio,
                                       OS_STK          *ptos,
                                       OS_STK          *pbos,
                                       INT16U           id,
                                       INT32U           stk_size,
                                       void            *pext,
                                       INT16U           opt);


void          OSTmr_Init              (void);


/*$PAGE*/
/*
*********************************************************************************************************
*                                          FUNCTION PROTOTYPES
*                                      (Target Specific Functions)
*********************************************************************************************************
*/


void          OSDebugInit             (void);


void          OSInitHookBegin         (void);
void          OSInitHookEnd           (void);

void          OSTaskCreateHook        (OS_TCB          *ptcb);
void          OSTaskDelHook           (OS_TCB          *ptcb);

void          OSTaskIdleHook          (void);

void          OSTaskReturnHook        (OS_TCB          *ptcb);

void          OSTaskStatHook          (void);
OS_STK       *OSTaskStkInit           (void           (*task)(void *p_arg),
                                       void            *p_arg,
                                       OS_STK          *ptos,
                                       INT16U           opt);


void          OSTaskSwHook            (void);


void          OSTCBInitHook           (OS_TCB          *ptcb);


void          OSTimeTickHook          (void);


/*$PAGE*/
/*
*********************************************************************************************************
*                                          FUNCTION PROTOTYPES
*                                   (Application Specific Functions)
*********************************************************************************************************
*/

#line 1359 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"

/*
*********************************************************************************************************
*                                          FUNCTION PROTOTYPES
*
* IMPORTANT: These prototypes MUST be placed in OS_CPU.H
*********************************************************************************************************
*/







/*$PAGE*/
/*
*********************************************************************************************************
*                                   LOOK FOR MISSING #define CONSTANTS
*
* This section is used to generate ERROR messages at compile time if certain #define constants are
* MISSING in OS_CFG.H.  This allows you to quickly determine the source of the error.
*
* You SHOULD NOT change this section UNLESS you would like to add more comments as to the source of the
* compile time error.
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*                                            EVENT FLAGS
*********************************************************************************************************
*/

#line 1403 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"


























/*
*********************************************************************************************************
*                                           MESSAGE MAILBOXES
*********************************************************************************************************
*/

#line 1441 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"






















/*
*********************************************************************************************************
*                                           MEMORY MANAGEMENT
*********************************************************************************************************
*/

#line 1479 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"










/*
*********************************************************************************************************
*                                       MUTUAL EXCLUSION SEMAPHORES
*********************************************************************************************************
*/

#line 1501 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"










/*
*********************************************************************************************************
*                                              MESSAGE QUEUES
*********************************************************************************************************
*/

#line 1527 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"


































/*
*********************************************************************************************************
*                                              SEMAPHORES
*********************************************************************************************************
*/

#line 1573 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"


















/*
*********************************************************************************************************
*                                             TASK MANAGEMENT
*********************************************************************************************************
*/

#line 1603 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"























































#line 1665 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"

/*
*********************************************************************************************************
*                                             TIME MANAGEMENT
*********************************************************************************************************
*/

















/*
*********************************************************************************************************
*                                             TIMER MANAGEMENT
*********************************************************************************************************
*/

#line 1701 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"

#line 1708 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"






#line 1720 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"




















/*
*********************************************************************************************************
*                                            MISCELLANEOUS
*********************************************************************************************************
*/


























#line 1778 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"































/*
*********************************************************************************************************
*                                         SAFETY CRITICAL USE
*********************************************************************************************************
*/

#line 1890 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"





#line 80 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\config\\includes.h"




/*
*********************************************************************************************************
*                                                 OTHER
*********************************************************************************************************
*/

#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Devices\\inc\\at24cxx.h"
/**
  ******************************************************************************
  * @file    at24cxx.h
  * @author  YANDLD
  * @version V2.5
  * @date    2013.12.25
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com
  ******************************************************************************
  */



#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */
#line 235 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

#line 258 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 14 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Devices\\inc\\at24cxx.h"





//API funtctions
int eep_init(uint32_t instance);
int eep_read(uint32_t addr, uint8_t *buf, uint32_t len);
int eep_write_page(uint32_t addr, uint8_t *buf, uint32_t len);
int eep_self_test(uint32_t begin, uint32_t end);



#line 91 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\config\\includes.h"


/*
*********************************************************************************************************
*                                            INCLUDES END
*********************************************************************************************************
*/
/*******************************************************************************
 * @宏定义名称	宏进制转换函数
 *******************************************************************************/
//16to10

//十进制转换为BCD


//10to16


//10toASCII十位


//10toASCII个位


//ASCII转换十六进制十位


//ASCII转换十六进制个位


//十六进制2ASCII十位


//十六进制2ASCII个位












#line 13 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\App\\Module_CAN\\Module_Can.h"
//#include "can.h"
//#include "crc.h"
//#include "uart.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\chlib_k.h"
/**
  ******************************************************************************
  * @file    chlib_k.h
  * @author  YANDLD
  * @version V2.5
  * @date    2013.12.25
  * @brief   include all header files
  ******************************************************************************
  */






     
/* libray driver */
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\common.h"
/**
  ******************************************************************************
  * @file    common.h
  * @author  YANDLD
  * @version V2.5
  * @date    2013.12.25
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com 
  ******************************************************************************
  */







#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */
#line 235 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

#line 258 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 18 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\common.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stddef.h"
/* stddef.h standard header */
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

#line 11 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stddef.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ysizet.h"
/* ysizet.h internal header file. */
/* Copyright 2003-2010 IAR Systems AB.  */

#line 30 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ysizet.h"







#line 13 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stddef.h"



                /* macros */








                /* type definitions */




  typedef _Ptrdifft ptrdiff_t;









#line 49 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stddef.h"


/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 20 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\common.h"

#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/*
** ###################################################################
**     Processors:          MK60DN512VLL10
**                          MK60DX256VLL10
**                          MK60DN256VLL10
**                          MK60DN512VLQ10
**                          MK60DN256VLQ10
**                          MK60DX256VLQ10
**                          MK60DN512VMC10
**                          MK60DN256VMC10
**                          MK60DX256VMC10
**                          MK60DN512VMD10
**                          MK60DX256VMD10
**                          MK60DN256VMD10
**
**     Compilers:           ARM Compiler
**                          Freescale C/C++ for Embedded ARM
**                          GNU C Compiler
**                          IAR ANSI C/C++ Compiler for ARM
**
**     Reference manual:    K60P144M100SF2V2RM Rev. 2, Jun 2012
**     Version:             rev. 1.3, 2012-10-29
**
**     Abstract:
**         CMSIS Peripheral Access Layer for MK60D10
**
**     Copyright: 1997 - 2012 Freescale, Inc. All Rights Reserved.
**
**     http:                 www.freescale.com
**     mail:                 support@freescale.com
**
**     Revisions:
**     - rev. 1.0 (2012-01-03)
**         Initial version
**     - rev. 1.1 (2012-04-13)
**         Added new #define symbol MCU_MEM_MAP_VERSION_MINOR.
**         Added new #define symbols <peripheralType>_BASE_PTRS.
**     - rev. 1.2 (2012-07-09)
**         UART0 - Fixed register definition - CEA709.1-B (LON) registers added.
**     - rev. 1.3 (2012-10-29)
**         Registers updated according to the new reference manual revision - Rev. 2, Jun 2012
**
** ###################################################################
*/

/**
 * @file MK60D10.h
 * @version 1.3
 * @date 2012-10-29
 * @brief CMSIS Peripheral Access Layer for MK60D10
 *
 * CMSIS Peripheral Access Layer for MK60D10
 */




/** Memory map major version (memory maps with equal major version number are
 * compatible) */

/** Memory map minor version */


/**
 * @brief Macro to access a single bit of a peripheral register (bit band region
 *        0x40000000 to 0x400FFFFF) using the bit-band alias region access.
 * @param Reg Register to access.
 * @param Bit Bit number to access.
 * @return Value of the targeted bit in the bit band region.
 */


/* ----------------------------------------------------------------------------
   -- Interrupt vector numbers
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup Interrupt_vector_numbers Interrupt vector numbers
 * @{
 */

/** Interrupt Number Definitions */
typedef enum IRQn {
  /* Core interrupts */
  NonMaskableInt_IRQn          = -14,              /**< Non Maskable Interrupt */
  HardFault_IRQn               = -13,              /**< Cortex-M4 SV Hard Fault Interrupt */
  MemoryManagement_IRQn        = -12,              /**< Cortex-M4 Memory Management Interrupt */
  BusFault_IRQn                = -11,              /**< Cortex-M4 Bus Fault Interrupt */
  UsageFault_IRQn              = -10,              /**< Cortex-M4 Usage Fault Interrupt */
  SVCall_IRQn                  = -5,               /**< Cortex-M4 SV Call Interrupt */
  DebugMonitor_IRQn            = -4,               /**< Cortex-M4 Debug Monitor Interrupt */
  PendSV_IRQn                  = -2,               /**< Cortex-M4 Pend SV Interrupt */
  SysTick_IRQn                 = -1,               /**< Cortex-M4 System Tick Interrupt */

  /* Device specific interrupts */
  DMA0_IRQn                    = 0,                /**< DMA Channel 0 Transfer Complete */
  DMA1_IRQn                    = 1,                /**< DMA Channel 1 Transfer Complete */
  DMA2_IRQn                    = 2,                /**< DMA Channel 2 Transfer Complete */
  DMA3_IRQn                    = 3,                /**< DMA Channel 3 Transfer Complete */
  DMA4_IRQn                    = 4,                /**< DMA Channel 4 Transfer Complete */
  DMA5_IRQn                    = 5,                /**< DMA Channel 5 Transfer Complete */
  DMA6_IRQn                    = 6,                /**< DMA Channel 6 Transfer Complete */
  DMA7_IRQn                    = 7,                /**< DMA Channel 7 Transfer Complete */
  DMA8_IRQn                    = 8,                /**< DMA Channel 8 Transfer Complete */
  DMA9_IRQn                    = 9,                /**< DMA Channel 9 Transfer Complete */
  DMA10_IRQn                   = 10,               /**< DMA Channel 10 Transfer Complete */
  DMA11_IRQn                   = 11,               /**< DMA Channel 11 Transfer Complete */
  DMA12_IRQn                   = 12,               /**< DMA Channel 12 Transfer Complete */
  DMA13_IRQn                   = 13,               /**< DMA Channel 13 Transfer Complete */
  DMA14_IRQn                   = 14,               /**< DMA Channel 14 Transfer Complete */
  DMA15_IRQn                   = 15,               /**< DMA Channel 15 Transfer Complete */
  DMA_Error_IRQn               = 16,               /**< DMA Error Interrupt */
  MCM_IRQn                     = 17,               /**< Normal Interrupt */
  FTFL_IRQn                    = 18,               /**< FTFL Interrupt */
  Read_Collision_IRQn          = 19,               /**< Read Collision Interrupt */
  LVD_LVW_IRQn                 = 20,               /**< Low Voltage Detect, Low Voltage Warning */
  LLW_IRQn                     = 21,               /**< Low Leakage Wakeup */
  Watchdog_IRQn                = 22,               /**< WDOG Interrupt */
  RNG_IRQn                     = 23,               /**< RNGB Interrupt */
  I2C0_IRQn                    = 24,               /**< I2C0 interrupt */
  I2C1_IRQn                    = 25,               /**< I2C1 interrupt */
  SPI0_IRQn                    = 26,               /**< SPI0 Interrupt */
  SPI1_IRQn                    = 27,               /**< SPI1 Interrupt */
  SPI2_IRQn                    = 28,               /**< SPI2 Interrupt */
  CAN0_ORed_Message_buffer_IRQn = 29,              /**< CAN0 OR'd message buffers interrupt */
  CAN0_Bus_Off_IRQn            = 30,               /**< CAN0 bus off interrupt */
  CAN0_Error_IRQn              = 31,               /**< CAN0 error interrupt */
  CAN0_Tx_Warning_IRQn         = 32,               /**< CAN0 Tx warning interrupt */
  CAN0_Rx_Warning_IRQn         = 33,               /**< CAN0 Rx warning interrupt */
  CAN0_Wake_Up_IRQn            = 34,               /**< CAN0 wake up interrupt */
  I2S0_Tx_IRQn                 = 35,               /**< I2S0 transmit interrupt */
  I2S0_Rx_IRQn                 = 36,               /**< I2S0 receive interrupt */
  CAN1_ORed_Message_buffer_IRQn = 37,              /**< CAN1 OR'd message buffers interrupt */
  CAN1_Bus_Off_IRQn            = 38,               /**< CAN1 bus off interrupt */
  CAN1_Error_IRQn              = 39,               /**< CAN1 error interrupt */
  CAN1_Tx_Warning_IRQn         = 40,               /**< CAN1 Tx warning interrupt */
  CAN1_Rx_Warning_IRQn         = 41,               /**< CAN1 Rx warning interrupt */
  CAN1_Wake_Up_IRQn            = 42,               /**< CAN1 wake up interrupt */
  Reserved59_IRQn              = 43,               /**< Reserved interrupt 59 */
  UART0_LON_IRQn               = 44,               /**< UART0 LON interrupt */
  UART0_RX_TX_IRQn             = 45,               /**< UART0 Receive/Transmit interrupt */
  UART0_ERR_IRQn               = 46,               /**< UART0 Error interrupt */
  UART1_RX_TX_IRQn             = 47,               /**< UART1 Receive/Transmit interrupt */
  UART1_ERR_IRQn               = 48,               /**< UART1 Error interrupt */
  UART2_RX_TX_IRQn             = 49,               /**< UART2 Receive/Transmit interrupt */
  UART2_ERR_IRQn               = 50,               /**< UART2 Error interrupt */
  UART3_RX_TX_IRQn             = 51,               /**< UART3 Receive/Transmit interrupt */
  UART3_ERR_IRQn               = 52,               /**< UART3 Error interrupt */
  UART4_RX_TX_IRQn             = 53,               /**< UART4 Receive/Transmit interrupt */
  UART4_ERR_IRQn               = 54,               /**< UART4 Error interrupt */
  UART5_RX_TX_IRQn             = 55,               /**< UART5 Receive/Transmit interrupt */
  UART5_ERR_IRQn               = 56,               /**< UART5 Error interrupt */
  ADC0_IRQn                    = 57,               /**< ADC0 interrupt */
  ADC1_IRQn                    = 58,               /**< ADC1 interrupt */
  CMP0_IRQn                    = 59,               /**< CMP0 interrupt */
  CMP1_IRQn                    = 60,               /**< CMP1 interrupt */
  CMP2_IRQn                    = 61,               /**< CMP2 interrupt */
  FTM0_IRQn                    = 62,               /**< FTM0 fault, overflow and channels interrupt */
  FTM1_IRQn                    = 63,               /**< FTM1 fault, overflow and channels interrupt */
  FTM2_IRQn                    = 64,               /**< FTM2 fault, overflow and channels interrupt */
  CMT_IRQn                     = 65,               /**< CMT interrupt */
  RTC_IRQn                     = 66,               /**< RTC interrupt */
  RTC_Seconds_IRQn             = 67,               /**< RTC seconds interrupt */
  PIT0_IRQn                    = 68,               /**< PIT timer channel 0 interrupt */
  PIT1_IRQn                    = 69,               /**< PIT timer channel 1 interrupt */
  PIT2_IRQn                    = 70,               /**< PIT timer channel 2 interrupt */
  PIT3_IRQn                    = 71,               /**< PIT timer channel 3 interrupt */
  PDB0_IRQn                    = 72,               /**< PDB0 Interrupt */
  USB0_IRQn                    = 73,               /**< USB0 interrupt */
  USBDCD_IRQn                  = 74,               /**< USBDCD Interrupt */
  ENET_1588_Timer_IRQn         = 75,               /**< Ethernet MAC IEEE 1588 Timer Interrupt */
  ENET_Transmit_IRQn           = 76,               /**< Ethernet MAC Transmit Interrupt */
  ENET_Receive_IRQn            = 77,               /**< Ethernet MAC Receive Interrupt */
  ENET_Error_IRQn              = 78,               /**< Ethernet MAC Error and miscelaneous Interrupt */
  Reserved95_IRQn              = 79,               /**< Reserved interrupt 95 */
  SDHC_IRQn                    = 80,               /**< SDHC Interrupt */
  DAC0_IRQn                    = 81,               /**< DAC0 interrupt */
  DAC1_IRQn                    = 82,               /**< DAC1 interrupt */
  TSI0_IRQn                    = 83,               /**< TSI0 Interrupt */
  MCG_IRQn                     = 84,               /**< MCG Interrupt */
  LPTimer_IRQn                 = 85,               /**< LPTimer interrupt */
  Reserved102_IRQn             = 86,               /**< Reserved interrupt 102 */
  PORTA_IRQn                   = 87,               /**< Port A interrupt */
  PORTB_IRQn                   = 88,               /**< Port B interrupt */
  PORTC_IRQn                   = 89,               /**< Port C interrupt */
  PORTD_IRQn                   = 90,               /**< Port D interrupt */
  PORTE_IRQn                   = 91,               /**< Port E interrupt */
  Reserved108_IRQn             = 92,               /**< Reserved interrupt 108 */
  Reserved109_IRQn             = 93,               /**< Reserved interrupt 109 */
  SWI_IRQn                     = 94,               /**< Software interrupt */
  Reserved111_IRQn             = 95,               /**< Reserved interrupt 111 */
  Reserved112_IRQn             = 96,               /**< Reserved interrupt 112 */
  Reserved113_IRQn             = 97,               /**< Reserved interrupt 113 */
  Reserved114_IRQn             = 98,               /**< Reserved interrupt 114 */
  Reserved115_IRQn             = 99,               /**< Reserved interrupt 115 */
  Reserved116_IRQn             = 100,              /**< Reserved interrupt 116 */
  Reserved117_IRQn             = 101,              /**< Reserved interrupt 117 */
  Reserved118_IRQn             = 102,              /**< Reserved interrupt 118 */
  Reserved119_IRQn             = 103               /**< Reserved interrupt 119 */
} IRQn_Type;

/**
 * @}
 */ /* end of group Interrupt_vector_numbers */


/* ----------------------------------------------------------------------------
   -- Cortex M4 Core Configuration
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup Cortex_Core_Configuration Cortex M4 Core Configuration
 * @{
 */





#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cm4.h"
/**************************************************************************//**
 * @file     core_cm4.h
 * @brief    CMSIS Cortex-M4 Core Peripheral Access Layer Header File
 * @version  V3.30
 * @date     06. May 2014
 *
 * @note
 *
 ******************************************************************************/
/* Copyright (c) 2009 - 2014 ARM LIMITED

   All rights reserved.
   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are met:
   - Redistributions of source code must retain the above copyright
     notice, this list of conditions and the following disclaimer.
   - Redistributions in binary form must reproduce the above copyright
     notice, this list of conditions and the following disclaimer in the
     documentation and/or other materials provided with the distribution.
   - Neither the name of ARM nor the names of its contributors may be used
     to endorse or promote products derived from this software without
     specific prior written permission.
   *
   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
   AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
   IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
   ARE DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS AND CONTRIBUTORS BE
   LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
   INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
   CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
   ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
   POSSIBILITY OF SUCH DAMAGE.
   ---------------------------------------------------------------------------*/



 #pragma system_include  /* treat file as system include file for MISRA check */









/** \page CMSIS_MISRA_Exceptions  MISRA-C:2004 Compliance Exceptions
  CMSIS violates the following MISRA-C:2004 rules:

   \li Required Rule 8.5, object/function definition in header file.<br>
     Function definitions in header files are used to allow 'inlining'.

   \li Required Rule 18.4, declaration of union type or object of union type: '{...}'.<br>
     Unions are used for effective representation of core registers.

   \li Advisory Rule 19.7, Function-like macro defined.<br>
     Function-like macros are used to allow more efficient code.
 */


/*******************************************************************************
 *                 CMSIS definitions
 ******************************************************************************/
/** \ingroup Cortex_M4
  @{
 */

/*  CMSIS CM4 definitions */








#line 93 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cm4.h"

#line 110 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cm4.h"

/** __FPU_USED indicates whether an FPU is used or not. For this, __FPU_PRESENT has to be checked prior to making use of FPU specific registers and functions.
*/
#line 148 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cm4.h"

#line 185 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cm4.h"

#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */
#line 235 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

#line 258 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 187 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cm4.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cmInstr.h"
/**************************************************************************//**
 * @file     core_cmInstr.h
 * @brief    CMSIS Cortex-M Core Instruction Access Header File
 * @version  V3.30
 * @date     17. February 2014
 *
 * @note
 *
 ******************************************************************************/
/* Copyright (c) 2009 - 2014 ARM LIMITED

   All rights reserved.
   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are met:
   - Redistributions of source code must retain the above copyright
     notice, this list of conditions and the following disclaimer.
   - Redistributions in binary form must reproduce the above copyright
     notice, this list of conditions and the following disclaimer in the
     documentation and/or other materials provided with the distribution.
   - Neither the name of ARM nor the names of its contributors may be used
     to endorse or promote products derived from this software without
     specific prior written permission.
   *
   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
   AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
   IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
   ARE DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS AND CONTRIBUTORS BE
   LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
   INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
   CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
   ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
   POSSIBILITY OF SUCH DAMAGE.
   ---------------------------------------------------------------------------*/






/* ##########################  Core Instruction Access  ######################### */
/** \defgroup CMSIS_Core_InstructionInterface CMSIS Core Instruction Interface
  Access to dedicated instructions
  @{
*/

#line 661 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cmInstr.h"
/* IAR iccarm specific functions */
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\cmsis_iar.h"
/**************************************************
 *
 * This file shall be included in appropriate CMSIS header
 * files, to provide required functions and intrinsics when
 * building with the IAR C/C++ Compiler for ARM (iccarm).
 *
 * Copyright 2011 IAR Systems. All rights reserved.
 *
 * $Revision: 78346 $
 *
 **************************************************/








#pragma system_include

#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\intrinsics.h"
/**************************************************
 *
 * This file declares the ARM intrinsic inline functions.
 *
 * Copyright 1999-2006 IAR Systems. All rights reserved.
 *
 * $Revision: 65584 $
 *
 **************************************************/




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

#line 15 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\intrinsics.h"


  #pragma system_include


/*
 * Check that the correct C compiler is used.
 */









#pragma language=save
#pragma language=extended

__intrinsic __nounwind void    __no_operation(void);

__intrinsic __nounwind void    __disable_interrupt(void);
__intrinsic __nounwind void    __enable_interrupt(void);

typedef unsigned long __istate_t;

__intrinsic __nounwind __istate_t __get_interrupt_state(void);
__intrinsic __nounwind void __set_interrupt_state(__istate_t);



/* System control access for Cortex-M cores */
__intrinsic __nounwind unsigned long __get_PSR( void );
__intrinsic __nounwind unsigned long __get_IPSR( void );
__intrinsic __nounwind unsigned long __get_MSP( void );
__intrinsic __nounwind void          __set_MSP( unsigned long );
__intrinsic __nounwind unsigned long __get_PSP( void );
__intrinsic __nounwind void          __set_PSP( unsigned long );
__intrinsic __nounwind unsigned long __get_PRIMASK( void );
__intrinsic __nounwind void          __set_PRIMASK( unsigned long );
__intrinsic __nounwind unsigned long __get_CONTROL( void );
__intrinsic __nounwind void          __set_CONTROL( unsigned long );



/* These are only available for v7M */
__intrinsic __nounwind unsigned long __get_FAULTMASK( void );
__intrinsic __nounwind void          __set_FAULTMASK(unsigned long);
__intrinsic __nounwind unsigned long __get_BASEPRI( void );
__intrinsic __nounwind void          __set_BASEPRI( unsigned long );

#line 74 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\intrinsics.h"

__intrinsic __nounwind void __disable_fiq(void);
__intrinsic __nounwind void __enable_fiq(void);


/* ARM-mode intrinsics */

__intrinsic __nounwind unsigned long __SWP( unsigned long, volatile unsigned long * );
__intrinsic __nounwind unsigned char __SWPB( unsigned char, volatile unsigned char * );

typedef unsigned long __ul;





/*  Co-processor access */
__intrinsic __nounwind void          __MCR( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1, __ul src,
                                 unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 );
__intrinsic __nounwind unsigned long __MRC( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1,
                                 unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 );
__intrinsic __nounwind void          __MCR2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1, __ul src,
                                  unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 );
__intrinsic __nounwind unsigned long __MRC2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1,
                                  unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 );

/* Load coprocessor register. */
__intrinsic __nounwind void __LDC( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src);
__intrinsic __nounwind void __LDCL( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src);
__intrinsic __nounwind void __LDC2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src);
__intrinsic __nounwind void __LDC2L( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src);

/* Store coprocessor register. */
__intrinsic __nounwind void __STC( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst);
__intrinsic __nounwind void __STCL( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst);
__intrinsic __nounwind void __STC2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst);
__intrinsic __nounwind void __STC2L( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst);

/* Load coprocessor register (noindexed version with coprocessor option). */
__intrinsic __nounwind void __LDC_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src,
                              unsigned __constrange(0,255) option);

__intrinsic __nounwind void __LDCL_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __LDC2_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __LDC2L_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src,
                                unsigned __constrange(0,255) option);

/* Store coprocessor register (version with coprocessor option). */
__intrinsic __nounwind void __STC_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst,
                              unsigned __constrange(0,255) option);

__intrinsic __nounwind void __STCL_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __STC2_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __STC2L_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst,
                                unsigned __constrange(0,255) option);


/* Status register access, v7M: */
__intrinsic __nounwind unsigned long __get_APSR( void );
__intrinsic __nounwind void          __set_APSR( unsigned long );






/* Floating-point status and control register access */
__intrinsic __nounwind unsigned long __get_FPSCR( void );
__intrinsic __nounwind void __set_FPSCR( unsigned long );

/* Architecture v5T, CLZ is also available in Thumb mode for Thumb2 cores */
__intrinsic __nounwind unsigned char __CLZ( unsigned long );

/* Architecture v5TE */

__intrinsic __nounwind signed long __QADD( signed long, signed long );
__intrinsic __nounwind signed long __QDADD( signed long, signed long );
__intrinsic __nounwind signed long __QSUB( signed long, signed long );
__intrinsic __nounwind signed long __QDSUB( signed long, signed long );

__intrinsic __nounwind signed long __QDOUBLE( signed long );

__intrinsic __nounwind int         __QFlag( void );
__intrinsic __nounwind void __reset_Q_flag( void );


__intrinsic __nounwind int         __QCFlag( void );
__intrinsic __nounwind void __reset_QC_flag( void );

__intrinsic __nounwind signed long __SMUL( signed short, signed short );

/* Architecture v6, REV and REVSH are also available in thumb mode */
__intrinsic __nounwind unsigned long __REV( unsigned long );
__intrinsic __nounwind signed long __REVSH( short );

__intrinsic __nounwind unsigned long __REV16( unsigned long );
__intrinsic __nounwind unsigned long __RBIT( unsigned long );

__intrinsic __nounwind unsigned char  __LDREXB( volatile unsigned char const * );
__intrinsic __nounwind unsigned short __LDREXH( volatile unsigned short const * );
__intrinsic __nounwind unsigned long  __LDREX ( volatile unsigned long const * );
__intrinsic __nounwind unsigned long long __LDREXD( volatile unsigned long long const * );

__intrinsic __nounwind unsigned long  __STREXB( unsigned char, volatile unsigned char * );
__intrinsic __nounwind unsigned long  __STREXH( unsigned short, volatile unsigned short * );
__intrinsic __nounwind unsigned long  __STREX ( unsigned long, volatile unsigned long * );
__intrinsic __nounwind unsigned long  __STREXD( unsigned long long, volatile unsigned long long * );

__intrinsic __nounwind void __CLREX( void );

__intrinsic __nounwind void __SEV( void );
__intrinsic __nounwind void __WFE( void );
__intrinsic __nounwind void __WFI( void );
__intrinsic __nounwind void __YIELD( void );

__intrinsic __nounwind void __PLI( volatile void const * );
__intrinsic __nounwind void __PLD( volatile void const * );
__intrinsic __nounwind void __PLDW( volatile void const * );

__intrinsic __nounwind   signed long __SSAT     (unsigned long val,
                                      unsigned int __constrange( 1, 32 ) sat );
__intrinsic __nounwind unsigned long __USAT     (unsigned long val,
                                      unsigned int __constrange( 0, 31 ) sat );




/* Architecture v6 Media instructions.... */
__intrinsic __nounwind unsigned long __SEL( unsigned long op1, unsigned long op2 );

__intrinsic __nounwind unsigned long __SADD8    (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __SADD16   (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __SSUB8    (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __SSUB16   (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __SADDSUBX (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __SSUBADDX (unsigned long pair1, unsigned long pair2);

__intrinsic __nounwind unsigned long __SHADD8   (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __SHADD16  (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __SHSUB8   (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __SHSUB16  (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __SHADDSUBX(unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __SHSUBADDX(unsigned long pair1, unsigned long pair2);

__intrinsic __nounwind unsigned long __QADD8    (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __QADD16   (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __QSUB8    (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __QSUB16   (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __QADDSUBX (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __QSUBADDX (unsigned long pair1, unsigned long pair2);

__intrinsic __nounwind unsigned long __UADD8    (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __UADD16   (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __USUB8    (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __USUB16   (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __UADDSUBX (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __USUBADDX (unsigned long pair1, unsigned long pair2);

__intrinsic __nounwind unsigned long __UHADD8   (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __UHADD16  (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __UHSUB8   (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __UHSUB16  (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __UHADDSUBX(unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __UHSUBADDX(unsigned long pair1, unsigned long pair2);

__intrinsic __nounwind unsigned long __UQADD8   (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __UQADD16  (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __UQSUB8   (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __UQSUB16  (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __UQADDSUBX(unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __UQSUBADDX(unsigned long pair1, unsigned long pair2);

__intrinsic __nounwind unsigned long __USAD8(unsigned long x, unsigned long y );
__intrinsic __nounwind unsigned long __USADA8(unsigned long x, unsigned long y,
                                   unsigned long acc );

__intrinsic __nounwind unsigned long __SSAT16   (unsigned long pair,
                                      unsigned int __constrange( 1, 16 ) sat );
__intrinsic __nounwind unsigned long __USAT16   (unsigned long pair,
                                      unsigned int __constrange( 0, 15 ) sat );

__intrinsic __nounwind long __SMUAD (unsigned long x, unsigned long y);
__intrinsic __nounwind long __SMUSD (unsigned long x, unsigned long y);
__intrinsic __nounwind long __SMUADX(unsigned long x, unsigned long y);
__intrinsic __nounwind long __SMUSDX(unsigned long x, unsigned long y);

__intrinsic __nounwind long __SMLAD (unsigned long x, unsigned long y, long sum);
__intrinsic __nounwind long __SMLSD (unsigned long x, unsigned long y, long sum);
__intrinsic __nounwind long __SMLADX(unsigned long x, unsigned long y, long sum);
__intrinsic __nounwind long __SMLSDX(unsigned long x, unsigned long y, long sum);

__intrinsic __nounwind long long __SMLALD (unsigned long pair1,
                                 unsigned long pair2,
                                 long long acc);

__intrinsic __nounwind long long __SMLALDX(unsigned long pair1,
                                 unsigned long pair2,
                                 long long acc);

__intrinsic __nounwind long long __SMLSLD (unsigned long pair1,
                                 unsigned long pair2,
                                 long long acc);

__intrinsic __nounwind long long __SMLSLDX(unsigned long pair1,
                                 unsigned long pair2,
                                 long long acc);

__intrinsic __nounwind unsigned long __PKHBT(unsigned long x,
                                  unsigned long y,
                                  unsigned __constrange(0,31) count);
__intrinsic __nounwind unsigned long __PKHTB(unsigned long x,
                                  unsigned long y,
                                  unsigned __constrange(0,32) count);

__intrinsic __nounwind long __SMLABB(unsigned long x, unsigned long y, long acc);
__intrinsic __nounwind long __SMLABT(unsigned long x, unsigned long y, long acc);
__intrinsic __nounwind long __SMLATB(unsigned long x, unsigned long y, long acc);
__intrinsic __nounwind long __SMLATT(unsigned long x, unsigned long y, long acc);

__intrinsic __nounwind long __SMLAWB(long x, unsigned long y, long acc);
__intrinsic __nounwind long __SMLAWT(long x, unsigned long y, long acc);

__intrinsic __nounwind long __SMMLA (long x, long y, long acc);
__intrinsic __nounwind long __SMMLAR(long x, long y, long acc);
__intrinsic __nounwind long __SMMLS (long x, long y, long acc);
__intrinsic __nounwind long __SMMLSR(long x, long y, long acc);

__intrinsic __nounwind long __SMMUL (long x, long y);
__intrinsic __nounwind long __SMMULR(long x, long y);

__intrinsic __nounwind long __SMULBB(unsigned long x, unsigned long y);
__intrinsic __nounwind long __SMULBT(unsigned long x, unsigned long y);
__intrinsic __nounwind long __SMULTB(unsigned long x, unsigned long y);
__intrinsic __nounwind long __SMULTT(unsigned long x, unsigned long y);

__intrinsic __nounwind long __SMULWB(long x, unsigned long y);
__intrinsic __nounwind long __SMULWT(long x, unsigned long y);

__intrinsic __nounwind long __SXTAB (long x, unsigned long y);
__intrinsic __nounwind long __SXTAH (long x, unsigned long y);
__intrinsic __nounwind unsigned long __UXTAB (unsigned long x, unsigned long y);
__intrinsic __nounwind unsigned long __UXTAH (unsigned long x, unsigned long y);

__intrinsic __nounwind unsigned long long __UMAAL(unsigned long x,
                                       unsigned long y,
                                       unsigned long a,
                                       unsigned long b);

__intrinsic __nounwind long long __SMLALBB(unsigned long x,
                                 unsigned long y,
                                 long long acc);

__intrinsic __nounwind long long __SMLALBT(unsigned long x,
                                 unsigned long y,
                                 long long acc);

__intrinsic __nounwind long long __SMLALTB(unsigned long x,
                                 unsigned long y,
                                 long long acc);

__intrinsic __nounwind long long __SMLALTT(unsigned long x,
                                 unsigned long y,
                                 long long acc);

__intrinsic __nounwind unsigned long __UXTB16(unsigned long x);
__intrinsic __nounwind unsigned long __UXTAB16(unsigned long acc, unsigned long x);

__intrinsic __nounwind unsigned long __SXTB16(unsigned long x);
__intrinsic __nounwind unsigned long __SXTAB16(unsigned long acc, unsigned long x);

/*
 * The following intrinsic function aliases are supplied due to instruction
 * set changes made by ARM. All previous mnemonics of the form *ADDSUBX or
 * *SUBADDX have been changed into *ASX and *SAX, respectively.
 * For increased readability and consistency, the suggested intrinsic
 * functions to use are the new short form versions defined below.
 */

#line 366 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\intrinsics.h"

#line 374 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\intrinsics.h"

/* Architecture v7 instructions.... */
__intrinsic __nounwind void __DMB(void);
__intrinsic __nounwind void __DSB(void);
__intrinsic __nounwind void __ISB(void);




#pragma language=restore





#line 23 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\cmsis_iar.h"







#pragma diag_suppress=Pe940
#pragma diag_suppress=Pe177











#line 110 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\cmsis_iar.h"

static uint32_t __get_xPSR(void)
{
  return __get_PSR();   /* __get_PSR() intrinsic introduced in iccarm 6.20 */
}





#line 173 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\cmsis_iar.h"












#line 204 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\cmsis_iar.h"







static inline uint32_t __RRX(uint32_t value)
{
  uint32_t result;
  __asm("RRX %0, %1" : "=r"(result) : "r" (value) );
  return(result);
}

static inline uint8_t __LDRBT(volatile uint8_t *addr)
{
  uint32_t result;
  __asm("LDRBT %0, [%1]" : "=r" (result) : "r" (addr) : "memory" );
  return ((uint8_t) result);
}

static inline uint16_t __LDRHT(volatile uint16_t *addr)
{
  uint32_t result;
  __asm("LDRHT %0, [%1]" : "=r" (result) : "r" (addr) : "memory" );
  return ((uint16_t) result);
}

static inline uint32_t __LDRT(volatile uint32_t *addr)
{
  uint32_t result;
  __asm("LDRT %0, [%1]" : "=r" (result) : "r" (addr) : "memory" );
  return(result);
}

static inline void __STRBT(uint8_t value, volatile uint8_t *addr)
{
  __asm("STRBT %1, [%0]" : : "r" (addr), "r" ((uint32_t)value) : "memory" );
}

static inline void __STRHT(uint16_t value, volatile uint16_t *addr)
{
  __asm("STRHT %1, [%0]" : : "r" (addr), "r" ((uint32_t)value) : "memory" );
}

static inline void __STRT(uint32_t value, volatile uint32_t *addr)
{
  __asm("STRT %1, [%0]" : : "r" (addr), "r" (value) : "memory" );
}





static inline uint32_t __ROR(uint32_t op1, uint32_t op2)
{
  return (op1 >> op2) | (op1 << ((sizeof(op1)*8)-op2));
}

#pragma diag_default=Pe940
#pragma diag_default=Pe177

#line 663 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cmInstr.h"


#line 684 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cmInstr.h"

/*@}*/ /* end of group CMSIS_Core_InstructionInterface */

#line 188 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cm4.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cmFunc.h"
/**************************************************************************//**
 * @file     core_cmFunc.h
 * @brief    CMSIS Cortex-M Core Function Access Header File
 * @version  V3.30
 * @date     17. February 2014
 *
 * @note
 *
 ******************************************************************************/
/* Copyright (c) 2009 - 2014 ARM LIMITED

   All rights reserved.
   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are met:
   - Redistributions of source code must retain the above copyright
     notice, this list of conditions and the following disclaimer.
   - Redistributions in binary form must reproduce the above copyright
     notice, this list of conditions and the following disclaimer in the
     documentation and/or other materials provided with the distribution.
   - Neither the name of ARM nor the names of its contributors may be used
     to endorse or promote products derived from this software without
     specific prior written permission.
   *
   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
   AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
   IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
   ARE DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS AND CONTRIBUTORS BE
   LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
   INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
   CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
   ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
   POSSIBILITY OF SUCH DAMAGE.
   ---------------------------------------------------------------------------*/






/* ###########################  Core Function Access  ########################### */
/** \ingroup  CMSIS_Core_FunctionInterface
    \defgroup CMSIS_Core_RegAccFunctions CMSIS Core Register Access Functions
  @{
 */

#line 611 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cmFunc.h"
/* IAR iccarm specific functions */



#line 634 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cmFunc.h"

/*@} end of CMSIS_Core_RegAccFunctions */

#line 189 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cm4.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cm4_simd.h"
/**************************************************************************//**
 * @file     core_cm4_simd.h
 * @brief    CMSIS Cortex-M4 SIMD Header File
 * @version  V3.30
 * @date     17. February 2014
 *
 * @note
 *
 ******************************************************************************/
/* Copyright (c) 2009 - 2014 ARM LIMITED

   All rights reserved.
   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are met:
   - Redistributions of source code must retain the above copyright
     notice, this list of conditions and the following disclaimer.
   - Redistributions in binary form must reproduce the above copyright
     notice, this list of conditions and the following disclaimer in the
     documentation and/or other materials provided with the distribution.
   - Neither the name of ARM nor the names of its contributors may be used
     to endorse or promote products derived from this software without
     specific prior written permission.
   *
   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
   AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
   IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
   ARE DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS AND CONTRIBUTORS BE
   LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
   INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
   CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
   ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
   POSSIBILITY OF SUCH DAMAGE.
   ---------------------------------------------------------------------------*/



 #pragma system_include  /* treat file as system include file for MISRA check */










/*******************************************************************************
 *                Hardware Abstraction Layer
 ******************************************************************************/


/* ###################  Compiler specific Intrinsics  ########################### */
/** \defgroup CMSIS_SIMD_intrinsics CMSIS SIMD Intrinsics
  Access to dedicated SIMD instructions
  @{
*/

#line 670 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cm4_simd.h"
/* IAR iccarm specific functions */



#line 689 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cm4_simd.h"

/*@} end of group CMSIS_SIMD_intrinsics */






#line 190 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cm4.h"








/* check device defines and use defaults */
#line 225 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cm4.h"

/* IO definitions (access restrictions to peripheral registers) */
/**
    \defgroup CMSIS_glob_defs CMSIS Global Defines

    <strong>IO Type Qualifiers</strong> are used
    \li to specify the access to peripheral variables.
    \li for automatic generation of peripheral register debug information.
*/
#line 241 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cm4.h"

/*@} end of group Cortex_M4 */



/*******************************************************************************
 *                 Register Abstraction
  Core Register contain:
  - Core Register
  - Core NVIC Register
  - Core SCB Register
  - Core SysTick Register
  - Core Debug Register
  - Core MPU Register
  - Core FPU Register
 ******************************************************************************/
/** \defgroup CMSIS_core_register Defines and Type Definitions
    \brief Type definitions and defines for Cortex-M processor based devices.
*/

/** \ingroup    CMSIS_core_register
    \defgroup   CMSIS_CORE  Status and Control Registers
    \brief  Core Register type definitions.
  @{
 */

/** \brief  Union type to access the Application Program Status Register (APSR).
 */
typedef union
{
  struct
  {



    uint32_t _reserved0:16;              /*!< bit:  0..15  Reserved                           */
    uint32_t GE:4;                       /*!< bit: 16..19  Greater than or Equal flags        */
    uint32_t _reserved1:7;               /*!< bit: 20..26  Reserved                           */

    uint32_t Q:1;                        /*!< bit:     27  Saturation condition flag          */
    uint32_t V:1;                        /*!< bit:     28  Overflow condition code flag       */
    uint32_t C:1;                        /*!< bit:     29  Carry condition code flag          */
    uint32_t Z:1;                        /*!< bit:     30  Zero condition code flag           */
    uint32_t N:1;                        /*!< bit:     31  Negative condition code flag       */
  } b;                                   /*!< Structure used for bit  access                  */
  uint32_t w;                            /*!< Type      used for word access                  */
} APSR_Type;


/** \brief  Union type to access the Interrupt Program Status Register (IPSR).
 */
typedef union
{
  struct
  {
    uint32_t ISR:9;                      /*!< bit:  0.. 8  Exception number                   */
    uint32_t _reserved0:23;              /*!< bit:  9..31  Reserved                           */
  } b;                                   /*!< Structure used for bit  access                  */
  uint32_t w;                            /*!< Type      used for word access                  */
} IPSR_Type;


/** \brief  Union type to access the Special-Purpose Program Status Registers (xPSR).
 */
typedef union
{
  struct
  {
    uint32_t ISR:9;                      /*!< bit:  0.. 8  Exception number                   */



    uint32_t _reserved0:7;               /*!< bit:  9..15  Reserved                           */
    uint32_t GE:4;                       /*!< bit: 16..19  Greater than or Equal flags        */
    uint32_t _reserved1:4;               /*!< bit: 20..23  Reserved                           */

    uint32_t T:1;                        /*!< bit:     24  Thumb bit        (read 0)          */
    uint32_t IT:2;                       /*!< bit: 25..26  saved IT state   (read 0)          */
    uint32_t Q:1;                        /*!< bit:     27  Saturation condition flag          */
    uint32_t V:1;                        /*!< bit:     28  Overflow condition code flag       */
    uint32_t C:1;                        /*!< bit:     29  Carry condition code flag          */
    uint32_t Z:1;                        /*!< bit:     30  Zero condition code flag           */
    uint32_t N:1;                        /*!< bit:     31  Negative condition code flag       */
  } b;                                   /*!< Structure used for bit  access                  */
  uint32_t w;                            /*!< Type      used for word access                  */
} xPSR_Type;


/** \brief  Union type to access the Control Registers (CONTROL).
 */
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                    /*!< bit:      0  Execution privilege in Thread mode */
    uint32_t SPSEL:1;                    /*!< bit:      1  Stack to be used                   */
    uint32_t FPCA:1;                     /*!< bit:      2  FP extension active flag           */
    uint32_t _reserved0:29;              /*!< bit:  3..31  Reserved                           */
  } b;                                   /*!< Structure used for bit  access                  */
  uint32_t w;                            /*!< Type      used for word access                  */
} CONTROL_Type;

/*@} end of group CMSIS_CORE */


/** \ingroup    CMSIS_core_register
    \defgroup   CMSIS_NVIC  Nested Vectored Interrupt Controller (NVIC)
    \brief      Type definitions for the NVIC Registers
  @{
 */

/** \brief  Structure type to access the Nested Vectored Interrupt Controller (NVIC).
 */
typedef struct
{
  volatile uint32_t ISER[8];                 /*!< Offset: 0x000 (R/W)  Interrupt Set Enable Register           */
       uint32_t RESERVED0[24];
  volatile uint32_t ICER[8];                 /*!< Offset: 0x080 (R/W)  Interrupt Clear Enable Register         */
       uint32_t RSERVED1[24];
  volatile uint32_t ISPR[8];                 /*!< Offset: 0x100 (R/W)  Interrupt Set Pending Register          */
       uint32_t RESERVED2[24];
  volatile uint32_t ICPR[8];                 /*!< Offset: 0x180 (R/W)  Interrupt Clear Pending Register        */
       uint32_t RESERVED3[24];
  volatile uint32_t IABR[8];                 /*!< Offset: 0x200 (R/W)  Interrupt Active bit Register           */
       uint32_t RESERVED4[56];
  volatile uint8_t  IP[240];                 /*!< Offset: 0x300 (R/W)  Interrupt Priority Register (8Bit wide) */
       uint32_t RESERVED5[644];
  volatile  uint32_t STIR;                    /*!< Offset: 0xE00 ( /W)  Software Trigger Interrupt Register     */
}  NVIC_Type;

/* Software Triggered Interrupt Register Definitions */



/*@} end of group CMSIS_NVIC */


/** \ingroup  CMSIS_core_register
    \defgroup CMSIS_SCB     System Control Block (SCB)
    \brief      Type definitions for the System Control Block Registers
  @{
 */

/** \brief  Structure type to access the System Control Block (SCB).
 */
typedef struct
{
  volatile const  uint32_t CPUID;                   /*!< Offset: 0x000 (R/ )  CPUID Base Register                                   */
  volatile uint32_t ICSR;                    /*!< Offset: 0x004 (R/W)  Interrupt Control and State Register                  */
  volatile uint32_t VTOR;                    /*!< Offset: 0x008 (R/W)  Vector Table Offset Register                          */
  volatile uint32_t AIRCR;                   /*!< Offset: 0x00C (R/W)  Application Interrupt and Reset Control Register      */
  volatile uint32_t SCR;                     /*!< Offset: 0x010 (R/W)  System Control Register                               */
  volatile uint32_t CCR;                     /*!< Offset: 0x014 (R/W)  Configuration Control Register                        */
  volatile uint8_t  SHP[12];                 /*!< Offset: 0x018 (R/W)  System Handlers Priority Registers (4-7, 8-11, 12-15) */
  volatile uint32_t SHCSR;                   /*!< Offset: 0x024 (R/W)  System Handler Control and State Register             */
  volatile uint32_t CFSR;                    /*!< Offset: 0x028 (R/W)  Configurable Fault Status Register                    */
  volatile uint32_t HFSR;                    /*!< Offset: 0x02C (R/W)  HardFault Status Register                             */
  volatile uint32_t DFSR;                    /*!< Offset: 0x030 (R/W)  Debug Fault Status Register                           */
  volatile uint32_t MMFAR;                   /*!< Offset: 0x034 (R/W)  MemManage Fault Address Register                      */
  volatile uint32_t BFAR;                    /*!< Offset: 0x038 (R/W)  BusFault Address Register                             */
  volatile uint32_t AFSR;                    /*!< Offset: 0x03C (R/W)  Auxiliary Fault Status Register                       */
  volatile const  uint32_t PFR[2];                  /*!< Offset: 0x040 (R/ )  Processor Feature Register                            */
  volatile const  uint32_t DFR;                     /*!< Offset: 0x048 (R/ )  Debug Feature Register                                */
  volatile const  uint32_t ADR;                     /*!< Offset: 0x04C (R/ )  Auxiliary Feature Register                            */
  volatile const  uint32_t MMFR[4];                 /*!< Offset: 0x050 (R/ )  Memory Model Feature Register                         */
  volatile const  uint32_t ISAR[5];                 /*!< Offset: 0x060 (R/ )  Instruction Set Attributes Register                   */
       uint32_t RESERVED0[5];
  volatile uint32_t CPACR;                   /*!< Offset: 0x088 (R/W)  Coprocessor Access Control Register                   */
} SCB_Type;

/* SCB CPUID Register Definitions */















/* SCB Interrupt Control State Register Definitions */






























/* SCB Vector Table Offset Register Definitions */



/* SCB Application Interrupt and Reset Control Register Definitions */





















/* SCB System Control Register Definitions */









/* SCB Configuration Control Register Definitions */


















/* SCB System Handler Control and State Register Definitions */










































/* SCB Configurable Fault Status Registers Definitions */









/* SCB Hard Fault Status Registers Definitions */









/* SCB Debug Fault Status Register Definitions */















/*@} end of group CMSIS_SCB */


/** \ingroup  CMSIS_core_register
    \defgroup CMSIS_SCnSCB System Controls not in SCB (SCnSCB)
    \brief      Type definitions for the System Control and ID Register not in the SCB
  @{
 */

/** \brief  Structure type to access the System Control and ID Register not in the SCB.
 */
typedef struct
{
       uint32_t RESERVED0[1];
  volatile const  uint32_t ICTR;                    /*!< Offset: 0x004 (R/ )  Interrupt Controller Type Register      */
  volatile uint32_t ACTLR;                   /*!< Offset: 0x008 (R/W)  Auxiliary Control Register              */
} SCnSCB_Type;

/* Interrupt Controller Type Register Definitions */



/* Auxiliary Control Register Definitions */















/*@} end of group CMSIS_SCnotSCB */


/** \ingroup  CMSIS_core_register
    \defgroup CMSIS_SysTick     System Tick Timer (SysTick)
    \brief      Type definitions for the System Timer Registers.
  @{
 */

/** \brief  Structure type to access the System Timer (SysTick).
 */
typedef struct
{
  volatile uint32_t CTRL;                    /*!< Offset: 0x000 (R/W)  SysTick Control and Status Register */
  volatile uint32_t LOAD;                    /*!< Offset: 0x004 (R/W)  SysTick Reload Value Register       */
  volatile uint32_t VAL;                     /*!< Offset: 0x008 (R/W)  SysTick Current Value Register      */
  volatile const  uint32_t CALIB;                   /*!< Offset: 0x00C (R/ )  SysTick Calibration Register        */
} SysTick_Type;

/* SysTick Control / Status Register Definitions */












/* SysTick Reload Register Definitions */



/* SysTick Current Register Definitions */



/* SysTick Calibration Register Definitions */









/*@} end of group CMSIS_SysTick */


/** \ingroup  CMSIS_core_register
    \defgroup CMSIS_ITM     Instrumentation Trace Macrocell (ITM)
    \brief      Type definitions for the Instrumentation Trace Macrocell (ITM)
  @{
 */

/** \brief  Structure type to access the Instrumentation Trace Macrocell Register (ITM).
 */
typedef struct
{
  volatile  union
  {
    volatile  uint8_t    u8;                  /*!< Offset: 0x000 ( /W)  ITM Stimulus Port 8-bit                   */
    volatile  uint16_t   u16;                 /*!< Offset: 0x000 ( /W)  ITM Stimulus Port 16-bit                  */
    volatile  uint32_t   u32;                 /*!< Offset: 0x000 ( /W)  ITM Stimulus Port 32-bit                  */
  }  PORT [32];                          /*!< Offset: 0x000 ( /W)  ITM Stimulus Port Registers               */
       uint32_t RESERVED0[864];
  volatile uint32_t TER;                     /*!< Offset: 0xE00 (R/W)  ITM Trace Enable Register                 */
       uint32_t RESERVED1[15];
  volatile uint32_t TPR;                     /*!< Offset: 0xE40 (R/W)  ITM Trace Privilege Register              */
       uint32_t RESERVED2[15];
  volatile uint32_t TCR;                     /*!< Offset: 0xE80 (R/W)  ITM Trace Control Register                */
       uint32_t RESERVED3[29];
  volatile  uint32_t IWR;                     /*!< Offset: 0xEF8 ( /W)  ITM Integration Write Register            */
  volatile const  uint32_t IRR;                     /*!< Offset: 0xEFC (R/ )  ITM Integration Read Register             */
  volatile uint32_t IMCR;                    /*!< Offset: 0xF00 (R/W)  ITM Integration Mode Control Register     */
       uint32_t RESERVED4[43];
  volatile  uint32_t LAR;                     /*!< Offset: 0xFB0 ( /W)  ITM Lock Access Register                  */
  volatile const  uint32_t LSR;                     /*!< Offset: 0xFB4 (R/ )  ITM Lock Status Register                  */
       uint32_t RESERVED5[6];
  volatile const  uint32_t PID4;                    /*!< Offset: 0xFD0 (R/ )  ITM Peripheral Identification Register #4 */
  volatile const  uint32_t PID5;                    /*!< Offset: 0xFD4 (R/ )  ITM Peripheral Identification Register #5 */
  volatile const  uint32_t PID6;                    /*!< Offset: 0xFD8 (R/ )  ITM Peripheral Identification Register #6 */
  volatile const  uint32_t PID7;                    /*!< Offset: 0xFDC (R/ )  ITM Peripheral Identification Register #7 */
  volatile const  uint32_t PID0;                    /*!< Offset: 0xFE0 (R/ )  ITM Peripheral Identification Register #0 */
  volatile const  uint32_t PID1;                    /*!< Offset: 0xFE4 (R/ )  ITM Peripheral Identification Register #1 */
  volatile const  uint32_t PID2;                    /*!< Offset: 0xFE8 (R/ )  ITM Peripheral Identification Register #2 */
  volatile const  uint32_t PID3;                    /*!< Offset: 0xFEC (R/ )  ITM Peripheral Identification Register #3 */
  volatile const  uint32_t CID0;                    /*!< Offset: 0xFF0 (R/ )  ITM Component  Identification Register #0 */
  volatile const  uint32_t CID1;                    /*!< Offset: 0xFF4 (R/ )  ITM Component  Identification Register #1 */
  volatile const  uint32_t CID2;                    /*!< Offset: 0xFF8 (R/ )  ITM Component  Identification Register #2 */
  volatile const  uint32_t CID3;                    /*!< Offset: 0xFFC (R/ )  ITM Component  Identification Register #3 */
} ITM_Type;

/* ITM Trace Privilege Register Definitions */



/* ITM Trace Control Register Definitions */



























/* ITM Integration Write Register Definitions */



/* ITM Integration Read Register Definitions */



/* ITM Integration Mode Control Register Definitions */



/* ITM Lock Status Register Definitions */









/*@}*/ /* end of group CMSIS_ITM */


/** \ingroup  CMSIS_core_register
    \defgroup CMSIS_DWT     Data Watchpoint and Trace (DWT)
    \brief      Type definitions for the Data Watchpoint and Trace (DWT)
  @{
 */

/** \brief  Structure type to access the Data Watchpoint and Trace Register (DWT).
 */
typedef struct
{
  volatile uint32_t CTRL;                    /*!< Offset: 0x000 (R/W)  Control Register                          */
  volatile uint32_t CYCCNT;                  /*!< Offset: 0x004 (R/W)  Cycle Count Register                      */
  volatile uint32_t CPICNT;                  /*!< Offset: 0x008 (R/W)  CPI Count Register                        */
  volatile uint32_t EXCCNT;                  /*!< Offset: 0x00C (R/W)  Exception Overhead Count Register         */
  volatile uint32_t SLEEPCNT;                /*!< Offset: 0x010 (R/W)  Sleep Count Register                      */
  volatile uint32_t LSUCNT;                  /*!< Offset: 0x014 (R/W)  LSU Count Register                        */
  volatile uint32_t FOLDCNT;                 /*!< Offset: 0x018 (R/W)  Folded-instruction Count Register         */
  volatile const  uint32_t PCSR;                    /*!< Offset: 0x01C (R/ )  Program Counter Sample Register           */
  volatile uint32_t COMP0;                   /*!< Offset: 0x020 (R/W)  Comparator Register 0                     */
  volatile uint32_t MASK0;                   /*!< Offset: 0x024 (R/W)  Mask Register 0                           */
  volatile uint32_t FUNCTION0;               /*!< Offset: 0x028 (R/W)  Function Register 0                       */
       uint32_t RESERVED0[1];
  volatile uint32_t COMP1;                   /*!< Offset: 0x030 (R/W)  Comparator Register 1                     */
  volatile uint32_t MASK1;                   /*!< Offset: 0x034 (R/W)  Mask Register 1                           */
  volatile uint32_t FUNCTION1;               /*!< Offset: 0x038 (R/W)  Function Register 1                       */
       uint32_t RESERVED1[1];
  volatile uint32_t COMP2;                   /*!< Offset: 0x040 (R/W)  Comparator Register 2                     */
  volatile uint32_t MASK2;                   /*!< Offset: 0x044 (R/W)  Mask Register 2                           */
  volatile uint32_t FUNCTION2;               /*!< Offset: 0x048 (R/W)  Function Register 2                       */
       uint32_t RESERVED2[1];
  volatile uint32_t COMP3;                   /*!< Offset: 0x050 (R/W)  Comparator Register 3                     */
  volatile uint32_t MASK3;                   /*!< Offset: 0x054 (R/W)  Mask Register 3                           */
  volatile uint32_t FUNCTION3;               /*!< Offset: 0x058 (R/W)  Function Register 3                       */
} DWT_Type;

/* DWT Control Register Definitions */






















































/* DWT CPI Count Register Definitions */



/* DWT Exception Overhead Count Register Definitions */



/* DWT Sleep Count Register Definitions */



/* DWT LSU Count Register Definitions */



/* DWT Folded-instruction Count Register Definitions */



/* DWT Comparator Mask Register Definitions */



/* DWT Comparator Function Register Definitions */



























/*@}*/ /* end of group CMSIS_DWT */


/** \ingroup  CMSIS_core_register
    \defgroup CMSIS_TPI     Trace Port Interface (TPI)
    \brief      Type definitions for the Trace Port Interface (TPI)
  @{
 */

/** \brief  Structure type to access the Trace Port Interface Register (TPI).
 */
typedef struct
{
  volatile uint32_t SSPSR;                   /*!< Offset: 0x000 (R/ )  Supported Parallel Port Size Register     */
  volatile uint32_t CSPSR;                   /*!< Offset: 0x004 (R/W)  Current Parallel Port Size Register */
       uint32_t RESERVED0[2];
  volatile uint32_t ACPR;                    /*!< Offset: 0x010 (R/W)  Asynchronous Clock Prescaler Register */
       uint32_t RESERVED1[55];
  volatile uint32_t SPPR;                    /*!< Offset: 0x0F0 (R/W)  Selected Pin Protocol Register */
       uint32_t RESERVED2[131];
  volatile const  uint32_t FFSR;                    /*!< Offset: 0x300 (R/ )  Formatter and Flush Status Register */
  volatile uint32_t FFCR;                    /*!< Offset: 0x304 (R/W)  Formatter and Flush Control Register */
  volatile const  uint32_t FSCR;                    /*!< Offset: 0x308 (R/ )  Formatter Synchronization Counter Register */
       uint32_t RESERVED3[759];
  volatile const  uint32_t TRIGGER;                 /*!< Offset: 0xEE8 (R/ )  TRIGGER */
  volatile const  uint32_t FIFO0;                   /*!< Offset: 0xEEC (R/ )  Integration ETM Data */
  volatile const  uint32_t ITATBCTR2;               /*!< Offset: 0xEF0 (R/ )  ITATBCTR2 */
       uint32_t RESERVED4[1];
  volatile const  uint32_t ITATBCTR0;               /*!< Offset: 0xEF8 (R/ )  ITATBCTR0 */
  volatile const  uint32_t FIFO1;                   /*!< Offset: 0xEFC (R/ )  Integration ITM Data */
  volatile uint32_t ITCTRL;                  /*!< Offset: 0xF00 (R/W)  Integration Mode Control */
       uint32_t RESERVED5[39];
  volatile uint32_t CLAIMSET;                /*!< Offset: 0xFA0 (R/W)  Claim tag set */
  volatile uint32_t CLAIMCLR;                /*!< Offset: 0xFA4 (R/W)  Claim tag clear */
       uint32_t RESERVED7[8];
  volatile const  uint32_t DEVID;                   /*!< Offset: 0xFC8 (R/ )  TPIU_DEVID */
  volatile const  uint32_t DEVTYPE;                 /*!< Offset: 0xFCC (R/ )  TPIU_DEVTYPE */
} TPI_Type;

/* TPI Asynchronous Clock Prescaler Register Definitions */



/* TPI Selected Pin Protocol Register Definitions */



/* TPI Formatter and Flush Status Register Definitions */












/* TPI Formatter and Flush Control Register Definitions */






/* TPI TRIGGER Register Definitions */



/* TPI Integration ETM Data Register Definitions (FIFO0) */





















/* TPI ITATBCTR2 Register Definitions */



/* TPI Integration ITM Data Register Definitions (FIFO1) */





















/* TPI ITATBCTR0 Register Definitions */



/* TPI Integration Mode Control Register Definitions */



/* TPI DEVID Register Definitions */


















/* TPI DEVTYPE Register Definitions */






/*@}*/ /* end of group CMSIS_TPI */


#line 1173 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cm4.h"


#line 1279 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cm4.h"


/** \ingroup  CMSIS_core_register
    \defgroup CMSIS_CoreDebug       Core Debug Registers (CoreDebug)
    \brief      Type definitions for the Core Debug Registers
  @{
 */

/** \brief  Structure type to access the Core Debug Register (CoreDebug).
 */
typedef struct
{
  volatile uint32_t DHCSR;                   /*!< Offset: 0x000 (R/W)  Debug Halting Control and Status Register    */
  volatile  uint32_t DCRSR;                   /*!< Offset: 0x004 ( /W)  Debug Core Register Selector Register        */
  volatile uint32_t DCRDR;                   /*!< Offset: 0x008 (R/W)  Debug Core Register Data Register            */
  volatile uint32_t DEMCR;                   /*!< Offset: 0x00C (R/W)  Debug Exception and Monitor Control Register */
} CoreDebug_Type;

/* Debug Halting Control and Status Register */




































/* Debug Core Register Selector Register */






/* Debug Exception and Monitor Control Register */







































/*@} end of group CMSIS_CoreDebug */


/** \ingroup    CMSIS_core_register
    \defgroup   CMSIS_core_base     Core Definitions
    \brief      Definitions for base addresses, unions, and structures.
  @{
 */

/* Memory mapping of Cortex-M4 Hardware */
#line 1399 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cm4.h"

#line 1408 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cm4.h"











/*@} */



/*******************************************************************************
 *                Hardware Abstraction Layer
  Core Function Interface contains:
  - Core NVIC Functions
  - Core SysTick Functions
  - Core Debug Functions
  - Core Register Access Functions
 ******************************************************************************/
/** \defgroup CMSIS_Core_FunctionInterface Functions and Instructions Reference
*/



/* ##########################   NVIC functions  #################################### */
/** \ingroup  CMSIS_Core_FunctionInterface
    \defgroup CMSIS_Core_NVICFunctions NVIC Functions
    \brief      Functions that manage interrupts and exceptions via the NVIC.
    @{
 */

/** \brief  Set Priority Grouping

  The function sets the priority grouping field using the required unlock sequence.
  The parameter PriorityGroup is assigned to the field SCB->AIRCR [10:8] PRIGROUP field.
  Only values from 0..7 are used.
  In case of a conflict between priority grouping and available
  priority bits (__NVIC_PRIO_BITS), the smallest possible priority group is set.

    \param [in]      PriorityGroup  Priority grouping field.
 */
static inline void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07);               /* only values 0..7 are used          */

  reg_value  =  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;                                                   /* read old register configuration    */
  reg_value &= ~((0xFFFFUL << 16) | (7UL << 8));             /* clear bits to change               */
  reg_value  =  (reg_value                                 |
                ((uint32_t)0x5FA << 16) |
                (PriorityGroupTmp << 8));                                     /* Insert write key and priorty group */
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR =  reg_value;
}


/** \brief  Get Priority Grouping

  The function reads the priority grouping field from the NVIC Interrupt Controller.

    \return                Priority grouping field (SCB->AIRCR [10:8] PRIGROUP field).
 */
static inline uint32_t NVIC_GetPriorityGrouping(void)
{
  return ((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) >> 8);   /* read priority grouping field */
}


/** \brief  Enable External Interrupt

    The function enables a device-specific interrupt in the NVIC interrupt controller.

    \param [in]      IRQn  External interrupt number. Value cannot be negative.
 */
static inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
/*  NVIC->ISER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  enable interrupt */
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(uint32_t)((int32_t)IRQn) >> 5] = (uint32_t)(1 << ((uint32_t)((int32_t)IRQn) & (uint32_t)0x1F)); /* enable interrupt */
}


/** \brief  Disable External Interrupt

    The function disables a device-specific interrupt in the NVIC interrupt controller.

    \param [in]      IRQn  External interrupt number. Value cannot be negative.
 */
static inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* disable interrupt */
}


/** \brief  Get Pending Interrupt

    The function reads the pending register in the NVIC and returns the pending bit
    for the specified interrupt.

    \param [in]      IRQn  Interrupt number.

    \return             0  Interrupt status is not pending.
    \return             1  Interrupt status is pending.
 */
static inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t) ((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0)); /* Return 1 if pending else 0 */
}


/** \brief  Set Pending Interrupt

    The function sets the pending bit of an external interrupt.

    \param [in]      IRQn  Interrupt number. Value cannot be negative.
 */
static inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* set interrupt pending */
}


/** \brief  Clear Pending Interrupt

    The function clears the pending bit of an external interrupt.

    \param [in]      IRQn  External interrupt number. Value cannot be negative.
 */
static inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* Clear pending interrupt */
}


/** \brief  Get Active Interrupt

    The function reads the active register in NVIC and returns the active bit.

    \param [in]      IRQn  Interrupt number.

    \return             0  Interrupt status is not active.
    \return             1  Interrupt status is active.
 */
static inline uint32_t NVIC_GetActive(IRQn_Type IRQn)
{
  return((uint32_t)((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0)); /* Return 1 if active else 0 */
}


/** \brief  Set Interrupt Priority

    The function sets the priority of an interrupt.

    \note The priority cannot be set for every core interrupt.

    \param [in]      IRQn  Interrupt number.
    \param [in]  priority  Priority to set.
 */
static inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - 4)) & 0xff); } /* set Priority for Cortex-M  System Interrupts */
  else {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[(uint32_t)(IRQn)] = ((priority << (8 - 4)) & 0xff);    }        /* set Priority for device specific Interrupts  */
}


/** \brief  Get Interrupt Priority

    The function reads the priority of an interrupt. The interrupt
    number can be positive to specify an external (device specific)
    interrupt, or negative to specify an internal (core) interrupt.


    \param [in]   IRQn  Interrupt number.
    \return             Interrupt Priority. Value is aligned automatically to the implemented
                        priority bits of the microcontroller.
 */
static inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if(IRQn < 0) {
    return((uint32_t)(((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[((uint32_t)(IRQn) & 0xF)-4] >> (8 - 4)));  } /* get priority for Cortex-M  system interrupts */
  else {
    return((uint32_t)(((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[(uint32_t)(IRQn)]           >> (8 - 4)));  } /* get priority for device specific interrupts  */
}


/** \brief  Encode Priority

    The function encodes the priority for an interrupt with the given priority group,
    preemptive priority value, and subpriority value.
    In case of a conflict between priority grouping and available
    priority bits (__NVIC_PRIO_BITS), the smallest possible priority group is set.

    \param [in]     PriorityGroup  Used priority group.
    \param [in]   PreemptPriority  Preemptive priority value (starting from 0).
    \param [in]       SubPriority  Subpriority value (starting from 0).
    \return                        Encoded priority. Value can be used in the function \ref NVIC_SetPriority().
 */
static inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);          /* only values 0..7 are used          */
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 4) ? 4 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 4) < 7) ? 0 : PriorityGroupTmp - 7 + 4;

  return (
           ((PreemptPriority & ((1 << (PreemptPriorityBits)) - 1)) << SubPriorityBits) |
           ((SubPriority     & ((1 << (SubPriorityBits    )) - 1)))
         );
}


/** \brief  Decode Priority

    The function decodes an interrupt priority value with a given priority group to
    preemptive priority value and subpriority value.
    In case of a conflict between priority grouping and available
    priority bits (__NVIC_PRIO_BITS) the smallest possible priority group is set.

    \param [in]         Priority   Priority value, which can be retrieved with the function \ref NVIC_GetPriority().
    \param [in]     PriorityGroup  Used priority group.
    \param [out] pPreemptPriority  Preemptive priority value (starting from 0).
    \param [out]     pSubPriority  Subpriority value (starting from 0).
 */
static inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* pPreemptPriority, uint32_t* pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);          /* only values 0..7 are used          */
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 4) ? 4 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 4) < 7) ? 0 : PriorityGroupTmp - 7 + 4;

  *pPreemptPriority = (Priority >> SubPriorityBits) & ((1 << (PreemptPriorityBits)) - 1);
  *pSubPriority     = (Priority                   ) & ((1 << (SubPriorityBits    )) - 1);
}


/** \brief  System Reset

    The function initiates a system reset request to reset the MCU.
 */
static inline void NVIC_SystemReset(void)
{
  __DSB();                                                     /* Ensure all outstanding memory accesses included
                                                                  buffered write are completed before reset */
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = ((0x5FA << 16)      |
                 (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) |
                 (1UL << 2));                   /* Keep priority group unchanged */
  __DSB();                                                     /* Ensure completion of memory access */
  while(1);                                                    /* wait until reset */
}

/*@} end of CMSIS_Core_NVICFunctions */



/* ##################################    SysTick function  ############################################ */
/** \ingroup  CMSIS_Core_FunctionInterface
    \defgroup CMSIS_Core_SysTickFunctions SysTick Functions
    \brief      Functions that configure the System.
  @{
 */



/** \brief  System Tick Configuration

    The function initializes the System Timer and its interrupt, and starts the System Tick Timer.
    Counter is in free running mode to generate periodic interrupts.

    \param [in]  ticks  Number of ticks between two interrupts.

    \return          0  Function succeeded.
    \return          1  Function failed.

    \note     When the variable <b>__Vendor_SysTickConfig</b> is set to 1, then the
    function <b>SysTick_Config</b> is not included. In this case, the file <b><i>device</i>.h</b>
    must contain a vendor-specific implementation of this function.

 */
static inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1) > (0xFFFFFFUL << 0))  return (1);      /* Reload value impossible */

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = ticks - 1;                                  /* set reload register */
  NVIC_SetPriority (SysTick_IRQn, (1<<4) - 1);  /* set Priority for Systick Interrupt */
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0;                                          /* Load the SysTick Counter Value */
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2) |
                   (1UL << 1)   |
                   (1UL << 0);                    /* Enable SysTick IRQ and SysTick Timer */
  return (0);                                                  /* Function successful */
}



/*@} end of CMSIS_Core_SysTickFunctions */



/* ##################################### Debug In/Output function ########################################### */
/** \ingroup  CMSIS_Core_FunctionInterface
    \defgroup CMSIS_core_DebugFunctions ITM Functions
    \brief   Functions that access the ITM debug interface.
  @{
 */

extern volatile int32_t ITM_RxBuffer;                    /*!< External variable to receive characters.                         */



/** \brief  ITM Send Character

    The function transmits a character via the ITM chl 0, and
    \li Just returns when no debugger is connected that has booked the output.
    \li Is blocking when a debugger is connected, but the previous character sent has not been transmitted.

    \param [in]     ch  Character to transmit.

    \returns            Character to transmit.
 */
static inline uint32_t ITM_SendChar (uint32_t ch)
{
  if ((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL << 0))                  &&      /* ITM enabled */
      (((ITM_Type *) (0xE0000000UL) )->TER & (1UL << 0)        )                    )     /* ITM Port #0 enabled */
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0].u32 == 0);
    ((ITM_Type *) (0xE0000000UL) )->PORT[0].u8 = (uint8_t) ch;
  }
  return (ch);
}


/** \brief  ITM Receive Character

    The function inputs a character via the external variable \ref ITM_RxBuffer.

    \return             Received character.
    \return         -1  No character pending.
 */
static inline int32_t ITM_ReceiveChar (void) {
  int32_t ch = -1;                           /* no character available */

  if (ITM_RxBuffer != 0x5AA55AA5) {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = 0x5AA55AA5;       /* ready for next character */
  }

  return (ch);
}


/** \brief  ITM Check Character

    The function checks whether a character is pending for reading in the variable \ref ITM_RxBuffer.

    \return          0  No character available.
    \return          1  Character available.
 */
static inline int32_t ITM_CheckChar (void) {

  if (ITM_RxBuffer == 0x5AA55AA5) {
    return (0);                                 /* no character available */
  } else {
    return (1);                                 /*    character available */
  }
}

/*@} end of CMSIS_core_DebugFunctions */







#line 221 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\system_MK60D10.h"
/*
** ###################################################################
**     Processors:          MK60DN512VLL10
**                          MK60DX256VLL10
**                          MK60DN256VLL10
**                          MK60DN512VLQ10
**                          MK60DN256VLQ10
**                          MK60DX256VLQ10
**                          MK60DN512VMC10
**                          MK60DN256VMC10
**                          MK60DX256VMC10
**                          MK60DN512VMD10
**                          MK60DX256VMD10
**                          MK60DN256VMD10
**
**     Compilers:           ARM Compiler
**                          Freescale C/C++ for Embedded ARM
**                          GNU C Compiler
**                          IAR ANSI C/C++ Compiler for ARM
**
**     Reference manual:    K60P144M100SF2V2RM Rev. 2, Jun 2012
**     Version:             rev. 1.3, 2012-10-29
**
**     Abstract:
**         Provides a system configuration function and a global variable that
**         contains the system frequency. It configures the device and initializes
**         the oscillator (PLL) that is part of the microcontroller device.
**
**     Copyright: 2012 Freescale, Inc. All Rights Reserved.
**
**     http:                 www.freescale.com
**     mail:                 support@freescale.com
**
**     Revisions:
**     - rev. 1.0 (2012-01-03)
**         Initial version
**     - rev. 1.1 (2012-04-13)
**         Added new #define symbol MCU_MEM_MAP_VERSION_MINOR.
**         Added new #define symbols <peripheralType>_BASE_PTRS.
**     - rev. 1.2 (2012-07-09)
**         UART0 - Fixed register definition - CEA709.1-B (LON) registers added.
**     - rev. 1.3 (2012-10-29)
**         Registers updated according to the new reference manual revision - Rev. 2, Jun 2012
**
** ###################################################################
*/

/**
 * @file MK60D10
 * @version 1.3
 * @date 2012-10-29
 * @brief Device specific configuration file for MK60D10 (header file)
 *
 * Provides a system configuration function and a global variable that contains
 * the system frequency. It configures the device and initializes the oscillator
 * (PLL) that is part of the microcontroller device.
 */








#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */
#line 235 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

#line 258 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 67 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\system_MK60D10.h"

/**
 * @brief System clock frequency (core clock)
 *
 * The system clock frequency supplied to the SysTick timer and the processor
 * core clock. This variable can be used by the user application to setup the
 * SysTick timer or configure other parameters. It may also be used by debugger to
 * query the frequency of the debug timer or configure the trace clock speed
 * SystemCoreClock is initialized with a correct predefined value.
 */
extern uint32_t SystemCoreClock;

/**
 * @brief Setup the microcontroller system.
 *
 * Typically this function configures the oscillator (PLL) that is part of the
 * microcontroller device. For systems with variable clock speed it also updates
 * the variable SystemCoreClock. SystemInit is called from startup_device file.
 */
void SystemInit (void);

/**
 * @brief Updates the SystemCoreClock variable.
 *
 * It must be called whenever the core clock is changed during program
 * execution. SystemCoreClockUpdate() evaluates the clock register settings and calculates
 * the current core clock.
 */
void SystemCoreClockUpdate (void);





#line 222 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"

/**
 * @}
 */ /* end of group Cortex_Core_Configuration */


/* ----------------------------------------------------------------------------
   -- Device Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup Peripheral_access_layer Device Peripheral Access Layer
 * @{
 */


/*
** Start of section using anonymous unions
*/

#line 251 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
  #pragma language=extended




/* ----------------------------------------------------------------------------
   -- ADC Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup ADC_Peripheral_Access_Layer ADC Peripheral Access Layer
 * @{
 */

/** ADC - Register Layout Typedef */
typedef struct {
  volatile uint32_t SC1[2];                            /**< ADC Status and Control Registers 1, array offset: 0x0, array step: 0x4 */
  volatile uint32_t CFG1;                              /**< ADC Configuration Register 1, offset: 0x8 */
  volatile uint32_t CFG2;                              /**< ADC Configuration Register 2, offset: 0xC */
  volatile const  uint32_t R[2];                              /**< ADC Data Result Register, array offset: 0x10, array step: 0x4 */
  volatile uint32_t CV1;                               /**< Compare Value Registers, offset: 0x18 */
  volatile uint32_t CV2;                               /**< Compare Value Registers, offset: 0x1C */
  volatile uint32_t SC2;                               /**< Status and Control Register 2, offset: 0x20 */
  volatile uint32_t SC3;                               /**< Status and Control Register 3, offset: 0x24 */
  volatile uint32_t OFS;                               /**< ADC Offset Correction Register, offset: 0x28 */
  volatile uint32_t PG;                                /**< ADC Plus-Side Gain Register, offset: 0x2C */
  volatile uint32_t MG;                                /**< ADC Minus-Side Gain Register, offset: 0x30 */
  volatile uint32_t CLPD;                              /**< ADC Plus-Side General Calibration Value Register, offset: 0x34 */
  volatile uint32_t CLPS;                              /**< ADC Plus-Side General Calibration Value Register, offset: 0x38 */
  volatile uint32_t CLP4;                              /**< ADC Plus-Side General Calibration Value Register, offset: 0x3C */
  volatile uint32_t CLP3;                              /**< ADC Plus-Side General Calibration Value Register, offset: 0x40 */
  volatile uint32_t CLP2;                              /**< ADC Plus-Side General Calibration Value Register, offset: 0x44 */
  volatile uint32_t CLP1;                              /**< ADC Plus-Side General Calibration Value Register, offset: 0x48 */
  volatile uint32_t CLP0;                              /**< ADC Plus-Side General Calibration Value Register, offset: 0x4C */
  volatile uint32_t PGA;                               /**< ADC PGA Register, offset: 0x50 */
  volatile uint32_t CLMD;                              /**< ADC Minus-Side General Calibration Value Register, offset: 0x54 */
  volatile uint32_t CLMS;                              /**< ADC Minus-Side General Calibration Value Register, offset: 0x58 */
  volatile uint32_t CLM4;                              /**< ADC Minus-Side General Calibration Value Register, offset: 0x5C */
  volatile uint32_t CLM3;                              /**< ADC Minus-Side General Calibration Value Register, offset: 0x60 */
  volatile uint32_t CLM2;                              /**< ADC Minus-Side General Calibration Value Register, offset: 0x64 */
  volatile uint32_t CLM1;                              /**< ADC Minus-Side General Calibration Value Register, offset: 0x68 */
  volatile uint32_t CLM0;                              /**< ADC Minus-Side General Calibration Value Register, offset: 0x6C */
} ADC_Type;

/* ----------------------------------------------------------------------------
   -- ADC Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup ADC_Register_Masks ADC Register Masks
 * @{
 */

/* SC1 Bit Fields */
#line 314 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CFG1 Bit Fields */
#line 328 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CFG2 Bit Fields */
#line 338 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* R Bit Fields */



/* CV1 Bit Fields */



/* CV2 Bit Fields */



/* SC2 Bit Fields */
#line 366 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SC3 Bit Fields */
#line 378 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* OFS Bit Fields */



/* PG Bit Fields */



/* MG Bit Fields */



/* CLPD Bit Fields */



/* CLPS Bit Fields */



/* CLP4 Bit Fields */



/* CLP3 Bit Fields */



/* CLP2 Bit Fields */



/* CLP1 Bit Fields */



/* CLP0 Bit Fields */



/* PGA Bit Fields */
#line 426 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CLMD Bit Fields */



/* CLMS Bit Fields */



/* CLM4 Bit Fields */



/* CLM3 Bit Fields */



/* CLM2 Bit Fields */



/* CLM1 Bit Fields */



/* CLM0 Bit Fields */




/**
 * @}
 */ /* end of group ADC_Register_Masks */


/* ADC - Peripheral instance base addresses */
/** Peripheral ADC0 base address */

/** Peripheral ADC0 base pointer */

/** Peripheral ADC1 base address */

/** Peripheral ADC1 base pointer */

/** Array initializer of ADC peripheral base pointers */


/**
 * @}
 */ /* end of group ADC_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- AIPS Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup AIPS_Peripheral_Access_Layer AIPS Peripheral Access Layer
 * @{
 */

/** AIPS - Register Layout Typedef */
typedef struct {
  volatile uint32_t MPRA;                              /**< Master Privilege Register A, offset: 0x0 */
       uint8_t RESERVED_0[28];
  volatile uint32_t PACRA;                             /**< Peripheral Access Control Register, offset: 0x20 */
  volatile uint32_t PACRB;                             /**< Peripheral Access Control Register, offset: 0x24 */
  volatile uint32_t PACRC;                             /**< Peripheral Access Control Register, offset: 0x28 */
  volatile uint32_t PACRD;                             /**< Peripheral Access Control Register, offset: 0x2C */
       uint8_t RESERVED_1[16];
  volatile uint32_t PACRE;                             /**< Peripheral Access Control Register, offset: 0x40 */
  volatile uint32_t PACRF;                             /**< Peripheral Access Control Register, offset: 0x44 */
  volatile uint32_t PACRG;                             /**< Peripheral Access Control Register, offset: 0x48 */
  volatile uint32_t PACRH;                             /**< Peripheral Access Control Register, offset: 0x4C */
  volatile uint32_t PACRI;                             /**< Peripheral Access Control Register, offset: 0x50 */
  volatile uint32_t PACRJ;                             /**< Peripheral Access Control Register, offset: 0x54 */
  volatile uint32_t PACRK;                             /**< Peripheral Access Control Register, offset: 0x58 */
  volatile uint32_t PACRL;                             /**< Peripheral Access Control Register, offset: 0x5C */
  volatile uint32_t PACRM;                             /**< Peripheral Access Control Register, offset: 0x60 */
  volatile uint32_t PACRN;                             /**< Peripheral Access Control Register, offset: 0x64 */
  volatile uint32_t PACRO;                             /**< Peripheral Access Control Register, offset: 0x68 */
  volatile uint32_t PACRP;                             /**< Peripheral Access Control Register, offset: 0x6C */
} AIPS_Type;

/* ----------------------------------------------------------------------------
   -- AIPS Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup AIPS_Register_Masks AIPS Register Masks
 * @{
 */

/* MPRA Bit Fields */
#line 555 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PACRA Bit Fields */
#line 604 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PACRB Bit Fields */
#line 653 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PACRC Bit Fields */
#line 702 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PACRD Bit Fields */
#line 751 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PACRE Bit Fields */
#line 800 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PACRF Bit Fields */
#line 849 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PACRG Bit Fields */
#line 898 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PACRH Bit Fields */
#line 947 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PACRI Bit Fields */
#line 996 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PACRJ Bit Fields */
#line 1045 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PACRK Bit Fields */
#line 1094 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PACRL Bit Fields */
#line 1143 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PACRM Bit Fields */
#line 1192 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PACRN Bit Fields */
#line 1241 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PACRO Bit Fields */
#line 1290 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PACRP Bit Fields */
#line 1339 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"

/**
 * @}
 */ /* end of group AIPS_Register_Masks */


/* AIPS - Peripheral instance base addresses */
/** Peripheral AIPS0 base address */

/** Peripheral AIPS0 base pointer */

/** Peripheral AIPS1 base address */

/** Peripheral AIPS1 base pointer */

/** Array initializer of AIPS peripheral base pointers */


/**
 * @}
 */ /* end of group AIPS_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- AXBS Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup AXBS_Peripheral_Access_Layer AXBS Peripheral Access Layer
 * @{
 */

/** AXBS - Register Layout Typedef */
typedef struct {
  struct {                                         /* offset: 0x0, array step: 0x100 */
    volatile uint32_t PRS;                               /**< Priority Registers Slave, array offset: 0x0, array step: 0x100 */
         uint8_t RESERVED_0[12];
    volatile uint32_t CRS;                               /**< Control Register, array offset: 0x10, array step: 0x100 */
         uint8_t RESERVED_1[236];
  } SLAVE[5];
       uint8_t RESERVED_0[768];
  volatile uint32_t MGPCR0;                            /**< Master General Purpose Control Register, offset: 0x800 */
       uint8_t RESERVED_1[252];
  volatile uint32_t MGPCR1;                            /**< Master General Purpose Control Register, offset: 0x900 */
       uint8_t RESERVED_2[252];
  volatile uint32_t MGPCR2;                            /**< Master General Purpose Control Register, offset: 0xA00 */
       uint8_t RESERVED_3[252];
  volatile uint32_t MGPCR3;                            /**< Master General Purpose Control Register, offset: 0xB00 */
       uint8_t RESERVED_4[252];
  volatile uint32_t MGPCR4;                            /**< Master General Purpose Control Register, offset: 0xC00 */
       uint8_t RESERVED_5[252];
  volatile uint32_t MGPCR5;                            /**< Master General Purpose Control Register, offset: 0xD00 */
} AXBS_Type;

/* ----------------------------------------------------------------------------
   -- AXBS Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup AXBS_Register_Masks AXBS Register Masks
 * @{
 */

/* PRS Bit Fields */
#line 1421 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CRS Bit Fields */
#line 1435 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* MGPCR0 Bit Fields */



/* MGPCR1 Bit Fields */



/* MGPCR2 Bit Fields */



/* MGPCR3 Bit Fields */



/* MGPCR4 Bit Fields */



/* MGPCR5 Bit Fields */




/**
 * @}
 */ /* end of group AXBS_Register_Masks */


/* AXBS - Peripheral instance base addresses */
/** Peripheral AXBS base address */

/** Peripheral AXBS base pointer */

/** Array initializer of AXBS peripheral base pointers */


/**
 * @}
 */ /* end of group AXBS_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- CAN Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup CAN_Peripheral_Access_Layer CAN Peripheral Access Layer
 * @{
 */

/** CAN - Register Layout Typedef */
typedef struct {
  volatile uint32_t MCR;                               /**< Module Configuration Register, offset: 0x0 */
  volatile uint32_t CTRL1;                             /**< Control 1 register, offset: 0x4 */
  volatile uint32_t TIMER;                             /**< Free Running Timer, offset: 0x8 */
       uint8_t RESERVED_0[4];
  volatile uint32_t RXMGMASK;                          /**< Rx Mailboxes Global Mask Register, offset: 0x10 */
  volatile uint32_t RX14MASK;                          /**< Rx 14 Mask register, offset: 0x14 */
  volatile uint32_t RX15MASK;                          /**< Rx 15 Mask register, offset: 0x18 */
  volatile uint32_t ECR;                               /**< Error Counter, offset: 0x1C */
  volatile uint32_t ESR1;                              /**< Error and Status 1 register, offset: 0x20 */
       uint8_t RESERVED_1[4];
  volatile uint32_t IMASK1;                            /**< Interrupt Masks 1 register, offset: 0x28 */
       uint8_t RESERVED_2[4];
  volatile uint32_t IFLAG1;                            /**< Interrupt Flags 1 register, offset: 0x30 */
  volatile uint32_t CTRL2;                             /**< Control 2 register, offset: 0x34 */
  volatile const  uint32_t ESR2;                              /**< Error and Status 2 register, offset: 0x38 */
       uint8_t RESERVED_3[8];
  volatile const  uint32_t CRCR;                              /**< CRC Register, offset: 0x44 */
  volatile uint32_t RXFGMASK;                          /**< Rx FIFO Global Mask register, offset: 0x48 */
  volatile const  uint32_t RXFIR;                             /**< Rx FIFO Information Register, offset: 0x4C */
       uint8_t RESERVED_4[48];
  struct {                                         /* offset: 0x80, array step: 0x10 */
    volatile uint32_t CS;                                /**< Message Buffer 0 CS Register..Message Buffer 15 CS Register, array offset: 0x80, array step: 0x10 */
    volatile uint32_t ID;                                /**< Message Buffer 0 ID Register..Message Buffer 15 ID Register, array offset: 0x84, array step: 0x10 */
    volatile uint32_t WORD0;                             /**< Message Buffer 0 WORD0 Register..Message Buffer 15 WORD0 Register, array offset: 0x88, array step: 0x10 */
    volatile uint32_t WORD1;                             /**< Message Buffer 0 WORD1 Register..Message Buffer 15 WORD1 Register, array offset: 0x8C, array step: 0x10 */
  } MB[16];
       uint8_t RESERVED_5[1792];
  volatile uint32_t RXIMR[16];                         /**< Rx Individual Mask Registers, array offset: 0x880, array step: 0x4 */
} CAN_Type;

/* ----------------------------------------------------------------------------
   -- CAN Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup CAN_Register_Masks CAN Register Masks
 * @{
 */

/* MCR Bit Fields */
#line 1569 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CTRL1 Bit Fields */
#line 1607 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* TIMER Bit Fields */



/* RXMGMASK Bit Fields */



/* RX14MASK Bit Fields */



/* RX15MASK Bit Fields */



/* ECR Bit Fields */
#line 1630 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* ESR1 Bit Fields */
#line 1668 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* IMASK1 Bit Fields */



/* IFLAG1 Bit Fields */
#line 1685 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CTRL2 Bit Fields */
#line 1700 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* ESR2 Bit Fields */
#line 1708 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CRCR Bit Fields */
#line 1715 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* RXFGMASK Bit Fields */



/* RXFIR Bit Fields */



/* CS Bit Fields */
#line 1739 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* ID Bit Fields */
#line 1749 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* WORD0 Bit Fields */
#line 1762 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* WORD1 Bit Fields */
#line 1775 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* RXIMR Bit Fields */




/**
 * @}
 */ /* end of group CAN_Register_Masks */


/* CAN - Peripheral instance base addresses */
/** Peripheral CAN0 base address */

/** Peripheral CAN0 base pointer */

/** Peripheral CAN1 base address */

/** Peripheral CAN1 base pointer */

/** Array initializer of CAN peripheral base pointers */


/**
 * @}
 */ /* end of group CAN_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- CAU Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup CAU_Peripheral_Access_Layer CAU Peripheral Access Layer
 * @{
 */

/** CAU - Register Layout Typedef */
typedef struct {
  volatile  uint32_t DIRECT[16];                        /**< Direct access register 0..Direct access register 15, array offset: 0x0, array step: 0x4 */
       uint8_t RESERVED_0[2048];
  volatile  uint32_t LDR_CASR;                          /**< Status register  - Load Register command, offset: 0x840 */
  volatile  uint32_t LDR_CAA;                           /**< Accumulator register - Load Register command, offset: 0x844 */
  volatile  uint32_t LDR_CA[9];                         /**< General Purpose Register 0 - Load Register command..General Purpose Register 8 - Load Register command, array offset: 0x848, array step: 0x4 */
       uint8_t RESERVED_1[20];
  volatile const  uint32_t STR_CASR;                          /**< Status register  - Store Register command, offset: 0x880 */
  volatile const  uint32_t STR_CAA;                           /**< Accumulator register - Store Register command, offset: 0x884 */
  volatile const  uint32_t STR_CA[9];                         /**< General Purpose Register 0 - Store Register command..General Purpose Register 8 - Store Register command, array offset: 0x888, array step: 0x4 */
       uint8_t RESERVED_2[20];
  volatile  uint32_t ADR_CASR;                          /**< Status register  - Add Register command, offset: 0x8C0 */
  volatile  uint32_t ADR_CAA;                           /**< Accumulator register - Add to register command, offset: 0x8C4 */
  volatile  uint32_t ADR_CA[9];                         /**< General Purpose Register 0 - Add to register command..General Purpose Register 8 - Add to register command, array offset: 0x8C8, array step: 0x4 */
       uint8_t RESERVED_3[20];
  volatile  uint32_t RADR_CASR;                         /**< Status register  - Reverse and Add to Register command, offset: 0x900 */
  volatile  uint32_t RADR_CAA;                          /**< Accumulator register - Reverse and Add to Register command, offset: 0x904 */
  volatile  uint32_t RADR_CA[9];                        /**< General Purpose Register 0 - Reverse and Add to Register command..General Purpose Register 8 - Reverse and Add to Register command, array offset: 0x908, array step: 0x4 */
       uint8_t RESERVED_4[84];
  volatile  uint32_t XOR_CASR;                          /**< Status register  - Exclusive Or command, offset: 0x980 */
  volatile  uint32_t XOR_CAA;                           /**< Accumulator register - Exclusive Or command, offset: 0x984 */
  volatile  uint32_t XOR_CA[9];                         /**< General Purpose Register 0 - Exclusive Or command..General Purpose Register 8 - Exclusive Or command, array offset: 0x988, array step: 0x4 */
       uint8_t RESERVED_5[20];
  volatile  uint32_t ROTL_CASR;                         /**< Status register  - Rotate Left command, offset: 0x9C0 */
  volatile  uint32_t ROTL_CAA;                          /**< Accumulator register - Rotate Left command, offset: 0x9C4 */
  volatile  uint32_t ROTL_CA[9];                        /**< General Purpose Register 0 - Rotate Left command..General Purpose Register 8 - Rotate Left command, array offset: 0x9C8, array step: 0x4 */
       uint8_t RESERVED_6[276];
  volatile  uint32_t AESC_CASR;                         /**< Status register  - AES Column Operation command, offset: 0xB00 */
  volatile  uint32_t AESC_CAA;                          /**< Accumulator register - AES Column Operation command, offset: 0xB04 */
  volatile  uint32_t AESC_CA[9];                        /**< General Purpose Register 0 - AES Column Operation command..General Purpose Register 8 - AES Column Operation command, array offset: 0xB08, array step: 0x4 */
       uint8_t RESERVED_7[20];
  volatile  uint32_t AESIC_CASR;                        /**< Status register  - AES Inverse Column Operation command, offset: 0xB40 */
  volatile  uint32_t AESIC_CAA;                         /**< Accumulator register - AES Inverse Column Operation command, offset: 0xB44 */
  volatile  uint32_t AESIC_CA[9];                       /**< General Purpose Register 0 - AES Inverse Column Operation command..General Purpose Register 8 - AES Inverse Column Operation command, array offset: 0xB48, array step: 0x4 */
} CAU_Type;

/* ----------------------------------------------------------------------------
   -- CAU Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup CAU_Register_Masks CAU Register Masks
 * @{
 */

/* LDR_CASR Bit Fields */
#line 1865 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* STR_CASR Bit Fields */
#line 1873 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* ADR_CASR Bit Fields */
#line 1881 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* RADR_CASR Bit Fields */
#line 1889 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* XOR_CASR Bit Fields */
#line 1897 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* ROTL_CASR Bit Fields */
#line 1905 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* AESC_CASR Bit Fields */
#line 1913 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* AESIC_CASR Bit Fields */
#line 1921 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"

/**
 * @}
 */ /* end of group CAU_Register_Masks */


/* CAU - Peripheral instance base addresses */
/** Peripheral CAU base address */

/** Peripheral CAU base pointer */

/** Array initializer of CAU peripheral base pointers */


/**
 * @}
 */ /* end of group CAU_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- CMP Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup CMP_Peripheral_Access_Layer CMP Peripheral Access Layer
 * @{
 */

/** CMP - Register Layout Typedef */
typedef struct {
  volatile uint8_t CR0;                                /**< CMP Control Register 0, offset: 0x0 */
  volatile uint8_t CR1;                                /**< CMP Control Register 1, offset: 0x1 */
  volatile uint8_t FPR;                                /**< CMP Filter Period Register, offset: 0x2 */
  volatile uint8_t SCR;                                /**< CMP Status and Control Register, offset: 0x3 */
  volatile uint8_t DACCR;                              /**< DAC Control Register, offset: 0x4 */
  volatile uint8_t MUXCR;                              /**< MUX Control Register, offset: 0x5 */
} CMP_Type;

/* ----------------------------------------------------------------------------
   -- CMP Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup CMP_Register_Masks CMP Register Masks
 * @{
 */

/* CR0 Bit Fields */
#line 1975 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CR1 Bit Fields */
#line 1990 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* FPR Bit Fields */



/* SCR Bit Fields */
#line 2007 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* DACCR Bit Fields */
#line 2015 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* MUXCR Bit Fields */
#line 2024 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"

/**
 * @}
 */ /* end of group CMP_Register_Masks */


/* CMP - Peripheral instance base addresses */
/** Peripheral CMP0 base address */

/** Peripheral CMP0 base pointer */

/** Peripheral CMP1 base address */

/** Peripheral CMP1 base pointer */

/** Peripheral CMP2 base address */

/** Peripheral CMP2 base pointer */

/** Array initializer of CMP peripheral base pointers */


/**
 * @}
 */ /* end of group CMP_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- CMT Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup CMT_Peripheral_Access_Layer CMT Peripheral Access Layer
 * @{
 */

/** CMT - Register Layout Typedef */
typedef struct {
  volatile uint8_t CGH1;                               /**< CMT Carrier Generator High Data Register 1, offset: 0x0 */
  volatile uint8_t CGL1;                               /**< CMT Carrier Generator Low Data Register 1, offset: 0x1 */
  volatile uint8_t CGH2;                               /**< CMT Carrier Generator High Data Register 2, offset: 0x2 */
  volatile uint8_t CGL2;                               /**< CMT Carrier Generator Low Data Register 2, offset: 0x3 */
  volatile uint8_t OC;                                 /**< CMT Output Control Register, offset: 0x4 */
  volatile uint8_t MSC;                                /**< CMT Modulator Status and Control Register, offset: 0x5 */
  volatile uint8_t CMD1;                               /**< CMT Modulator Data Register Mark High, offset: 0x6 */
  volatile uint8_t CMD2;                               /**< CMT Modulator Data Register Mark Low, offset: 0x7 */
  volatile uint8_t CMD3;                               /**< CMT Modulator Data Register Space High, offset: 0x8 */
  volatile uint8_t CMD4;                               /**< CMT Modulator Data Register Space Low, offset: 0x9 */
  volatile uint8_t PPS;                                /**< CMT Primary Prescaler Register, offset: 0xA */
  volatile uint8_t DMA;                                /**< CMT Direct Memory Access Register, offset: 0xB */
} CMT_Type;

/* ----------------------------------------------------------------------------
   -- CMT Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup CMT_Register_Masks CMT Register Masks
 * @{
 */

/* CGH1 Bit Fields */



/* CGL1 Bit Fields */



/* CGH2 Bit Fields */



/* CGL2 Bit Fields */



/* OC Bit Fields */
#line 2108 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* MSC Bit Fields */
#line 2124 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CMD1 Bit Fields */



/* CMD2 Bit Fields */



/* CMD3 Bit Fields */



/* CMD4 Bit Fields */



/* PPS Bit Fields */



/* DMA Bit Fields */



/**
 * @}
 */ /* end of group CMT_Register_Masks */


/* CMT - Peripheral instance base addresses */
/** Peripheral CMT base address */

/** Peripheral CMT base pointer */

/** Array initializer of CMT peripheral base pointers */


/**
 * @}
 */ /* end of group CMT_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- CRC Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup CRC_Peripheral_Access_Layer CRC Peripheral Access Layer
 * @{
 */

/** CRC - Register Layout Typedef */
typedef struct {
  union {                                          /* offset: 0x0 */
    struct {                                         /* offset: 0x0 */
      volatile uint16_t CRCL;                              /**< CRC_CRCL register., offset: 0x0 */
      volatile uint16_t CRCH;                              /**< CRC_CRCH register., offset: 0x2 */
    } ACCESS16BIT;
    volatile uint32_t CRC;                               /**< CRC Data register, offset: 0x0 */
    struct {                                         /* offset: 0x0 */
      volatile uint8_t CRCLL;                              /**< CRC_CRCLL register., offset: 0x0 */
      volatile uint8_t CRCLU;                              /**< CRC_CRCLU register., offset: 0x1 */
      volatile uint8_t CRCHL;                              /**< CRC_CRCHL register., offset: 0x2 */
      volatile uint8_t CRCHU;                              /**< CRC_CRCHU register., offset: 0x3 */
    } ACCESS8BIT;
  };
  union {                                          /* offset: 0x4 */
    struct {                                         /* offset: 0x4 */
      volatile uint16_t GPOLYL;                            /**< CRC_GPOLYL register., offset: 0x4 */
      volatile uint16_t GPOLYH;                            /**< CRC_GPOLYH register., offset: 0x6 */
    } GPOLY_ACCESS16BIT;
    volatile uint32_t GPOLY;                             /**< CRC Polynomial register, offset: 0x4 */
    struct {                                         /* offset: 0x4 */
      volatile uint8_t GPOLYLL;                            /**< CRC_GPOLYLL register., offset: 0x4 */
      volatile uint8_t GPOLYLU;                            /**< CRC_GPOLYLU register., offset: 0x5 */
      volatile uint8_t GPOLYHL;                            /**< CRC_GPOLYHL register., offset: 0x6 */
      volatile uint8_t GPOLYHU;                            /**< CRC_GPOLYHU register., offset: 0x7 */
    } GPOLY_ACCESS8BIT;
  };
  union {                                          /* offset: 0x8 */
    volatile uint32_t CTRL;                              /**< CRC Control register, offset: 0x8 */
    struct {                                         /* offset: 0x8 */
           uint8_t RESERVED_0[3];
      volatile uint8_t CTRLHU;                             /**< CRC_CTRLHU register., offset: 0xB */
    } CTRL_ACCESS8BIT;
  };
} CRC_Type;

/* ----------------------------------------------------------------------------
   -- CRC Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup CRC_Register_Masks CRC Register Masks
 * @{
 */

/* CRCL Bit Fields */



/* CRCH Bit Fields */



/* CRC Bit Fields */
#line 2242 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CRCLL Bit Fields */



/* CRCLU Bit Fields */



/* CRCHL Bit Fields */



/* CRCHU Bit Fields */



/* GPOLYL Bit Fields */



/* GPOLYH Bit Fields */



/* GPOLY Bit Fields */
#line 2273 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* GPOLYLL Bit Fields */



/* GPOLYLU Bit Fields */



/* GPOLYHL Bit Fields */



/* GPOLYHU Bit Fields */



/* CTRL Bit Fields */
#line 2302 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CTRLHU Bit Fields */
#line 2315 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"

/**
 * @}
 */ /* end of group CRC_Register_Masks */


/* CRC - Peripheral instance base addresses */
/** Peripheral CRC base address */

/** Peripheral CRC base pointer */

/** Array initializer of CRC peripheral base pointers */


/**
 * @}
 */ /* end of group CRC_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- DAC Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup DAC_Peripheral_Access_Layer DAC Peripheral Access Layer
 * @{
 */

/** DAC - Register Layout Typedef */
typedef struct {
  struct {                                         /* offset: 0x0, array step: 0x2 */
    volatile uint8_t DATL;                               /**< DAC Data Low Register, array offset: 0x0, array step: 0x2 */
    volatile uint8_t DATH;                               /**< DAC Data High Register, array offset: 0x1, array step: 0x2 */
  } DAT[16];
  volatile uint8_t SR;                                 /**< DAC Status Register, offset: 0x20 */
  volatile uint8_t C0;                                 /**< DAC Control Register, offset: 0x21 */
  volatile uint8_t C1;                                 /**< DAC Control Register 1, offset: 0x22 */
  volatile uint8_t C2;                                 /**< DAC Control Register 2, offset: 0x23 */
} DAC_Type;

/* ----------------------------------------------------------------------------
   -- DAC Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup DAC_Register_Masks DAC Register Masks
 * @{
 */

/* DATL Bit Fields */



/* DATH Bit Fields */



/* SR Bit Fields */
#line 2379 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* C0 Bit Fields */
#line 2396 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* C1 Bit Fields */
#line 2407 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* C2 Bit Fields */
#line 2414 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"

/**
 * @}
 */ /* end of group DAC_Register_Masks */


/* DAC - Peripheral instance base addresses */
/** Peripheral DAC0 base address */

/** Peripheral DAC0 base pointer */

/** Peripheral DAC1 base address */

/** Peripheral DAC1 base pointer */

/** Array initializer of DAC peripheral base pointers */


/**
 * @}
 */ /* end of group DAC_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- DMA Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup DMA_Peripheral_Access_Layer DMA Peripheral Access Layer
 * @{
 */

/** DMA - Register Layout Typedef */
typedef struct {
  volatile uint32_t CR;                                /**< Control Register, offset: 0x0 */
  volatile const  uint32_t ES;                                /**< Error Status Register, offset: 0x4 */
       uint8_t RESERVED_0[4];
  volatile uint32_t ERQ;                               /**< Enable Request Register, offset: 0xC */
       uint8_t RESERVED_1[4];
  volatile uint32_t EEI;                               /**< Enable Error Interrupt Register, offset: 0x14 */
  volatile  uint8_t CEEI;                               /**< Clear Enable Error Interrupt Register, offset: 0x18 */
  volatile  uint8_t SEEI;                               /**< Set Enable Error Interrupt Register, offset: 0x19 */
  volatile  uint8_t CERQ;                               /**< Clear Enable Request Register, offset: 0x1A */
  volatile  uint8_t SERQ;                               /**< Set Enable Request Register, offset: 0x1B */
  volatile  uint8_t CDNE;                               /**< Clear DONE Status Bit Register, offset: 0x1C */
  volatile  uint8_t SSRT;                               /**< Set START Bit Register, offset: 0x1D */
  volatile  uint8_t CERR;                               /**< Clear Error Register, offset: 0x1E */
  volatile  uint8_t CINT;                               /**< Clear Interrupt Request Register, offset: 0x1F */
       uint8_t RESERVED_2[4];
  volatile uint32_t INT;                               /**< Interrupt Request Register, offset: 0x24 */
       uint8_t RESERVED_3[4];
  volatile uint32_t ERR;                               /**< Error Register, offset: 0x2C */
       uint8_t RESERVED_4[4];
  volatile uint32_t HRS;                               /**< Hardware Request Status Register, offset: 0x34 */
       uint8_t RESERVED_5[200];
  volatile uint8_t DCHPRI3;                            /**< Channel n Priority Register, offset: 0x100 */
  volatile uint8_t DCHPRI2;                            /**< Channel n Priority Register, offset: 0x101 */
  volatile uint8_t DCHPRI1;                            /**< Channel n Priority Register, offset: 0x102 */
  volatile uint8_t DCHPRI0;                            /**< Channel n Priority Register, offset: 0x103 */
  volatile uint8_t DCHPRI7;                            /**< Channel n Priority Register, offset: 0x104 */
  volatile uint8_t DCHPRI6;                            /**< Channel n Priority Register, offset: 0x105 */
  volatile uint8_t DCHPRI5;                            /**< Channel n Priority Register, offset: 0x106 */
  volatile uint8_t DCHPRI4;                            /**< Channel n Priority Register, offset: 0x107 */
  volatile uint8_t DCHPRI11;                           /**< Channel n Priority Register, offset: 0x108 */
  volatile uint8_t DCHPRI10;                           /**< Channel n Priority Register, offset: 0x109 */
  volatile uint8_t DCHPRI9;                            /**< Channel n Priority Register, offset: 0x10A */
  volatile uint8_t DCHPRI8;                            /**< Channel n Priority Register, offset: 0x10B */
  volatile uint8_t DCHPRI15;                           /**< Channel n Priority Register, offset: 0x10C */
  volatile uint8_t DCHPRI14;                           /**< Channel n Priority Register, offset: 0x10D */
  volatile uint8_t DCHPRI13;                           /**< Channel n Priority Register, offset: 0x10E */
  volatile uint8_t DCHPRI12;                           /**< Channel n Priority Register, offset: 0x10F */
       uint8_t RESERVED_6[3824];
  struct {                                         /* offset: 0x1000, array step: 0x20 */
    volatile uint32_t SADDR;                             /**< TCD Source Address, array offset: 0x1000, array step: 0x20 */
    volatile uint16_t SOFF;                              /**< TCD Signed Source Address Offset, array offset: 0x1004, array step: 0x20 */
    volatile uint16_t ATTR;                              /**< TCD Transfer Attributes, array offset: 0x1006, array step: 0x20 */
    union {                                          /* offset: 0x1008, array step: 0x20 */
      volatile uint32_t NBYTES_MLNO;                       /**< TCD Minor Byte Count (Minor Loop Disabled), array offset: 0x1008, array step: 0x20 */
      volatile uint32_t NBYTES_MLOFFNO;                    /**< TCD Signed Minor Loop Offset (Minor Loop Enabled and Offset Disabled), array offset: 0x1008, array step: 0x20 */
      volatile uint32_t NBYTES_MLOFFYES;                   /**< TCD Signed Minor Loop Offset (Minor Loop and Offset Enabled), array offset: 0x1008, array step: 0x20 */
    };
    volatile uint32_t SLAST;                             /**< TCD Last Source Address Adjustment, array offset: 0x100C, array step: 0x20 */
    volatile uint32_t DADDR;                             /**< TCD Destination Address, array offset: 0x1010, array step: 0x20 */
    volatile uint16_t DOFF;                              /**< TCD Signed Destination Address Offset, array offset: 0x1014, array step: 0x20 */
    union {                                          /* offset: 0x1016, array step: 0x20 */
      volatile uint16_t CITER_ELINKNO;                     /**< TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled), array offset: 0x1016, array step: 0x20 */
      volatile uint16_t CITER_ELINKYES;                    /**< TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled), array offset: 0x1016, array step: 0x20 */
    };
    volatile uint32_t DLAST_SGA;                         /**< TCD Last Destination Address Adjustment/Scatter Gather Address, array offset: 0x1018, array step: 0x20 */
    volatile uint16_t CSR;                               /**< TCD Control and Status, array offset: 0x101C, array step: 0x20 */
    union {                                          /* offset: 0x101E, array step: 0x20 */
      volatile uint16_t BITER_ELINKNO;                     /**< TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking Disabled), array offset: 0x101E, array step: 0x20 */
      volatile uint16_t BITER_ELINKYES;                    /**< TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking Enabled), array offset: 0x101E, array step: 0x20 */
    };
  } TCD[16];
} DMA_Type;

/* ----------------------------------------------------------------------------
   -- DMA Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup DMA_Register_Masks DMA Register Masks
 * @{
 */

/* CR Bit Fields */
#line 2537 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* ES Bit Fields */
#line 2563 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* ERQ Bit Fields */
#line 2596 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* EEI Bit Fields */
#line 2629 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CEEI Bit Fields */
#line 2637 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SEEI Bit Fields */
#line 2645 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CERQ Bit Fields */
#line 2653 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SERQ Bit Fields */
#line 2661 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CDNE Bit Fields */
#line 2669 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SSRT Bit Fields */
#line 2677 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CERR Bit Fields */
#line 2685 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CINT Bit Fields */
#line 2693 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* INT Bit Fields */
#line 2726 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* ERR Bit Fields */
#line 2759 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* HRS Bit Fields */
#line 2792 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* DCHPRI3 Bit Fields */
#line 2800 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* DCHPRI2 Bit Fields */
#line 2808 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* DCHPRI1 Bit Fields */
#line 2816 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* DCHPRI0 Bit Fields */
#line 2824 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* DCHPRI7 Bit Fields */
#line 2832 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* DCHPRI6 Bit Fields */
#line 2840 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* DCHPRI5 Bit Fields */
#line 2848 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* DCHPRI4 Bit Fields */
#line 2856 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* DCHPRI11 Bit Fields */
#line 2864 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* DCHPRI10 Bit Fields */
#line 2872 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* DCHPRI9 Bit Fields */
#line 2880 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* DCHPRI8 Bit Fields */
#line 2888 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* DCHPRI15 Bit Fields */
#line 2896 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* DCHPRI14 Bit Fields */
#line 2904 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* DCHPRI13 Bit Fields */
#line 2912 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* DCHPRI12 Bit Fields */
#line 2920 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SADDR Bit Fields */



/* SOFF Bit Fields */



/* ATTR Bit Fields */
#line 2941 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* NBYTES_MLNO Bit Fields */



/* NBYTES_MLOFFNO Bit Fields */
#line 2953 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* NBYTES_MLOFFYES Bit Fields */
#line 2964 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SLAST Bit Fields */



/* DADDR Bit Fields */



/* DOFF Bit Fields */



/* CITER_ELINKNO Bit Fields */





/* CITER_ELINKYES Bit Fields */
#line 2991 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* DLAST_SGA Bit Fields */



/* CSR Bit Fields */
#line 3018 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* BITER_ELINKNO Bit Fields */





/* BITER_ELINKYES Bit Fields */
#line 3033 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"

/**
 * @}
 */ /* end of group DMA_Register_Masks */


/* DMA - Peripheral instance base addresses */
/** Peripheral DMA base address */

/** Peripheral DMA base pointer */

/** Array initializer of DMA peripheral base pointers */


/**
 * @}
 */ /* end of group DMA_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- DMAMUX Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup DMAMUX_Peripheral_Access_Layer DMAMUX Peripheral Access Layer
 * @{
 */

/** DMAMUX - Register Layout Typedef */
typedef struct {
  volatile uint8_t CHCFG[16];                          /**< Channel Configuration register, array offset: 0x0, array step: 0x1 */
} DMAMUX_Type;

/* ----------------------------------------------------------------------------
   -- DMAMUX Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup DMAMUX_Register_Masks DMAMUX Register Masks
 * @{
 */

/* CHCFG Bit Fields */
#line 3083 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"

/**
 * @}
 */ /* end of group DMAMUX_Register_Masks */


/* DMAMUX - Peripheral instance base addresses */
/** Peripheral DMAMUX base address */

/** Peripheral DMAMUX base pointer */

/** Array initializer of DMAMUX peripheral base pointers */


/**
 * @}
 */ /* end of group DMAMUX_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- ENET Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup ENET_Peripheral_Access_Layer ENET Peripheral Access Layer
 * @{
 */

/** ENET - Register Layout Typedef */
typedef struct {
       uint8_t RESERVED_0[4];
  volatile uint32_t EIR;                               /**< Interrupt Event Register, offset: 0x4 */
  volatile uint32_t EIMR;                              /**< Interrupt Mask Register, offset: 0x8 */
       uint8_t RESERVED_1[4];
  volatile uint32_t RDAR;                              /**< Receive Descriptor Active Register, offset: 0x10 */
  volatile uint32_t TDAR;                              /**< Transmit Descriptor Active Register, offset: 0x14 */
       uint8_t RESERVED_2[12];
  volatile uint32_t ECR;                               /**< Ethernet Control Register, offset: 0x24 */
       uint8_t RESERVED_3[24];
  volatile uint32_t MMFR;                              /**< MII Management Frame Register, offset: 0x40 */
  volatile uint32_t MSCR;                              /**< MII Speed Control Register, offset: 0x44 */
       uint8_t RESERVED_4[28];
  volatile uint32_t MIBC;                              /**< MIB Control Register, offset: 0x64 */
       uint8_t RESERVED_5[28];
  volatile uint32_t RCR;                               /**< Receive Control Register, offset: 0x84 */
       uint8_t RESERVED_6[60];
  volatile uint32_t TCR;                               /**< Transmit Control Register, offset: 0xC4 */
       uint8_t RESERVED_7[28];
  volatile uint32_t PALR;                              /**< Physical Address Lower Register, offset: 0xE4 */
  volatile uint32_t PAUR;                              /**< Physical Address Upper Register, offset: 0xE8 */
  volatile uint32_t OPD;                               /**< Opcode/Pause Duration Register, offset: 0xEC */
       uint8_t RESERVED_8[40];
  volatile uint32_t IAUR;                              /**< Descriptor Individual Upper Address Register, offset: 0x118 */
  volatile uint32_t IALR;                              /**< Descriptor Individual Lower Address Register, offset: 0x11C */
  volatile uint32_t GAUR;                              /**< Descriptor Group Upper Address Register, offset: 0x120 */
  volatile uint32_t GALR;                              /**< Descriptor Group Lower Address Register, offset: 0x124 */
       uint8_t RESERVED_9[28];
  volatile uint32_t TFWR;                              /**< Transmit FIFO Watermark Register, offset: 0x144 */
       uint8_t RESERVED_10[56];
  volatile uint32_t RDSR;                              /**< Receive Descriptor Ring Start Register, offset: 0x180 */
  volatile uint32_t TDSR;                              /**< Transmit Buffer Descriptor Ring Start Register, offset: 0x184 */
  volatile uint32_t MRBR;                              /**< Maximum Receive Buffer Size Register, offset: 0x188 */
       uint8_t RESERVED_11[4];
  volatile uint32_t RSFL;                              /**< Receive FIFO Section Full Threshold, offset: 0x190 */
  volatile uint32_t RSEM;                              /**< Receive FIFO Section Empty Threshold, offset: 0x194 */
  volatile uint32_t RAEM;                              /**< Receive FIFO Almost Empty Threshold, offset: 0x198 */
  volatile uint32_t RAFL;                              /**< Receive FIFO Almost Full Threshold, offset: 0x19C */
  volatile uint32_t TSEM;                              /**< Transmit FIFO Section Empty Threshold, offset: 0x1A0 */
  volatile uint32_t TAEM;                              /**< Transmit FIFO Almost Empty Threshold, offset: 0x1A4 */
  volatile uint32_t TAFL;                              /**< Transmit FIFO Almost Full Threshold, offset: 0x1A8 */
  volatile uint32_t TIPG;                              /**< Transmit Inter-Packet Gap, offset: 0x1AC */
  volatile uint32_t FTRL;                              /**< Frame Truncation Length, offset: 0x1B0 */
       uint8_t RESERVED_12[12];
  volatile uint32_t TACC;                              /**< Transmit Accelerator Function Configuration, offset: 0x1C0 */
  volatile uint32_t RACC;                              /**< Receive Accelerator Function Configuration, offset: 0x1C4 */
       uint8_t RESERVED_13[56];
  volatile uint32_t RMON_T_DROP;                       /**< Count of frames not counted correctly (RMON_T_DROP). NOTE: Counter not implemented (read 0 always) as not applicable., offset: 0x200 */
  volatile uint32_t RMON_T_PACKETS;                    /**< RMON Tx packet count (RMON_T_PACKETS), offset: 0x204 */
  volatile uint32_t RMON_T_BC_PKT;                     /**< RMON Tx Broadcast Packets (RMON_T_BC_PKT), offset: 0x208 */
  volatile uint32_t RMON_T_MC_PKT;                     /**< RMON Tx Multicast Packets (RMON_T_MC_PKT), offset: 0x20C */
  volatile uint32_t RMON_T_CRC_ALIGN;                  /**< RMON Tx Packets w CRC/Align error (RMON_T_CRC_ALIGN), offset: 0x210 */
  volatile uint32_t RMON_T_UNDERSIZE;                  /**< RMON Tx Packets < 64 bytes, good CRC (RMON_T_UNDERSIZE), offset: 0x214 */
  volatile uint32_t RMON_T_OVERSIZE;                   /**< RMON Tx Packets > MAX_FL bytes, good CRC (RMON_T_OVERSIZE), offset: 0x218 */
  volatile uint32_t RMON_T_FRAG;                       /**< RMON Tx Packets < 64 bytes, bad CRC (RMON_T_FRAG), offset: 0x21C */
  volatile uint32_t RMON_T_JAB;                        /**< RMON Tx Packets > MAX_FL bytes, bad CRC (RMON_T_JAB), offset: 0x220 */
  volatile uint32_t RMON_T_COL;                        /**< RMON Tx collision count (RMON_T_COL), offset: 0x224 */
  volatile uint32_t RMON_T_P64;                        /**< RMON Tx 64 byte packets (RMON_T_P64), offset: 0x228 */
  volatile uint32_t RMON_T_P65TO127;                   /**< RMON Tx 65 to 127 byte packets (RMON_T_P65TO127), offset: 0x22C */
  volatile uint32_t RMON_T_P128TO255;                  /**< RMON Tx 128 to 255 byte packets (RMON_T_P128TO255), offset: 0x230 */
  volatile uint32_t RMON_T_P256TO511;                  /**< RMON Tx 256 to 511 byte packets (RMON_T_P256TO511), offset: 0x234 */
  volatile uint32_t RMON_T_P512TO1023;                 /**< RMON Tx 512 to 1023 byte packets (RMON_T_P512TO1023), offset: 0x238 */
  volatile uint32_t RMON_T_P1024TO2047;                /**< RMON Tx 1024 to 2047 byte packets (RMON_T_P1024TO2047), offset: 0x23C */
  volatile uint32_t RMON_T_P_GTE2048;                  /**< RMON Tx packets w > 2048 bytes (RMON_T_P_GTE2048), offset: 0x240 */
  volatile uint32_t RMON_T_OCTETS;                     /**< RMON Tx Octets (RMON_T_OCTETS), offset: 0x244 */
  volatile uint32_t IEEE_T_DROP;                       /**< Count of frames not counted correctly (IEEE_T_DROP). NOTE: Counter not implemented (read 0 always) as not applicable., offset: 0x248 */
  volatile uint32_t IEEE_T_FRAME_OK;                   /**< Frames Transmitted OK (IEEE_T_FRAME_OK), offset: 0x24C */
  volatile uint32_t IEEE_T_1COL;                       /**< Frames Transmitted with Single Collision (IEEE_T_1COL), offset: 0x250 */
  volatile uint32_t IEEE_T_MCOL;                       /**< Frames Transmitted with Multiple Collisions (IEEE_T_MCOL), offset: 0x254 */
  volatile uint32_t IEEE_T_DEF;                        /**< Frames Transmitted after Deferral Delay (IEEE_T_DEF), offset: 0x258 */
  volatile uint32_t IEEE_T_LCOL;                       /**< Frames Transmitted with Late Collision (IEEE_T_LCOL), offset: 0x25C */
  volatile uint32_t IEEE_T_EXCOL;                      /**< Frames Transmitted with Excessive Collisions (IEEE_T_EXCOL), offset: 0x260 */
  volatile uint32_t IEEE_T_MACERR;                     /**< Frames Transmitted with Tx FIFO Underrun (IEEE_T_MACERR), offset: 0x264 */
  volatile uint32_t IEEE_T_CSERR;                      /**< Frames Transmitted with Carrier Sense Error (IEEE_T_CSERR), offset: 0x268 */
  volatile uint32_t IEEE_T_SQE;                        /**< Frames Transmitted with SQE Error (IEEE_T_SQE). NOTE: Counter not implemented (read 0 always) as no SQE information is available., offset: 0x26C */
  volatile uint32_t IEEE_T_FDXFC;                      /**< Flow Control Pause frames transmitted (IEEE_T_FDXFC), offset: 0x270 */
  volatile uint32_t IEEE_T_OCTETS_OK;                  /**< Octet count for Frames Transmitted w/o Error (IEEE_T_OCTETS_OK). NOTE: Counts total octets (includes header and FCS fields)., offset: 0x274 */
       uint8_t RESERVED_14[12];
  volatile uint32_t RMON_R_PACKETS;                    /**< RMON Rx packet count (RMON_R_PACKETS), offset: 0x284 */
  volatile uint32_t RMON_R_BC_PKT;                     /**< RMON Rx Broadcast Packets (RMON_R_BC_PKT), offset: 0x288 */
  volatile uint32_t RMON_R_MC_PKT;                     /**< RMON Rx Multicast Packets (RMON_R_MC_PKT), offset: 0x28C */
  volatile uint32_t RMON_R_CRC_ALIGN;                  /**< RMON Rx Packets w CRC/Align error (RMON_R_CRC_ALIGN), offset: 0x290 */
  volatile uint32_t RMON_R_UNDERSIZE;                  /**< RMON Rx Packets < 64 bytes, good CRC (RMON_R_UNDERSIZE), offset: 0x294 */
  volatile uint32_t RMON_R_OVERSIZE;                   /**< RMON Rx Packets > MAX_FL bytes, good CRC (RMON_R_OVERSIZE), offset: 0x298 */
  volatile uint32_t RMON_R_FRAG;                       /**< RMON Rx Packets < 64 bytes, bad CRC (RMON_R_FRAG), offset: 0x29C */
  volatile uint32_t RMON_R_JAB;                        /**< RMON Rx Packets > MAX_FL bytes, bad CRC (RMON_R_JAB), offset: 0x2A0 */
  volatile uint32_t RMON_R_RESVD_0;                    /**< Reserved (RMON_R_RESVD_0), offset: 0x2A4 */
  volatile uint32_t RMON_R_P64;                        /**< RMON Rx 64 byte packets (RMON_R_P64), offset: 0x2A8 */
  volatile uint32_t RMON_R_P65TO127;                   /**< RMON Rx 65 to 127 byte packets (RMON_R_P65TO127), offset: 0x2AC */
  volatile uint32_t RMON_R_P128TO255;                  /**< RMON Rx 128 to 255 byte packets (RMON_R_P128TO255), offset: 0x2B0 */
  volatile uint32_t RMON_R_P256TO511;                  /**< RMON Rx 256 to 511 byte packets (RMON_R_P256TO511), offset: 0x2B4 */
  volatile uint32_t RMON_R_P512TO1023;                 /**< RMON Rx 512 to 1023 byte packets (RMON_R_P512TO1023), offset: 0x2B8 */
  volatile uint32_t RMON_R_P1024TO2047;                /**< RMON Rx 1024 to 2047 byte packets (RMON_R_P1024TO2047), offset: 0x2BC */
  volatile uint32_t RMON_R_P_GTE2048;                  /**< RMON Rx packets w > 2048 bytes (RMON_R_P_GTE2048), offset: 0x2C0 */
  volatile uint32_t RMON_R_OCTETS;                     /**< RMON Rx Octets (RMON_R_OCTETS), offset: 0x2C4 */
  volatile uint32_t RMON_R_DROP;                       /**< Count of frames not counted correctly (IEEE_R_DROP). NOTE: Counter increments if a frame with valid/missing SFD character is detected and has been dropped. None of the other counters increments if this counter increments., offset: 0x2C8 */
  volatile uint32_t RMON_R_FRAME_OK;                   /**< Frames Received OK (IEEE_R_FRAME_OK), offset: 0x2CC */
  volatile uint32_t IEEE_R_CRC;                        /**< Frames Received with CRC Error (IEEE_R_CRC), offset: 0x2D0 */
  volatile uint32_t IEEE_R_ALIGN;                      /**< Frames Received with Alignment Error (IEEE_R_ALIGN), offset: 0x2D4 */
  volatile uint32_t IEEE_R_MACERR;                     /**< Receive Fifo Overflow count (IEEE_R_MACERR), offset: 0x2D8 */
  volatile uint32_t IEEE_R_FDXFC;                      /**< Flow Control Pause frames received (IEEE_R_FDXFC), offset: 0x2DC */
  volatile uint32_t IEEE_R_OCTETS_OK;                  /**< Octet count for Frames Rcvd w/o Error (IEEE_R_OCTETS_OK). Counts total octets (includes header and FCS fields)., offset: 0x2E0 */
       uint8_t RESERVED_15[284];
  volatile uint32_t ATCR;                              /**< Timer Control Register, offset: 0x400 */
  volatile uint32_t ATVR;                              /**< Timer Value Register, offset: 0x404 */
  volatile uint32_t ATOFF;                             /**< Timer Offset Register, offset: 0x408 */
  volatile uint32_t ATPER;                             /**< Timer Period Register, offset: 0x40C */
  volatile uint32_t ATCOR;                             /**< Timer Correction Register, offset: 0x410 */
  volatile uint32_t ATINC;                             /**< Time-Stamping Clock Period Register, offset: 0x414 */
  volatile uint32_t ATSTMP;                            /**< Timestamp of Last Transmitted Frame, offset: 0x418 */
       uint8_t RESERVED_16[488];
  volatile uint32_t TGSR;                              /**< Timer Global Status Register, offset: 0x604 */
  struct {                                         /* offset: 0x608, array step: 0x8 */
    volatile uint32_t TCSR;                              /**< Timer Control Status Register, array offset: 0x608, array step: 0x8 */
    volatile uint32_t TCCR;                              /**< Timer Compare Capture Register, array offset: 0x60C, array step: 0x8 */
  } CHANNEL[4];
} ENET_Type;

/* ----------------------------------------------------------------------------
   -- ENET Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup ENET_Register_Masks ENET Register Masks
 * @{
 */

/* EIR Bit Fields */
#line 3272 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* EIMR Bit Fields */
#line 3305 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* RDAR Bit Fields */


/* TDAR Bit Fields */


/* ECR Bit Fields */
#line 3328 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* MMFR Bit Fields */
#line 3347 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* MSCR Bit Fields */
#line 3356 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* MIBC Bit Fields */
#line 3363 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* RCR Bit Fields */
#line 3395 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* TCR Bit Fields */
#line 3411 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PALR Bit Fields */



/* PAUR Bit Fields */
#line 3422 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* OPD Bit Fields */
#line 3429 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* IAUR Bit Fields */



/* IALR Bit Fields */



/* GAUR Bit Fields */



/* GALR Bit Fields */



/* TFWR Bit Fields */





/* RDSR Bit Fields */



/* TDSR Bit Fields */



/* MRBR Bit Fields */



/* RSFL Bit Fields */



/* RSEM Bit Fields */



/* RAEM Bit Fields */



/* RAFL Bit Fields */



/* TSEM Bit Fields */



/* TAEM Bit Fields */



/* TAFL Bit Fields */



/* TIPG Bit Fields */



/* FTRL Bit Fields */



/* TACC Bit Fields */
#line 3506 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* RACC Bit Fields */
#line 3517 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* ATCR Bit Fields */
#line 3534 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* ATVR Bit Fields */



/* ATOFF Bit Fields */



/* ATPER Bit Fields */



/* ATCOR Bit Fields */



/* ATINC Bit Fields */
#line 3557 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* ATSTMP Bit Fields */



/* TGSR Bit Fields */
#line 3570 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* TCSR Bit Fields */
#line 3580 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* TCCR Bit Fields */




/**
 * @}
 */ /* end of group ENET_Register_Masks */


/* ENET - Peripheral instance base addresses */
/** Peripheral ENET base address */

/** Peripheral ENET base pointer */

/** Array initializer of ENET peripheral base pointers */


/**
 * @}
 */ /* end of group ENET_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- EWM Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup EWM_Peripheral_Access_Layer EWM Peripheral Access Layer
 * @{
 */

/** EWM - Register Layout Typedef */
typedef struct {
  volatile uint8_t CTRL;                               /**< Control Register, offset: 0x0 */
  volatile  uint8_t SERV;                               /**< Service Register, offset: 0x1 */
  volatile uint8_t CMPL;                               /**< Compare Low Register, offset: 0x2 */
  volatile uint8_t CMPH;                               /**< Compare High Register, offset: 0x3 */
       uint8_t RESERVED_0[1];
  volatile uint8_t CLKPRESCALER;                       /**< Clock Prescaler Register, offset: 0x5 */
} EWM_Type;

/* ----------------------------------------------------------------------------
   -- EWM Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup EWM_Register_Masks EWM Register Masks
 * @{
 */

/* CTRL Bit Fields */
#line 3640 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SERV Bit Fields */



/* CMPL Bit Fields */



/* CMPH Bit Fields */



/* CLKPRESCALER Bit Fields */




/**
 * @}
 */ /* end of group EWM_Register_Masks */


/* EWM - Peripheral instance base addresses */
/** Peripheral EWM base address */

/** Peripheral EWM base pointer */

/** Array initializer of EWM peripheral base pointers */


/**
 * @}
 */ /* end of group EWM_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- FB Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup FB_Peripheral_Access_Layer FB Peripheral Access Layer
 * @{
 */

/** FB - Register Layout Typedef */
typedef struct {
  struct {                                         /* offset: 0x0, array step: 0xC */
    volatile uint32_t CSAR;                              /**< Chip Select Address Register, array offset: 0x0, array step: 0xC */
    volatile uint32_t CSMR;                              /**< Chip Select Mask Register, array offset: 0x4, array step: 0xC */
    volatile uint32_t CSCR;                              /**< Chip Select Control Register, array offset: 0x8, array step: 0xC */
  } CS[6];
       uint8_t RESERVED_0[24];
  volatile uint32_t CSPMCR;                            /**< Chip Select port Multiplexing Control Register, offset: 0x60 */
} FB_Type;

/* ----------------------------------------------------------------------------
   -- FB Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup FB_Register_Masks FB Register Masks
 * @{
 */

/* CSAR Bit Fields */



/* CSMR Bit Fields */
#line 3716 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CSCR Bit Fields */
#line 3749 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CSPMCR Bit Fields */
#line 3765 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"

/**
 * @}
 */ /* end of group FB_Register_Masks */


/* FB - Peripheral instance base addresses */
/** Peripheral FB base address */

/** Peripheral FB base pointer */

/** Array initializer of FB peripheral base pointers */


/**
 * @}
 */ /* end of group FB_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- FMC Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup FMC_Peripheral_Access_Layer FMC Peripheral Access Layer
 * @{
 */

/** FMC - Register Layout Typedef */
typedef struct {
  volatile uint32_t PFAPR;                             /**< Flash Access Protection Register, offset: 0x0 */
  volatile uint32_t PFB0CR;                            /**< Flash Bank 0 Control Register, offset: 0x4 */
  volatile uint32_t PFB1CR;                            /**< Flash Bank 1 Control Register, offset: 0x8 */
       uint8_t RESERVED_0[244];
  volatile uint32_t TAGVD[4][8];                       /**< Cache Tag Storage, array offset: 0x100, array step: index*0x20, index2*0x4 */
       uint8_t RESERVED_1[128];
  struct {                                         /* offset: 0x200, array step: index*0x40, index2*0x8 */
    volatile uint32_t DATA_U;                            /**< Cache Data Storage (upper word), array offset: 0x200, array step: index*0x40, index2*0x8 */
    volatile uint32_t DATA_L;                            /**< Cache Data Storage (lower word), array offset: 0x204, array step: index*0x40, index2*0x8 */
  } SET[4][8];
} FMC_Type;

/* ----------------------------------------------------------------------------
   -- FMC Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup FMC_Register_Masks FMC Register Masks
 * @{
 */

/* PFAPR Bit Fields */
#line 3857 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PFB0CR Bit Fields */
#line 3885 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PFB1CR Bit Fields */
#line 3902 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* TAGVD Bit Fields */





/* DATA_U Bit Fields */



/* DATA_L Bit Fields */




/**
 * @}
 */ /* end of group FMC_Register_Masks */


/* FMC - Peripheral instance base addresses */
/** Peripheral FMC base address */

/** Peripheral FMC base pointer */

/** Array initializer of FMC peripheral base pointers */


/**
 * @}
 */ /* end of group FMC_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- FTFL Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup FTFL_Peripheral_Access_Layer FTFL Peripheral Access Layer
 * @{
 */

/** FTFL - Register Layout Typedef */
typedef struct {
  volatile uint8_t FSTAT;                              /**< Flash Status Register, offset: 0x0 */
  volatile uint8_t FCNFG;                              /**< Flash Configuration Register, offset: 0x1 */
  volatile const  uint8_t FSEC;                               /**< Flash Security Register, offset: 0x2 */
  volatile const  uint8_t FOPT;                               /**< Flash Option Register, offset: 0x3 */
  volatile uint8_t FCCOB3;                             /**< Flash Common Command Object Registers, offset: 0x4 */
  volatile uint8_t FCCOB2;                             /**< Flash Common Command Object Registers, offset: 0x5 */
  volatile uint8_t FCCOB1;                             /**< Flash Common Command Object Registers, offset: 0x6 */
  volatile uint8_t FCCOB0;                             /**< Flash Common Command Object Registers, offset: 0x7 */
  volatile uint8_t FCCOB7;                             /**< Flash Common Command Object Registers, offset: 0x8 */
  volatile uint8_t FCCOB6;                             /**< Flash Common Command Object Registers, offset: 0x9 */
  volatile uint8_t FCCOB5;                             /**< Flash Common Command Object Registers, offset: 0xA */
  volatile uint8_t FCCOB4;                             /**< Flash Common Command Object Registers, offset: 0xB */
  volatile uint8_t FCCOBB;                             /**< Flash Common Command Object Registers, offset: 0xC */
  volatile uint8_t FCCOBA;                             /**< Flash Common Command Object Registers, offset: 0xD */
  volatile uint8_t FCCOB9;                             /**< Flash Common Command Object Registers, offset: 0xE */
  volatile uint8_t FCCOB8;                             /**< Flash Common Command Object Registers, offset: 0xF */
  volatile uint8_t FPROT3;                             /**< Program Flash Protection Registers, offset: 0x10 */
  volatile uint8_t FPROT2;                             /**< Program Flash Protection Registers, offset: 0x11 */
  volatile uint8_t FPROT1;                             /**< Program Flash Protection Registers, offset: 0x12 */
  volatile uint8_t FPROT0;                             /**< Program Flash Protection Registers, offset: 0x13 */
       uint8_t RESERVED_0[2];
  volatile uint8_t FEPROT;                             /**< EEPROM Protection Register, offset: 0x16 */
  volatile uint8_t FDPROT;                             /**< Data Flash Protection Register, offset: 0x17 */
} FTFL_Type;

/* ----------------------------------------------------------------------------
   -- FTFL Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup FTFL_Register_Masks FTFL Register Masks
 * @{
 */

/* FSTAT Bit Fields */
#line 3991 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* FCNFG Bit Fields */
#line 4008 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* FSEC Bit Fields */
#line 4021 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* FOPT Bit Fields */



/* FCCOB3 Bit Fields */



/* FCCOB2 Bit Fields */



/* FCCOB1 Bit Fields */



/* FCCOB0 Bit Fields */



/* FCCOB7 Bit Fields */



/* FCCOB6 Bit Fields */



/* FCCOB5 Bit Fields */



/* FCCOB4 Bit Fields */



/* FCCOBB Bit Fields */



/* FCCOBA Bit Fields */



/* FCCOB9 Bit Fields */



/* FCCOB8 Bit Fields */



/* FPROT3 Bit Fields */



/* FPROT2 Bit Fields */



/* FPROT1 Bit Fields */



/* FPROT0 Bit Fields */



/* FEPROT Bit Fields */



/* FDPROT Bit Fields */




/**
 * @}
 */ /* end of group FTFL_Register_Masks */


/* FTFL - Peripheral instance base addresses */
/** Peripheral FTFL base address */

/** Peripheral FTFL base pointer */

/** Array initializer of FTFL peripheral base pointers */


/**
 * @}
 */ /* end of group FTFL_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- FTM Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup FTM_Peripheral_Access_Layer FTM Peripheral Access Layer
 * @{
 */

/** FTM - Register Layout Typedef */
typedef struct {
  volatile uint32_t SC;                                /**< Status And Control, offset: 0x0 */
  volatile uint32_t CNT;                               /**< Counter, offset: 0x4 */
  volatile uint32_t MOD;                               /**< Modulo, offset: 0x8 */
  struct {                                         /* offset: 0xC, array step: 0x8 */
    volatile uint32_t CnSC;                              /**< Channel (n) Status And Control, array offset: 0xC, array step: 0x8 */
    volatile uint32_t CnV;                               /**< Channel (n) Value, array offset: 0x10, array step: 0x8 */
  } CONTROLS[8];
  volatile uint32_t CNTIN;                             /**< Counter Initial Value, offset: 0x4C */
  volatile const  uint32_t STATUS;                            /**< Capture And Compare Status, offset: 0x50 */
  volatile uint32_t MODE;                              /**< Features Mode Selection, offset: 0x54 */
  volatile uint32_t SYNC;                              /**< Synchronization, offset: 0x58 */
  volatile uint32_t OUTINIT;                           /**< Initial State For Channels Output, offset: 0x5C */
  volatile uint32_t OUTMASK;                           /**< Output Mask, offset: 0x60 */
  volatile uint32_t COMBINE;                           /**< Function For Linked Channels, offset: 0x64 */
  volatile uint32_t DEADTIME;                          /**< Deadtime Insertion Control, offset: 0x68 */
  volatile uint32_t EXTTRIG;                           /**< FTM External Trigger, offset: 0x6C */
  volatile uint32_t POL;                               /**< Channels Polarity, offset: 0x70 */
  volatile uint32_t FMS;                               /**< Fault Mode Status, offset: 0x74 */
  volatile uint32_t FILTER;                            /**< Input Capture Filter Control, offset: 0x78 */
  volatile uint32_t FLTCTRL;                           /**< Fault Control, offset: 0x7C */
  volatile uint32_t QDCTRL;                            /**< Quadrature Decoder Control And Status, offset: 0x80 */
  volatile uint32_t CONF;                              /**< Configuration, offset: 0x84 */
  volatile uint32_t FLTPOL;                            /**< FTM Fault Input Polarity, offset: 0x88 */
  volatile uint32_t SYNCONF;                           /**< Synchronization Configuration, offset: 0x8C */
  volatile uint32_t INVCTRL;                           /**< FTM Inverting Control, offset: 0x90 */
  volatile uint32_t SWOCTRL;                           /**< FTM Software Output Control, offset: 0x94 */
  volatile uint32_t PWMLOAD;                           /**< FTM PWM Load, offset: 0x98 */
} FTM_Type;

/* ----------------------------------------------------------------------------
   -- FTM Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup FTM_Register_Masks FTM Register Masks
 * @{
 */

/* SC Bit Fields */
#line 4178 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CNT Bit Fields */



/* MOD Bit Fields */



/* CnSC Bit Fields */
#line 4201 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CnV Bit Fields */



/* CNTIN Bit Fields */



/* STATUS Bit Fields */
#line 4226 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* MODE Bit Fields */
#line 4242 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SYNC Bit Fields */
#line 4259 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* OUTINIT Bit Fields */
#line 4276 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* OUTMASK Bit Fields */
#line 4293 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* COMBINE Bit Fields */
#line 4350 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* DEADTIME Bit Fields */
#line 4357 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* EXTTRIG Bit Fields */
#line 4374 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* POL Bit Fields */
#line 4391 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* FMS Bit Fields */
#line 4406 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* FILTER Bit Fields */
#line 4419 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* FLTCTRL Bit Fields */
#line 4439 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* QDCTRL Bit Fields */
#line 4456 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CONF Bit Fields */
#line 4467 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* FLTPOL Bit Fields */
#line 4476 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SYNCONF Bit Fields */
#line 4507 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* INVCTRL Bit Fields */
#line 4516 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SWOCTRL Bit Fields */
#line 4549 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PWMLOAD Bit Fields */
#line 4568 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"

/**
 * @}
 */ /* end of group FTM_Register_Masks */


/* FTM - Peripheral instance base addresses */
/** Peripheral FTM0 base address */

/** Peripheral FTM0 base pointer */

/** Peripheral FTM1 base address */

/** Peripheral FTM1 base pointer */

/** Peripheral FTM2 base address */

/** Peripheral FTM2 base pointer */

/** Array initializer of FTM peripheral base pointers */


/**
 * @}
 */ /* end of group FTM_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- GPIO Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup GPIO_Peripheral_Access_Layer GPIO Peripheral Access Layer
 * @{
 */

/** GPIO - Register Layout Typedef */
typedef struct {
  volatile uint32_t PDOR;                              /**< Port Data Output Register, offset: 0x0 */
  volatile  uint32_t PSOR;                              /**< Port Set Output Register, offset: 0x4 */
  volatile  uint32_t PCOR;                              /**< Port Clear Output Register, offset: 0x8 */
  volatile  uint32_t PTOR;                              /**< Port Toggle Output Register, offset: 0xC */
  volatile const  uint32_t PDIR;                              /**< Port Data Input Register, offset: 0x10 */
  volatile uint32_t PDDR;                              /**< Port Data Direction Register, offset: 0x14 */
} GPIO_Type;

/* ----------------------------------------------------------------------------
   -- GPIO Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup GPIO_Register_Masks GPIO Register Masks
 * @{
 */

/* PDOR Bit Fields */



/* PSOR Bit Fields */



/* PCOR Bit Fields */



/* PTOR Bit Fields */



/* PDIR Bit Fields */



/* PDDR Bit Fields */




/**
 * @}
 */ /* end of group GPIO_Register_Masks */


/* GPIO - Peripheral instance base addresses */
/** Peripheral PTA base address */

/** Peripheral PTA base pointer */

/** Peripheral PTB base address */

/** Peripheral PTB base pointer */

/** Peripheral PTC base address */

/** Peripheral PTC base pointer */

/** Peripheral PTD base address */

/** Peripheral PTD base pointer */

/** Peripheral PTE base address */

/** Peripheral PTE base pointer */

/** Array initializer of GPIO peripheral base pointers */


/**
 * @}
 */ /* end of group GPIO_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- I2C Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup I2C_Peripheral_Access_Layer I2C Peripheral Access Layer
 * @{
 */

/** I2C - Register Layout Typedef */
typedef struct {
  volatile uint8_t A1;                                 /**< I2C Address Register 1, offset: 0x0 */
  volatile uint8_t F;                                  /**< I2C Frequency Divider register, offset: 0x1 */
  volatile uint8_t C1;                                 /**< I2C Control Register 1, offset: 0x2 */
  volatile uint8_t S;                                  /**< I2C Status register, offset: 0x3 */
  volatile uint8_t D;                                  /**< I2C Data I/O register, offset: 0x4 */
  volatile uint8_t C2;                                 /**< I2C Control Register 2, offset: 0x5 */
  volatile uint8_t FLT;                                /**< I2C Programmable Input Glitch Filter register, offset: 0x6 */
  volatile uint8_t RA;                                 /**< I2C Range Address register, offset: 0x7 */
  volatile uint8_t SMB;                                /**< I2C SMBus Control and Status register, offset: 0x8 */
  volatile uint8_t A2;                                 /**< I2C Address Register 2, offset: 0x9 */
  volatile uint8_t SLTH;                               /**< I2C SCL Low Timeout Register High, offset: 0xA */
  volatile uint8_t SLTL;                               /**< I2C SCL Low Timeout Register Low, offset: 0xB */
} I2C_Type;

/* ----------------------------------------------------------------------------
   -- I2C Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup I2C_Register_Masks I2C Register Masks
 * @{
 */

/* A1 Bit Fields */



/* F Bit Fields */
#line 4727 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* C1 Bit Fields */
#line 4744 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* S Bit Fields */
#line 4761 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* D Bit Fields */



/* C2 Bit Fields */
#line 4779 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* FLT Bit Fields */



/* RA Bit Fields */



/* SMB Bit Fields */
#line 4804 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* A2 Bit Fields */



/* SLTH Bit Fields */



/* SLTL Bit Fields */




/**
 * @}
 */ /* end of group I2C_Register_Masks */


/* I2C - Peripheral instance base addresses */
/** Peripheral I2C0 base address */

/** Peripheral I2C0 base pointer */

/** Peripheral I2C1 base address */

/** Peripheral I2C1 base pointer */

/** Array initializer of I2C peripheral base pointers */


/**
 * @}
 */ /* end of group I2C_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- I2S Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup I2S_Peripheral_Access_Layer I2S Peripheral Access Layer
 * @{
 */

/** I2S - Register Layout Typedef */
typedef struct {
  volatile uint32_t TCSR;                              /**< SAI Transmit Control Register, offset: 0x0 */
  volatile uint32_t TCR1;                              /**< SAI Transmit Configuration 1 Register, offset: 0x4 */
  volatile uint32_t TCR2;                              /**< SAI Transmit Configuration 2 Register, offset: 0x8 */
  volatile uint32_t TCR3;                              /**< SAI Transmit Configuration 3 Register, offset: 0xC */
  volatile uint32_t TCR4;                              /**< SAI Transmit Configuration 4 Register, offset: 0x10 */
  volatile uint32_t TCR5;                              /**< SAI Transmit Configuration 5 Register, offset: 0x14 */
       uint8_t RESERVED_0[8];
  volatile  uint32_t TDR[2];                            /**< SAI Transmit Data Register, array offset: 0x20, array step: 0x4 */
       uint8_t RESERVED_1[24];
  volatile const  uint32_t TFR[2];                            /**< SAI Transmit FIFO Register, array offset: 0x40, array step: 0x4 */
       uint8_t RESERVED_2[24];
  volatile uint32_t TMR;                               /**< SAI Transmit Mask Register, offset: 0x60 */
       uint8_t RESERVED_3[28];
  volatile uint32_t RCSR;                              /**< SAI Receive Control Register, offset: 0x80 */
  volatile uint32_t RCR1;                              /**< SAI Receive Configuration 1 Register, offset: 0x84 */
  volatile uint32_t RCR2;                              /**< SAI Receive Configuration 2 Register, offset: 0x88 */
  volatile uint32_t RCR3;                              /**< SAI Receive Configuration 3 Register, offset: 0x8C */
  volatile uint32_t RCR4;                              /**< SAI Receive Configuration 4 Register, offset: 0x90 */
  volatile uint32_t RCR5;                              /**< SAI Receive Configuration 5 Register, offset: 0x94 */
       uint8_t RESERVED_4[8];
  volatile const  uint32_t RDR[2];                            /**< SAI Receive Data Register, array offset: 0xA0, array step: 0x4 */
       uint8_t RESERVED_5[24];
  volatile const  uint32_t RFR[2];                            /**< SAI Receive FIFO Register, array offset: 0xC0, array step: 0x4 */
       uint8_t RESERVED_6[24];
  volatile uint32_t RMR;                               /**< SAI Receive Mask Register, offset: 0xE0 */
       uint8_t RESERVED_7[28];
  volatile uint32_t MCR;                               /**< SAI MCLK Control Register, offset: 0x100 */
  volatile uint32_t MDR;                               /**< SAI MCLK Divide Register, offset: 0x104 */
} I2S_Type;

/* ----------------------------------------------------------------------------
   -- I2S Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup I2S_Register_Masks I2S Register Masks
 * @{
 */

/* TCSR Bit Fields */
#line 4926 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* TCR1 Bit Fields */



/* TCR2 Bit Fields */
#line 4948 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* TCR3 Bit Fields */
#line 4955 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* TCR4 Bit Fields */
#line 4970 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* TCR5 Bit Fields */
#line 4980 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* TDR Bit Fields */



/* TFR Bit Fields */
#line 4991 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* TMR Bit Fields */



/* RCSR Bit Fields */
#line 5032 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* RCR1 Bit Fields */



/* RCR2 Bit Fields */
#line 5054 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* RCR3 Bit Fields */
#line 5061 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* RCR4 Bit Fields */
#line 5076 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* RCR5 Bit Fields */
#line 5086 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* RDR Bit Fields */



/* RFR Bit Fields */
#line 5097 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* RMR Bit Fields */



/* MCR Bit Fields */
#line 5109 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* MDR Bit Fields */
#line 5116 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"

/**
 * @}
 */ /* end of group I2S_Register_Masks */


/* I2S - Peripheral instance base addresses */
/** Peripheral I2S0 base address */

/** Peripheral I2S0 base pointer */

/** Array initializer of I2S peripheral base pointers */


/**
 * @}
 */ /* end of group I2S_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- LLWU Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup LLWU_Peripheral_Access_Layer LLWU Peripheral Access Layer
 * @{
 */

/** LLWU - Register Layout Typedef */
typedef struct {
  volatile uint8_t PE1;                                /**< LLWU Pin Enable 1 register, offset: 0x0 */
  volatile uint8_t PE2;                                /**< LLWU Pin Enable 2 register, offset: 0x1 */
  volatile uint8_t PE3;                                /**< LLWU Pin Enable 3 register, offset: 0x2 */
  volatile uint8_t PE4;                                /**< LLWU Pin Enable 4 register, offset: 0x3 */
  volatile uint8_t ME;                                 /**< LLWU Module Enable register, offset: 0x4 */
  volatile uint8_t F1;                                 /**< LLWU Flag 1 register, offset: 0x5 */
  volatile uint8_t F2;                                 /**< LLWU Flag 2 register, offset: 0x6 */
  volatile const  uint8_t F3;                                 /**< LLWU Flag 3 register, offset: 0x7 */
  volatile uint8_t FILT1;                              /**< LLWU Pin Filter 1 register, offset: 0x8 */
  volatile uint8_t FILT2;                              /**< LLWU Pin Filter 2 register, offset: 0x9 */
  volatile uint8_t RST;                                /**< LLWU Reset Enable register, offset: 0xA */
} LLWU_Type;

/* ----------------------------------------------------------------------------
   -- LLWU Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup LLWU_Register_Masks LLWU Register Masks
 * @{
 */

/* PE1 Bit Fields */
#line 5181 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PE2 Bit Fields */
#line 5194 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PE3 Bit Fields */
#line 5207 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PE4 Bit Fields */
#line 5220 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* ME Bit Fields */
#line 5237 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* F1 Bit Fields */
#line 5254 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* F2 Bit Fields */
#line 5271 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* F3 Bit Fields */
#line 5288 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* FILT1 Bit Fields */
#line 5297 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* FILT2 Bit Fields */
#line 5306 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* RST Bit Fields */





/**
 * @}
 */ /* end of group LLWU_Register_Masks */


/* LLWU - Peripheral instance base addresses */
/** Peripheral LLWU base address */

/** Peripheral LLWU base pointer */

/** Array initializer of LLWU peripheral base pointers */


/**
 * @}
 */ /* end of group LLWU_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- LPTMR Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup LPTMR_Peripheral_Access_Layer LPTMR Peripheral Access Layer
 * @{
 */

/** LPTMR - Register Layout Typedef */
typedef struct {
  volatile uint32_t CSR;                               /**< Low Power Timer Control Status Register, offset: 0x0 */
  volatile uint32_t PSR;                               /**< Low Power Timer Prescale Register, offset: 0x4 */
  volatile uint32_t CMR;                               /**< Low Power Timer Compare Register, offset: 0x8 */
  volatile const  uint32_t CNR;                               /**< Low Power Timer Counter Register, offset: 0xC */
} LPTMR_Type;

/* ----------------------------------------------------------------------------
   -- LPTMR Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup LPTMR_Register_Masks LPTMR Register Masks
 * @{
 */

/* CSR Bit Fields */
#line 5372 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PSR Bit Fields */
#line 5381 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CMR Bit Fields */



/* CNR Bit Fields */




/**
 * @}
 */ /* end of group LPTMR_Register_Masks */


/* LPTMR - Peripheral instance base addresses */
/** Peripheral LPTMR0 base address */

/** Peripheral LPTMR0 base pointer */

/** Array initializer of LPTMR peripheral base pointers */


/**
 * @}
 */ /* end of group LPTMR_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- MCG Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup MCG_Peripheral_Access_Layer MCG Peripheral Access Layer
 * @{
 */

/** MCG - Register Layout Typedef */
typedef struct {
  volatile uint8_t C1;                                 /**< MCG Control 1 Register, offset: 0x0 */
  volatile uint8_t C2;                                 /**< MCG Control 2 Register, offset: 0x1 */
  volatile uint8_t C3;                                 /**< MCG Control 3 Register, offset: 0x2 */
  volatile uint8_t C4;                                 /**< MCG Control 4 Register, offset: 0x3 */
  volatile uint8_t C5;                                 /**< MCG Control 5 Register, offset: 0x4 */
  volatile uint8_t C6;                                 /**< MCG Control 6 Register, offset: 0x5 */
  volatile const  uint8_t S;                                  /**< MCG Status Register, offset: 0x6 */
       uint8_t RESERVED_0[1];
  volatile uint8_t SC;                                 /**< MCG Status and Control Register, offset: 0x8 */
       uint8_t RESERVED_1[1];
  volatile uint8_t ATCVH;                              /**< MCG Auto Trim Compare Value High Register, offset: 0xA */
  volatile uint8_t ATCVL;                              /**< MCG Auto Trim Compare Value Low Register, offset: 0xB */
  volatile uint8_t C7;                                 /**< MCG Control 7 Register, offset: 0xC */
  volatile uint8_t C8;                                 /**< MCG Control 8 Register, offset: 0xD */
  volatile const  uint8_t C9;                                 /**< MCG Control 9 Register, offset: 0xE */
  volatile const  uint8_t C10;                                /**< MCG Control 10 Register, offset: 0xF */
} MCG_Type;

/* ----------------------------------------------------------------------------
   -- MCG Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup MCG_Register_Masks MCG Register Masks
 * @{
 */

/* C1 Bit Fields */
#line 5459 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* C2 Bit Fields */
#line 5473 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* C3 Bit Fields */



/* C4 Bit Fields */
#line 5488 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* C5 Bit Fields */
#line 5496 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* C6 Bit Fields */
#line 5506 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* S Bit Fields */
#line 5522 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SC Bit Fields */
#line 5536 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* ATCVH Bit Fields */



/* ATCVL Bit Fields */



/* C7 Bit Fields */


/* C8 Bit Fields */
#line 5556 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"

/**
 * @}
 */ /* end of group MCG_Register_Masks */


/* MCG - Peripheral instance base addresses */
/** Peripheral MCG base address */

/** Peripheral MCG base pointer */

/** Array initializer of MCG peripheral base pointers */


/**
 * @}
 */ /* end of group MCG_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- MCM Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup MCM_Peripheral_Access_Layer MCM Peripheral Access Layer
 * @{
 */

/** MCM - Register Layout Typedef */
typedef struct {
       uint8_t RESERVED_0[8];
  volatile const  uint16_t PLASC;                             /**< Crossbar Switch (AXBS) Slave Configuration, offset: 0x8 */
  volatile const  uint16_t PLAMC;                             /**< Crossbar Switch (AXBS) Master Configuration, offset: 0xA */
  volatile uint32_t CR;                                /**< Control Register, offset: 0xC */
  volatile uint32_t ISR;                               /**< Interrupt Status Register, offset: 0x10 */
  volatile uint32_t ETBCC;                             /**< ETB Counter Control register, offset: 0x14 */
  volatile uint32_t ETBRL;                             /**< ETB Reload register, offset: 0x18 */
  volatile const  uint32_t ETBCNT;                            /**< ETB Counter Value register, offset: 0x1C */
       uint8_t RESERVED_1[16];
  volatile uint32_t PID;                               /**< Process ID register, offset: 0x30 */
} MCM_Type;

/* ----------------------------------------------------------------------------
   -- MCM Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup MCM_Register_Masks MCM Register Masks
 * @{
 */

/* PLASC Bit Fields */



/* PLAMC Bit Fields */



/* CR Bit Fields */
#line 5626 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* ISR Bit Fields */
#line 5633 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* ETBCC Bit Fields */
#line 5645 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* ETBRL Bit Fields */



/* ETBCNT Bit Fields */



/* PID Bit Fields */




/**
 * @}
 */ /* end of group MCM_Register_Masks */


/* MCM - Peripheral instance base addresses */
/** Peripheral MCM base address */

/** Peripheral MCM base pointer */

/** Array initializer of MCM peripheral base pointers */


/**
 * @}
 */ /* end of group MCM_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- MPU Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup MPU_Peripheral_Access_Layer MPU Peripheral Access Layer
 * @{
 */

/** MPU - Register Layout Typedef */
typedef struct {
  volatile uint32_t CESR;                              /**< Control/Error Status Register, offset: 0x0 */
       uint8_t RESERVED_0[12];
  struct {                                         /* offset: 0x10, array step: 0x8 */
    volatile const  uint32_t EAR;                               /**< Error Address Register, slave port n, array offset: 0x10, array step: 0x8 */
    volatile const  uint32_t EDR;                               /**< Error Detail Register, slave port n, array offset: 0x14, array step: 0x8 */
  } SP[5];
       uint8_t RESERVED_1[968];
  volatile uint32_t WORD[12][4];                       /**< Region Descriptor n, Word 0..Region Descriptor n, Word 3, array offset: 0x400, array step: index*0x10, index2*0x4 */
       uint8_t RESERVED_2[832];
  volatile uint32_t RGDAAC[12];                        /**< Region Descriptor Alternate Access Control n, array offset: 0x800, array step: 0x4 */
} MPU_Type;

/* ----------------------------------------------------------------------------
   -- MPU Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup MPU_Register_Masks MPU Register Masks
 * @{
 */

/* CESR Bit Fields */
#line 5723 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* EAR Bit Fields */



/* EDR Bit Fields */
#line 5739 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* WORD Bit Fields */
#line 5788 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* RGDAAC Bit Fields */
#line 5829 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"

/**
 * @}
 */ /* end of group MPU_Register_Masks */


/* MPU - Peripheral instance base addresses */
/** Peripheral MPU base address */

/** Peripheral MPU base pointer */

/** Array initializer of MPU peripheral base pointers */


/**
 * @}
 */ /* end of group MPU_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- NV Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup NV_Peripheral_Access_Layer NV Peripheral Access Layer
 * @{
 */

/** NV - Register Layout Typedef */
typedef struct {
  volatile const  uint8_t BACKKEY3;                           /**< Backdoor Comparison Key 3., offset: 0x0 */
  volatile const  uint8_t BACKKEY2;                           /**< Backdoor Comparison Key 2., offset: 0x1 */
  volatile const  uint8_t BACKKEY1;                           /**< Backdoor Comparison Key 1., offset: 0x2 */
  volatile const  uint8_t BACKKEY0;                           /**< Backdoor Comparison Key 0., offset: 0x3 */
  volatile const  uint8_t BACKKEY7;                           /**< Backdoor Comparison Key 7., offset: 0x4 */
  volatile const  uint8_t BACKKEY6;                           /**< Backdoor Comparison Key 6., offset: 0x5 */
  volatile const  uint8_t BACKKEY5;                           /**< Backdoor Comparison Key 5., offset: 0x6 */
  volatile const  uint8_t BACKKEY4;                           /**< Backdoor Comparison Key 4., offset: 0x7 */
  volatile const  uint8_t FPROT3;                             /**< Non-volatile P-Flash Protection 1 - Low Register, offset: 0x8 */
  volatile const  uint8_t FPROT2;                             /**< Non-volatile P-Flash Protection 1 - High Register, offset: 0x9 */
  volatile const  uint8_t FPROT1;                             /**< Non-volatile P-Flash Protection 0 - Low Register, offset: 0xA */
  volatile const  uint8_t FPROT0;                             /**< Non-volatile P-Flash Protection 0 - High Register, offset: 0xB */
  volatile const  uint8_t FSEC;                               /**< Non-volatile Flash Security Register, offset: 0xC */
  volatile const  uint8_t FOPT;                               /**< Non-volatile Flash Option Register, offset: 0xD */
  volatile const  uint8_t FEPROT;                             /**< Non-volatile EERAM Protection Register, offset: 0xE */
  volatile const  uint8_t FDPROT;                             /**< Non-volatile D-Flash Protection Register, offset: 0xF */
} NV_Type;

/* ----------------------------------------------------------------------------
   -- NV Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup NV_Register_Masks NV Register Masks
 * @{
 */

/* BACKKEY3 Bit Fields */



/* BACKKEY2 Bit Fields */



/* BACKKEY1 Bit Fields */



/* BACKKEY0 Bit Fields */



/* BACKKEY7 Bit Fields */



/* BACKKEY6 Bit Fields */



/* BACKKEY5 Bit Fields */



/* BACKKEY4 Bit Fields */



/* FPROT3 Bit Fields */



/* FPROT2 Bit Fields */



/* FPROT1 Bit Fields */



/* FPROT0 Bit Fields */



/* FSEC Bit Fields */
#line 5947 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* FOPT Bit Fields */




/* FEPROT Bit Fields */



/* FDPROT Bit Fields */




/**
 * @}
 */ /* end of group NV_Register_Masks */


/* NV - Peripheral instance base addresses */
/** Peripheral FTFL_FlashConfig base address */

/** Peripheral FTFL_FlashConfig base pointer */

/** Array initializer of NV peripheral base pointers */


/**
 * @}
 */ /* end of group NV_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- OSC Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup OSC_Peripheral_Access_Layer OSC Peripheral Access Layer
 * @{
 */

/** OSC - Register Layout Typedef */
typedef struct {
  volatile uint8_t CR;                                 /**< OSC Control Register, offset: 0x0 */
} OSC_Type;

/* ----------------------------------------------------------------------------
   -- OSC Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup OSC_Register_Masks OSC Register Masks
 * @{
 */

/* CR Bit Fields */
#line 6015 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"

/**
 * @}
 */ /* end of group OSC_Register_Masks */


/* OSC - Peripheral instance base addresses */
/** Peripheral OSC base address */

/** Peripheral OSC base pointer */

/** Array initializer of OSC peripheral base pointers */


/**
 * @}
 */ /* end of group OSC_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- PDB Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup PDB_Peripheral_Access_Layer PDB Peripheral Access Layer
 * @{
 */

/** PDB - Register Layout Typedef */
typedef struct {
  volatile uint32_t SC;                                /**< Status and Control Register, offset: 0x0 */
  volatile uint32_t MOD;                               /**< Modulus Register, offset: 0x4 */
  volatile const  uint32_t CNT;                               /**< Counter Register, offset: 0x8 */
  volatile uint32_t IDLY;                              /**< Interrupt Delay Register, offset: 0xC */
  struct {                                         /* offset: 0x10, array step: 0x28 */
    volatile uint32_t C1;                                /**< Channel n Control Register 1, array offset: 0x10, array step: 0x28 */
    volatile uint32_t S;                                 /**< Channel n Status Register, array offset: 0x14, array step: 0x28 */
    volatile uint32_t DLY[2];                            /**< Channel n Delay 0 Register..Channel n Delay 1 Register, array offset: 0x18, array step: index*0x28, index2*0x4 */
         uint8_t RESERVED_0[24];
  } CH[2];
       uint8_t RESERVED_0[240];
  struct {                                         /* offset: 0x150, array step: 0x8 */
    volatile uint32_t INTC;                              /**< DAC Interval Trigger n Control Register, array offset: 0x150, array step: 0x8 */
    volatile uint32_t INT;                               /**< DAC Interval n Register, array offset: 0x154, array step: 0x8 */
  } DAC[2];
       uint8_t RESERVED_1[48];
  volatile uint32_t POEN;                              /**< Pulse-Out n Enable Register, offset: 0x190 */
  volatile uint32_t PODLY[3];                          /**< Pulse-Out n Delay Register, array offset: 0x194, array step: 0x4 */
} PDB_Type;

/* ----------------------------------------------------------------------------
   -- PDB Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup PDB_Register_Masks PDB Register Masks
 * @{
 */

/* SC Bit Fields */
#line 6103 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* MOD Bit Fields */



/* CNT Bit Fields */



/* IDLY Bit Fields */



/* C1 Bit Fields */
#line 6125 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* S Bit Fields */
#line 6132 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* DLY Bit Fields */



/* INTC Bit Fields */




/* INT Bit Fields */



/* POEN Bit Fields */



/* PODLY Bit Fields */
#line 6156 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"

/**
 * @}
 */ /* end of group PDB_Register_Masks */


/* PDB - Peripheral instance base addresses */
/** Peripheral PDB0 base address */

/** Peripheral PDB0 base pointer */

/** Array initializer of PDB peripheral base pointers */


/**
 * @}
 */ /* end of group PDB_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- PIT Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup PIT_Peripheral_Access_Layer PIT Peripheral Access Layer
 * @{
 */

/** PIT - Register Layout Typedef */
typedef struct {
  volatile uint32_t MCR;                               /**< PIT Module Control Register, offset: 0x0 */
       uint8_t RESERVED_0[252];
  struct {                                         /* offset: 0x100, array step: 0x10 */
    volatile uint32_t LDVAL;                             /**< Timer Load Value Register, array offset: 0x100, array step: 0x10 */
    volatile const  uint32_t CVAL;                              /**< Current Timer Value Register, array offset: 0x104, array step: 0x10 */
    volatile uint32_t TCTRL;                             /**< Timer Control Register, array offset: 0x108, array step: 0x10 */
    volatile uint32_t TFLG;                              /**< Timer Flag Register, array offset: 0x10C, array step: 0x10 */
  } CHANNEL[4];
} PIT_Type;

/* ----------------------------------------------------------------------------
   -- PIT Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup PIT_Register_Masks PIT Register Masks
 * @{
 */

/* MCR Bit Fields */




/* LDVAL Bit Fields */



/* CVAL Bit Fields */



/* TCTRL Bit Fields */
#line 6225 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* TFLG Bit Fields */



/**
 * @}
 */ /* end of group PIT_Register_Masks */


/* PIT - Peripheral instance base addresses */
/** Peripheral PIT base address */

/** Peripheral PIT base pointer */

/** Array initializer of PIT peripheral base pointers */


/**
 * @}
 */ /* end of group PIT_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- PMC Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup PMC_Peripheral_Access_Layer PMC Peripheral Access Layer
 * @{
 */

/** PMC - Register Layout Typedef */
typedef struct {
  volatile uint8_t LVDSC1;                             /**< Low Voltage Detect Status And Control 1 register, offset: 0x0 */
  volatile uint8_t LVDSC2;                             /**< Low Voltage Detect Status And Control 2 register, offset: 0x1 */
  volatile uint8_t REGSC;                              /**< Regulator Status And Control register, offset: 0x2 */
} PMC_Type;

/* ----------------------------------------------------------------------------
   -- PMC Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup PMC_Register_Masks PMC Register Masks
 * @{
 */

/* LVDSC1 Bit Fields */
#line 6284 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* LVDSC2 Bit Fields */
#line 6294 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* REGSC Bit Fields */
#line 6303 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"

/**
 * @}
 */ /* end of group PMC_Register_Masks */


/* PMC - Peripheral instance base addresses */
/** Peripheral PMC base address */

/** Peripheral PMC base pointer */

/** Array initializer of PMC peripheral base pointers */


/**
 * @}
 */ /* end of group PMC_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- PORT Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup PORT_Peripheral_Access_Layer PORT Peripheral Access Layer
 * @{
 */

/** PORT - Register Layout Typedef */
typedef struct {
  volatile uint32_t PCR[32];                           /**< Pin Control Register n, array offset: 0x0, array step: 0x4 */
  volatile  uint32_t GPCLR;                             /**< Global Pin Control Low Register, offset: 0x80 */
  volatile  uint32_t GPCHR;                             /**< Global Pin Control High Register, offset: 0x84 */
       uint8_t RESERVED_0[24];
  volatile uint32_t ISFR;                              /**< Interrupt Status Flag Register, offset: 0xA0 */
       uint8_t RESERVED_1[28];
  volatile uint32_t DFER;                              /**< Digital Filter Enable Register, offset: 0xC0 */
  volatile uint32_t DFCR;                              /**< Digital Filter Clock Register, offset: 0xC4 */
  volatile uint32_t DFWR;                              /**< Digital Filter Width Register, offset: 0xC8 */
} PORT_Type;

/* ----------------------------------------------------------------------------
   -- PORT Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup PORT_Register_Masks PORT Register Masks
 * @{
 */

/* PCR Bit Fields */
#line 6376 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* GPCLR Bit Fields */
#line 6383 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* GPCHR Bit Fields */
#line 6390 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* ISFR Bit Fields */



/* DFER Bit Fields */



/* DFCR Bit Fields */


/* DFWR Bit Fields */




/**
 * @}
 */ /* end of group PORT_Register_Masks */


/* PORT - Peripheral instance base addresses */
/** Peripheral PORTA base address */

/** Peripheral PORTA base pointer */

/** Peripheral PORTB base address */

/** Peripheral PORTB base pointer */

/** Peripheral PORTC base address */

/** Peripheral PORTC base pointer */

/** Peripheral PORTD base address */

/** Peripheral PORTD base pointer */

/** Peripheral PORTE base address */

/** Peripheral PORTE base pointer */

/** Array initializer of PORT peripheral base pointers */


/**
 * @}
 */ /* end of group PORT_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- RCM Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup RCM_Peripheral_Access_Layer RCM Peripheral Access Layer
 * @{
 */

/** RCM - Register Layout Typedef */
typedef struct {
  volatile const  uint8_t SRS0;                               /**< System Reset Status Register 0, offset: 0x0 */
  volatile const  uint8_t SRS1;                               /**< System Reset Status Register 1, offset: 0x1 */
       uint8_t RESERVED_0[2];
  volatile uint8_t RPFC;                               /**< Reset Pin Filter Control register, offset: 0x4 */
  volatile uint8_t RPFW;                               /**< Reset Pin Filter Width register, offset: 0x5 */
       uint8_t RESERVED_1[1];
  volatile const  uint8_t MR;                                 /**< Mode Register, offset: 0x7 */
} RCM_Type;

/* ----------------------------------------------------------------------------
   -- RCM Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup RCM_Register_Masks RCM Register Masks
 * @{
 */

/* SRS0 Bit Fields */
#line 6484 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SRS1 Bit Fields */
#line 6497 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* RPFC Bit Fields */





/* RPFW Bit Fields */



/* MR Bit Fields */



/**
 * @}
 */ /* end of group RCM_Register_Masks */


/* RCM - Peripheral instance base addresses */
/** Peripheral RCM base address */

/** Peripheral RCM base pointer */

/** Array initializer of RCM peripheral base pointers */


/**
 * @}
 */ /* end of group RCM_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- RFSYS Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup RFSYS_Peripheral_Access_Layer RFSYS Peripheral Access Layer
 * @{
 */

/** RFSYS - Register Layout Typedef */
typedef struct {
  volatile uint32_t REG[8];                            /**< Register file register, array offset: 0x0, array step: 0x4 */
} RFSYS_Type;

/* ----------------------------------------------------------------------------
   -- RFSYS Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup RFSYS_Register_Masks RFSYS Register Masks
 * @{
 */

/* REG Bit Fields */
#line 6565 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"

/**
 * @}
 */ /* end of group RFSYS_Register_Masks */


/* RFSYS - Peripheral instance base addresses */
/** Peripheral RFSYS base address */

/** Peripheral RFSYS base pointer */

/** Array initializer of RFSYS peripheral base pointers */


/**
 * @}
 */ /* end of group RFSYS_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- RFVBAT Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup RFVBAT_Peripheral_Access_Layer RFVBAT Peripheral Access Layer
 * @{
 */

/** RFVBAT - Register Layout Typedef */
typedef struct {
  volatile uint32_t REG[8];                            /**< VBAT register file register, array offset: 0x0, array step: 0x4 */
} RFVBAT_Type;

/* ----------------------------------------------------------------------------
   -- RFVBAT Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup RFVBAT_Register_Masks RFVBAT Register Masks
 * @{
 */

/* REG Bit Fields */
#line 6620 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"

/**
 * @}
 */ /* end of group RFVBAT_Register_Masks */


/* RFVBAT - Peripheral instance base addresses */
/** Peripheral RFVBAT base address */

/** Peripheral RFVBAT base pointer */

/** Array initializer of RFVBAT peripheral base pointers */


/**
 * @}
 */ /* end of group RFVBAT_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- RNG Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup RNG_Peripheral_Access_Layer RNG Peripheral Access Layer
 * @{
 */

/** RNG - Register Layout Typedef */
typedef struct {
  volatile uint32_t CR;                                /**< RNGA Control Register, offset: 0x0 */
  volatile const  uint32_t SR;                                /**< RNGA Status Register, offset: 0x4 */
  volatile  uint32_t ER;                                /**< RNGA Entropy Register, offset: 0x8 */
  volatile const  uint32_t OR;                                /**< RNGA Output Register, offset: 0xC */
} RNG_Type;

/* ----------------------------------------------------------------------------
   -- RNG Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup RNG_Register_Masks RNG Register Masks
 * @{
 */

/* CR Bit Fields */
#line 6676 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SR Bit Fields */
#line 6693 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* ER Bit Fields */



/* OR Bit Fields */




/**
 * @}
 */ /* end of group RNG_Register_Masks */


/* RNG - Peripheral instance base addresses */
/** Peripheral RNG base address */

/** Peripheral RNG base pointer */

/** Array initializer of RNG peripheral base pointers */


/**
 * @}
 */ /* end of group RNG_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- RTC Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup RTC_Peripheral_Access_Layer RTC Peripheral Access Layer
 * @{
 */

/** RTC - Register Layout Typedef */
typedef struct {
  volatile uint32_t TSR;                               /**< RTC Time Seconds Register, offset: 0x0 */
  volatile uint32_t TPR;                               /**< RTC Time Prescaler Register, offset: 0x4 */
  volatile uint32_t TAR;                               /**< RTC Time Alarm Register, offset: 0x8 */
  volatile uint32_t TCR;                               /**< RTC Time Compensation Register, offset: 0xC */
  volatile uint32_t CR;                                /**< RTC Control Register, offset: 0x10 */
  volatile uint32_t SR;                                /**< RTC Status Register, offset: 0x14 */
  volatile uint32_t LR;                                /**< RTC Lock Register, offset: 0x18 */
  volatile uint32_t IER;                               /**< RTC Interrupt Enable Register, offset: 0x1C */
       uint8_t RESERVED_0[2016];
  volatile uint32_t WAR;                               /**< RTC Write Access Register, offset: 0x800 */
  volatile uint32_t RAR;                               /**< RTC Read Access Register, offset: 0x804 */
} RTC_Type;

/* ----------------------------------------------------------------------------
   -- RTC Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup RTC_Register_Masks RTC Register Masks
 * @{
 */

/* TSR Bit Fields */



/* TPR Bit Fields */



/* TAR Bit Fields */



/* TCR Bit Fields */
#line 6778 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CR Bit Fields */
#line 6799 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SR Bit Fields */
#line 6808 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* LR Bit Fields */
#line 6817 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* IER Bit Fields */
#line 6828 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* WAR Bit Fields */
#line 6845 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* RAR Bit Fields */
#line 6862 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"

/**
 * @}
 */ /* end of group RTC_Register_Masks */


/* RTC - Peripheral instance base addresses */
/** Peripheral RTC base address */

/** Peripheral RTC base pointer */

/** Array initializer of RTC peripheral base pointers */


/**
 * @}
 */ /* end of group RTC_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- SDHC Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SDHC_Peripheral_Access_Layer SDHC Peripheral Access Layer
 * @{
 */

/** SDHC - Register Layout Typedef */
typedef struct {
  volatile uint32_t DSADDR;                            /**< DMA System Address register, offset: 0x0 */
  volatile uint32_t BLKATTR;                           /**< Block Attributes register, offset: 0x4 */
  volatile uint32_t CMDARG;                            /**< Command Argument register, offset: 0x8 */
  volatile uint32_t XFERTYP;                           /**< Transfer Type register, offset: 0xC */
  volatile const  uint32_t CMDRSP[4];                         /**< Command Response 0..Command Response 3, array offset: 0x10, array step: 0x4 */
  volatile uint32_t DATPORT;                           /**< Buffer Data Port register, offset: 0x20 */
  volatile const  uint32_t PRSSTAT;                           /**< Present State register, offset: 0x24 */
  volatile uint32_t PROCTL;                            /**< Protocol Control register, offset: 0x28 */
  volatile uint32_t SYSCTL;                            /**< System Control register, offset: 0x2C */
  volatile uint32_t IRQSTAT;                           /**< Interrupt Status register, offset: 0x30 */
  volatile uint32_t IRQSTATEN;                         /**< Interrupt Status Enable register, offset: 0x34 */
  volatile uint32_t IRQSIGEN;                          /**< Interrupt Signal Enable register, offset: 0x38 */
  volatile const  uint32_t AC12ERR;                           /**< Auto CMD12 Error Status Register, offset: 0x3C */
  volatile const  uint32_t HTCAPBLT;                          /**< Host Controller Capabilities, offset: 0x40 */
  volatile uint32_t WML;                               /**< Watermark Level Register, offset: 0x44 */
       uint8_t RESERVED_0[8];
  volatile  uint32_t FEVT;                              /**< Force Event register, offset: 0x50 */
  volatile const  uint32_t ADMAES;                            /**< ADMA Error Status register, offset: 0x54 */
  volatile uint32_t ADSADDR;                           /**< ADMA System Addressregister, offset: 0x58 */
       uint8_t RESERVED_1[100];
  volatile uint32_t VENDOR;                            /**< Vendor Specific register, offset: 0xC0 */
  volatile uint32_t MMCBOOT;                           /**< MMC Boot register, offset: 0xC4 */
       uint8_t RESERVED_2[52];
  volatile const  uint32_t HOSTVER;                           /**< Host Controller Version, offset: 0xFC */
} SDHC_Type;

/* ----------------------------------------------------------------------------
   -- SDHC Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SDHC_Register_Masks SDHC Register Masks
 * @{
 */

/* DSADDR Bit Fields */



/* BLKATTR Bit Fields */
#line 6938 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CMDARG Bit Fields */



/* XFERTYP Bit Fields */
#line 6968 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CMDRSP Bit Fields */
#line 6981 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* DATPORT Bit Fields */



/* PRSSTAT Bit Fields */
#line 7017 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PROCTL Bit Fields */
#line 7049 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SYSCTL Bit Fields */
#line 7075 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* IRQSTAT Bit Fields */
#line 7112 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* IRQSTATEN Bit Fields */
#line 7149 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* IRQSIGEN Bit Fields */
#line 7186 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* AC12ERR Bit Fields */
#line 7199 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* HTCAPBLT Bit Fields */
#line 7217 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* WML Bit Fields */
#line 7224 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* FEVT Bit Fields */
#line 7257 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* ADMAES Bit Fields */
#line 7265 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* ADSADDR Bit Fields */



/* VENDOR Bit Fields */
#line 7277 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* MMCBOOT Bit Fields */
#line 7292 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* HOSTVER Bit Fields */
#line 7299 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"

/**
 * @}
 */ /* end of group SDHC_Register_Masks */


/* SDHC - Peripheral instance base addresses */
/** Peripheral SDHC base address */

/** Peripheral SDHC base pointer */

/** Array initializer of SDHC peripheral base pointers */


/**
 * @}
 */ /* end of group SDHC_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- SIM Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SIM_Peripheral_Access_Layer SIM Peripheral Access Layer
 * @{
 */

/** SIM - Register Layout Typedef */
typedef struct {
  volatile uint32_t SOPT1;                             /**< System Options Register 1, offset: 0x0 */
  volatile uint32_t SOPT1CFG;                          /**< SOPT1 Configuration Register, offset: 0x4 */
       uint8_t RESERVED_0[4092];
  volatile uint32_t SOPT2;                             /**< System Options Register 2, offset: 0x1004 */
       uint8_t RESERVED_1[4];
  volatile uint32_t SOPT4;                             /**< System Options Register 4, offset: 0x100C */
  volatile uint32_t SOPT5;                             /**< System Options Register 5, offset: 0x1010 */
       uint8_t RESERVED_2[4];
  volatile uint32_t SOPT7;                             /**< System Options Register 7, offset: 0x1018 */
       uint8_t RESERVED_3[8];
  volatile const  uint32_t SDID;                              /**< System Device Identification Register, offset: 0x1024 */
  volatile uint32_t SCGC1;                             /**< System Clock Gating Control Register 1, offset: 0x1028 */
  volatile uint32_t SCGC2;                             /**< System Clock Gating Control Register 2, offset: 0x102C */
  volatile uint32_t SCGC3;                             /**< System Clock Gating Control Register 3, offset: 0x1030 */
  volatile uint32_t SCGC4;                             /**< System Clock Gating Control Register 4, offset: 0x1034 */
  volatile uint32_t SCGC5;                             /**< System Clock Gating Control Register 5, offset: 0x1038 */
  volatile uint32_t SCGC6;                             /**< System Clock Gating Control Register 6, offset: 0x103C */
  volatile uint32_t SCGC7;                             /**< System Clock Gating Control Register 7, offset: 0x1040 */
  volatile uint32_t CLKDIV1;                           /**< System Clock Divider Register 1, offset: 0x1044 */
  volatile uint32_t CLKDIV2;                           /**< System Clock Divider Register 2, offset: 0x1048 */
  volatile uint32_t FCFG1;                             /**< Flash Configuration Register 1, offset: 0x104C */
  volatile const  uint32_t FCFG2;                             /**< Flash Configuration Register 2, offset: 0x1050 */
  volatile const  uint32_t UIDH;                              /**< Unique Identification Register High, offset: 0x1054 */
  volatile const  uint32_t UIDMH;                             /**< Unique Identification Register Mid-High, offset: 0x1058 */
  volatile const  uint32_t UIDML;                             /**< Unique Identification Register Mid Low, offset: 0x105C */
  volatile const  uint32_t UIDL;                              /**< Unique Identification Register Low, offset: 0x1060 */
} SIM_Type;

/* ----------------------------------------------------------------------------
   -- SIM Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SIM_Register_Masks SIM Register Masks
 * @{
 */

/* SOPT1 Bit Fields */
#line 7379 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SOPT1CFG Bit Fields */
#line 7386 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SOPT2 Bit Fields */
#line 7411 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SOPT4 Bit Fields */
#line 7438 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SOPT5 Bit Fields */
#line 7451 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SOPT7 Bit Fields */
#line 7466 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SDID Bit Fields */
#line 7476 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SCGC1 Bit Fields */




/* SCGC2 Bit Fields */
#line 7488 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SCGC3 Bit Fields */
#line 7501 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SCGC4 Bit Fields */
#line 7526 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SCGC5 Bit Fields */
#line 7541 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SCGC6 Bit Fields */
#line 7570 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SCGC7 Bit Fields */
#line 7577 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CLKDIV1 Bit Fields */
#line 7590 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CLKDIV2 Bit Fields */





/* FCFG1 Bit Fields */
#line 7613 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* FCFG2 Bit Fields */
#line 7624 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* UIDH Bit Fields */



/* UIDMH Bit Fields */



/* UIDML Bit Fields */



/* UIDL Bit Fields */




/**
 * @}
 */ /* end of group SIM_Register_Masks */


/* SIM - Peripheral instance base addresses */
/** Peripheral SIM base address */

/** Peripheral SIM base pointer */

/** Array initializer of SIM peripheral base pointers */


/**
 * @}
 */ /* end of group SIM_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- SMC Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SMC_Peripheral_Access_Layer SMC Peripheral Access Layer
 * @{
 */

/** SMC - Register Layout Typedef */
typedef struct {
  volatile uint8_t PMPROT;                             /**< Power Mode Protection register, offset: 0x0 */
  volatile uint8_t PMCTRL;                             /**< Power Mode Control register, offset: 0x1 */
  volatile uint8_t VLLSCTRL;                           /**< VLLS Control register, offset: 0x2 */
  volatile const  uint8_t PMSTAT;                             /**< Power Mode Status register, offset: 0x3 */
} SMC_Type;

/* ----------------------------------------------------------------------------
   -- SMC Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SMC_Register_Masks SMC Register Masks
 * @{
 */

/* PMPROT Bit Fields */
#line 7692 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PMCTRL Bit Fields */
#line 7703 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* VLLSCTRL Bit Fields */





/* PMSTAT Bit Fields */




/**
 * @}
 */ /* end of group SMC_Register_Masks */


/* SMC - Peripheral instance base addresses */
/** Peripheral SMC base address */

/** Peripheral SMC base pointer */

/** Array initializer of SMC peripheral base pointers */


/**
 * @}
 */ /* end of group SMC_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- SPI Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SPI_Peripheral_Access_Layer SPI Peripheral Access Layer
 * @{
 */

/** SPI - Register Layout Typedef */
typedef struct {
  volatile uint32_t MCR;                               /**< Module Configuration Register, offset: 0x0 */
       uint8_t RESERVED_0[4];
  volatile uint32_t TCR;                               /**< Transfer Count Register, offset: 0x8 */
  union {                                          /* offset: 0xC */
    volatile uint32_t CTAR[2];                           /**< DSPI Clock and Transfer Attributes Register (In Master Mode), array offset: 0xC, array step: 0x4 */
    volatile uint32_t CTAR_SLAVE[1];                     /**< Clock and Transfer Attributes Register (In Slave Mode), array offset: 0xC, array step: 0x4 */
  };
       uint8_t RESERVED_1[24];
  volatile uint32_t SR;                                /**< DSPI Status Register, offset: 0x2C */
  volatile uint32_t RSER;                              /**< DMA/Interrupt Request Select and Enable Register, offset: 0x30 */
  union {                                          /* offset: 0x34 */
    volatile uint32_t PUSHR;                             /**< PUSH TX FIFO Register In Master Mode, offset: 0x34 */
    volatile uint32_t PUSHR_SLAVE;                       /**< PUSH TX FIFO Register In Slave Mode, offset: 0x34 */
  };
  volatile const  uint32_t POPR;                              /**< POP RX FIFO Register, offset: 0x38 */
  volatile const  uint32_t TXFR0;                             /**< DSPI Transmit FIFO Registers, offset: 0x3C */
  volatile const  uint32_t TXFR1;                             /**< DSPI Transmit FIFO Registers, offset: 0x40 */
  volatile const  uint32_t TXFR2;                             /**< DSPI Transmit FIFO Registers, offset: 0x44 */
  volatile const  uint32_t TXFR3;                             /**< DSPI Transmit FIFO Registers, offset: 0x48 */
       uint8_t RESERVED_2[48];
  volatile const  uint32_t RXFR0;                             /**< DSPI Receive FIFO Registers, offset: 0x7C */
  volatile const  uint32_t RXFR1;                             /**< DSPI Receive FIFO Registers, offset: 0x80 */
  volatile const  uint32_t RXFR2;                             /**< DSPI Receive FIFO Registers, offset: 0x84 */
  volatile const  uint32_t RXFR3;                             /**< DSPI Receive FIFO Registers, offset: 0x88 */
} SPI_Type;

/* ----------------------------------------------------------------------------
   -- SPI Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SPI_Register_Masks SPI Register Masks
 * @{
 */

/* MCR Bit Fields */
#line 7814 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* TCR Bit Fields */



/* CTAR Bit Fields */
#line 7854 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CTAR_SLAVE Bit Fields */
#line 7862 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SR Bit Fields */
#line 7889 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* RSER Bit Fields */
#line 7906 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PUSHR Bit Fields */
#line 7922 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PUSHR_SLAVE Bit Fields */



/* POPR Bit Fields */



/* TXFR0 Bit Fields */
#line 7937 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* TXFR1 Bit Fields */
#line 7944 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* TXFR2 Bit Fields */
#line 7951 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* TXFR3 Bit Fields */
#line 7958 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* RXFR0 Bit Fields */



/* RXFR1 Bit Fields */



/* RXFR2 Bit Fields */



/* RXFR3 Bit Fields */




/**
 * @}
 */ /* end of group SPI_Register_Masks */


/* SPI - Peripheral instance base addresses */
/** Peripheral SPI0 base address */

/** Peripheral SPI0 base pointer */

/** Peripheral SPI1 base address */

/** Peripheral SPI1 base pointer */

/** Peripheral SPI2 base address */

/** Peripheral SPI2 base pointer */

/** Array initializer of SPI peripheral base pointers */


/**
 * @}
 */ /* end of group SPI_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- TSI Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup TSI_Peripheral_Access_Layer TSI Peripheral Access Layer
 * @{
 */

/** TSI - Register Layout Typedef */
typedef struct {
  volatile uint32_t GENCS;                             /**< General Control and Status register, offset: 0x0 */
  volatile uint32_t SCANC;                             /**< SCAN Control register, offset: 0x4 */
  volatile uint32_t PEN;                               /**< Pin Enable register, offset: 0x8 */
  volatile const  uint32_t WUCNTR;                            /**< Wake-Up Channel Counter Register, offset: 0xC */
       uint8_t RESERVED_0[240];
  volatile const  uint32_t CNTR1;                             /**< Counter Register, offset: 0x100 */
  volatile const  uint32_t CNTR3;                             /**< Counter Register, offset: 0x104 */
  volatile const  uint32_t CNTR5;                             /**< Counter Register, offset: 0x108 */
  volatile const  uint32_t CNTR7;                             /**< Counter Register, offset: 0x10C */
  volatile const  uint32_t CNTR9;                             /**< Counter Register, offset: 0x110 */
  volatile const  uint32_t CNTR11;                            /**< Counter Register, offset: 0x114 */
  volatile const  uint32_t CNTR13;                            /**< Counter Register, offset: 0x118 */
  volatile const  uint32_t CNTR15;                            /**< Counter Register, offset: 0x11C */
  volatile uint32_t THRESHOLD;                         /**< Low-Power Channel Threshold register, offset: 0x120 */
} TSI_Type;

/* ----------------------------------------------------------------------------
   -- TSI Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup TSI_Register_Masks TSI Register Masks
 * @{
 */

/* GENCS Bit Fields */
#line 8073 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SCANC Bit Fields */
#line 8089 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PEN Bit Fields */
#line 8125 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* WUCNTR Bit Fields */



/* CNTR1 Bit Fields */
#line 8136 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CNTR3 Bit Fields */
#line 8143 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CNTR5 Bit Fields */
#line 8150 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CNTR7 Bit Fields */
#line 8157 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CNTR9 Bit Fields */
#line 8164 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CNTR11 Bit Fields */
#line 8171 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CNTR13 Bit Fields */
#line 8178 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CNTR15 Bit Fields */
#line 8185 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* THRESHOLD Bit Fields */
#line 8192 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"

/**
 * @}
 */ /* end of group TSI_Register_Masks */


/* TSI - Peripheral instance base addresses */
/** Peripheral TSI0 base address */

/** Peripheral TSI0 base pointer */

/** Array initializer of TSI peripheral base pointers */


/**
 * @}
 */ /* end of group TSI_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- UART Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup UART_Peripheral_Access_Layer UART Peripheral Access Layer
 * @{
 */

/** UART - Register Layout Typedef */
typedef struct {
  volatile uint8_t BDH;                                /**< UART Baud Rate Registers: High, offset: 0x0 */
  volatile uint8_t BDL;                                /**< UART Baud Rate Registers: Low, offset: 0x1 */
  volatile uint8_t C1;                                 /**< UART Control Register 1, offset: 0x2 */
  volatile uint8_t C2;                                 /**< UART Control Register 2, offset: 0x3 */
  volatile uint8_t S1;                                 /**< UART Status Register 1, offset: 0x4 */
  volatile uint8_t S2;                                 /**< UART Status Register 2, offset: 0x5 */
  volatile uint8_t C3;                                 /**< UART Control Register 3, offset: 0x6 */
  volatile uint8_t D;                                  /**< UART Data Register, offset: 0x7 */
  volatile uint8_t MA1;                                /**< UART Match Address Registers 1, offset: 0x8 */
  volatile uint8_t MA2;                                /**< UART Match Address Registers 2, offset: 0x9 */
  volatile uint8_t C4;                                 /**< UART Control Register 4, offset: 0xA */
  volatile uint8_t C5;                                 /**< UART Control Register 5, offset: 0xB */
  volatile const  uint8_t ED;                                 /**< UART Extended Data Register, offset: 0xC */
  volatile uint8_t MODEM;                              /**< UART Modem Register, offset: 0xD */
  volatile uint8_t IR;                                 /**< UART Infrared Register, offset: 0xE */
       uint8_t RESERVED_0[1];
  volatile uint8_t PFIFO;                              /**< UART FIFO Parameters, offset: 0x10 */
  volatile uint8_t CFIFO;                              /**< UART FIFO Control Register, offset: 0x11 */
  volatile uint8_t SFIFO;                              /**< UART FIFO Status Register, offset: 0x12 */
  volatile uint8_t TWFIFO;                             /**< UART FIFO Transmit Watermark, offset: 0x13 */
  volatile const  uint8_t TCFIFO;                             /**< UART FIFO Transmit Count, offset: 0x14 */
  volatile uint8_t RWFIFO;                             /**< UART FIFO Receive Watermark, offset: 0x15 */
  volatile const  uint8_t RCFIFO;                             /**< UART FIFO Receive Count, offset: 0x16 */
       uint8_t RESERVED_1[1];
  volatile uint8_t C7816;                              /**< UART 7816 Control Register, offset: 0x18 */
  volatile uint8_t IE7816;                             /**< UART 7816 Interrupt Enable Register, offset: 0x19 */
  volatile uint8_t IS7816;                             /**< UART 7816 Interrupt Status Register, offset: 0x1A */
  union {                                          /* offset: 0x1B */
    volatile uint8_t WP7816_T_TYPE0;                     /**< UART 7816 Wait Parameter Register, offset: 0x1B */
    volatile uint8_t WP7816_T_TYPE1;                     /**< UART 7816 Wait Parameter Register, offset: 0x1B */
  };
  volatile uint8_t WN7816;                             /**< UART 7816 Wait N Register, offset: 0x1C */
  volatile uint8_t WF7816;                             /**< UART 7816 Wait FD Register, offset: 0x1D */
  volatile uint8_t ET7816;                             /**< UART 7816 Error Threshold Register, offset: 0x1E */
  volatile uint8_t TL7816;                             /**< UART 7816 Transmit Length Register, offset: 0x1F */
       uint8_t RESERVED_2[1];
  volatile uint8_t C6;                                 /**< UART CEA709.1-B Control Register 6, offset: 0x21 */
  volatile uint8_t PCTH;                               /**< UART CEA709.1-B Packet Cycle Time Counter High, offset: 0x22 */
  volatile uint8_t PCTL;                               /**< UART CEA709.1-B Packet Cycle Time Counter Low, offset: 0x23 */
  volatile uint8_t B1T;                                /**< UART CEA709.1-B Beta1 Timer, offset: 0x24 */
  volatile uint8_t SDTH;                               /**< UART CEA709.1-B Secondary Delay Timer High, offset: 0x25 */
  volatile uint8_t SDTL;                               /**< UART CEA709.1-B Secondary Delay Timer Low, offset: 0x26 */
  volatile uint8_t PRE;                                /**< UART CEA709.1-B Preamble, offset: 0x27 */
  volatile uint8_t TPL;                                /**< UART CEA709.1-B Transmit Packet Length, offset: 0x28 */
  volatile uint8_t IE;                                 /**< UART CEA709.1-B Interrupt Enable Register, offset: 0x29 */
  volatile uint8_t WB;                                 /**< UART CEA709.1-B WBASE, offset: 0x2A */
  volatile uint8_t S3;                                 /**< UART CEA709.1-B Status Register, offset: 0x2B */
  volatile uint8_t S4;                                 /**< UART CEA709.1-B Status Register, offset: 0x2C */
  volatile const  uint8_t RPL;                                /**< UART CEA709.1-B Received Packet Length, offset: 0x2D */
  volatile const  uint8_t RPREL;                              /**< UART CEA709.1-B Received Preamble Length, offset: 0x2E */
  volatile uint8_t CPW;                                /**< UART CEA709.1-B Collision Pulse Width, offset: 0x2F */
  volatile uint8_t RIDT;                               /**< UART CEA709.1-B Receive Indeterminate Time, offset: 0x30 */
  volatile uint8_t TIDT;                               /**< UART CEA709.1-B Transmit Indeterminate Time, offset: 0x31 */
} UART_Type;

/* ----------------------------------------------------------------------------
   -- UART Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup UART_Register_Masks UART Register Masks
 * @{
 */

/* BDH Bit Fields */
#line 8294 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* BDL Bit Fields */



/* C1 Bit Fields */
#line 8315 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* C2 Bit Fields */
#line 8332 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* S1 Bit Fields */
#line 8349 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* S2 Bit Fields */
#line 8366 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* C3 Bit Fields */
#line 8383 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* D Bit Fields */



/* MA1 Bit Fields */



/* MA2 Bit Fields */



/* C4 Bit Fields */
#line 8405 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* C5 Bit Fields */




/* ED Bit Fields */




/* MODEM Bit Fields */
#line 8424 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* IR Bit Fields */





/* PFIFO Bit Fields */
#line 8441 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CFIFO Bit Fields */
#line 8452 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SFIFO Bit Fields */
#line 8463 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* TWFIFO Bit Fields */



/* TCFIFO Bit Fields */



/* RWFIFO Bit Fields */



/* RCFIFO Bit Fields */



/* C7816 Bit Fields */
#line 8490 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* IE7816 Bit Fields */
#line 8505 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* IS7816 Bit Fields */
#line 8520 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* WP7816_T_TYPE0 Bit Fields */



/* WP7816_T_TYPE1 Bit Fields */
#line 8531 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* WN7816 Bit Fields */



/* WF7816 Bit Fields */



/* ET7816 Bit Fields */
#line 8546 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* TL7816 Bit Fields */



/* C6 Bit Fields */
#line 8559 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* PCTH Bit Fields */



/* PCTL Bit Fields */



/* B1T Bit Fields */



/* SDTH Bit Fields */



/* SDTL Bit Fields */



/* PRE Bit Fields */



/* TPL Bit Fields */



/* IE Bit Fields */
#line 8602 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* WB Bit Fields */



/* S3 Bit Fields */
#line 8623 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* S4 Bit Fields */
#line 8633 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* RPL Bit Fields */



/* RPREL Bit Fields */



/* CPW Bit Fields */



/* RIDT Bit Fields */



/* TIDT Bit Fields */




/**
 * @}
 */ /* end of group UART_Register_Masks */


/* UART - Peripheral instance base addresses */
/** Peripheral UART0 base address */

/** Peripheral UART0 base pointer */

/** Peripheral UART1 base address */

/** Peripheral UART1 base pointer */

/** Peripheral UART2 base address */

/** Peripheral UART2 base pointer */

/** Peripheral UART3 base address */

/** Peripheral UART3 base pointer */

/** Peripheral UART4 base address */

/** Peripheral UART4 base pointer */

/** Peripheral UART5 base address */

/** Peripheral UART5 base pointer */

/** Array initializer of UART peripheral base pointers */


/**
 * @}
 */ /* end of group UART_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- USB Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup USB_Peripheral_Access_Layer USB Peripheral Access Layer
 * @{
 */

/** USB - Register Layout Typedef */
typedef struct {
  volatile const  uint8_t PERID;                              /**< Peripheral ID register, offset: 0x0 */
       uint8_t RESERVED_0[3];
  volatile const  uint8_t IDCOMP;                             /**< Peripheral ID Complement register, offset: 0x4 */
       uint8_t RESERVED_1[3];
  volatile const  uint8_t REV;                                /**< Peripheral Revision register, offset: 0x8 */
       uint8_t RESERVED_2[3];
  volatile const  uint8_t ADDINFO;                            /**< Peripheral Additional Info register, offset: 0xC */
       uint8_t RESERVED_3[3];
  volatile uint8_t OTGISTAT;                           /**< OTG Interrupt Status register, offset: 0x10 */
       uint8_t RESERVED_4[3];
  volatile uint8_t OTGICR;                             /**< OTG Interrupt Control Register, offset: 0x14 */
       uint8_t RESERVED_5[3];
  volatile uint8_t OTGSTAT;                            /**< OTG Status register, offset: 0x18 */
       uint8_t RESERVED_6[3];
  volatile uint8_t OTGCTL;                             /**< OTG Control register, offset: 0x1C */
       uint8_t RESERVED_7[99];
  volatile uint8_t ISTAT;                              /**< Interrupt Status register, offset: 0x80 */
       uint8_t RESERVED_8[3];
  volatile uint8_t INTEN;                              /**< Interrupt Enable register, offset: 0x84 */
       uint8_t RESERVED_9[3];
  volatile uint8_t ERRSTAT;                            /**< Error Interrupt Status register, offset: 0x88 */
       uint8_t RESERVED_10[3];
  volatile uint8_t ERREN;                              /**< Error Interrupt Enable register, offset: 0x8C */
       uint8_t RESERVED_11[3];
  volatile const  uint8_t STAT;                               /**< Status register, offset: 0x90 */
       uint8_t RESERVED_12[3];
  volatile uint8_t CTL;                                /**< Control register, offset: 0x94 */
       uint8_t RESERVED_13[3];
  volatile uint8_t ADDR;                               /**< Address register, offset: 0x98 */
       uint8_t RESERVED_14[3];
  volatile uint8_t BDTPAGE1;                           /**< BDT Page Register 1, offset: 0x9C */
       uint8_t RESERVED_15[3];
  volatile uint8_t FRMNUML;                            /**< Frame Number Register Low, offset: 0xA0 */
       uint8_t RESERVED_16[3];
  volatile uint8_t FRMNUMH;                            /**< Frame Number Register High, offset: 0xA4 */
       uint8_t RESERVED_17[3];
  volatile uint8_t TOKEN;                              /**< Token register, offset: 0xA8 */
       uint8_t RESERVED_18[3];
  volatile uint8_t SOFTHLD;                            /**< SOF Threshold Register, offset: 0xAC */
       uint8_t RESERVED_19[3];
  volatile uint8_t BDTPAGE2;                           /**< BDT Page Register 2, offset: 0xB0 */
       uint8_t RESERVED_20[3];
  volatile uint8_t BDTPAGE3;                           /**< BDT Page Register 3, offset: 0xB4 */
       uint8_t RESERVED_21[11];
  struct {                                         /* offset: 0xC0, array step: 0x4 */
    volatile uint8_t ENDPT;                              /**< Endpoint Control register, array offset: 0xC0, array step: 0x4 */
         uint8_t RESERVED_0[3];
  } ENDPOINT[16];
  volatile uint8_t USBCTRL;                            /**< USB Control register, offset: 0x100 */
       uint8_t RESERVED_22[3];
  volatile const  uint8_t OBSERVE;                            /**< USB OTG Observe register, offset: 0x104 */
       uint8_t RESERVED_23[3];
  volatile uint8_t CONTROL;                            /**< USB OTG Control register, offset: 0x108 */
       uint8_t RESERVED_24[3];
  volatile uint8_t USBTRC0;                            /**< USB Transceiver Control Register 0, offset: 0x10C */
       uint8_t RESERVED_25[7];
  volatile uint8_t USBFRMADJUST;                       /**< Frame Adjust Register, offset: 0x114 */
} USB_Type;

/* ----------------------------------------------------------------------------
   -- USB Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup USB_Register_Masks USB Register Masks
 * @{
 */

/* PERID Bit Fields */



/* IDCOMP Bit Fields */



/* REV Bit Fields */



/* ADDINFO Bit Fields */





/* OTGISTAT Bit Fields */
#line 8802 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* OTGICR Bit Fields */
#line 8815 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* OTGSTAT Bit Fields */
#line 8828 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* OTGCTL Bit Fields */
#line 8837 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* ISTAT Bit Fields */
#line 8854 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* INTEN Bit Fields */
#line 8871 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* ERRSTAT Bit Fields */
#line 8886 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* ERREN Bit Fields */
#line 8901 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* STAT Bit Fields */
#line 8909 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CTL Bit Fields */
#line 8926 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* ADDR Bit Fields */





/* BDTPAGE1 Bit Fields */



/* FRMNUML Bit Fields */



/* FRMNUMH Bit Fields */



/* TOKEN Bit Fields */
#line 8951 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* SOFTHLD Bit Fields */



/* BDTPAGE2 Bit Fields */



/* BDTPAGE3 Bit Fields */



/* ENDPT Bit Fields */
#line 8978 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* USBCTRL Bit Fields */




/* OBSERVE Bit Fields */
#line 8990 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CONTROL Bit Fields */


/* USBTRC0 Bit Fields */
#line 9002 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* USBFRMADJUST Bit Fields */




/**
 * @}
 */ /* end of group USB_Register_Masks */


/* USB - Peripheral instance base addresses */
/** Peripheral USB0 base address */

/** Peripheral USB0 base pointer */

/** Array initializer of USB peripheral base pointers */


/**
 * @}
 */ /* end of group USB_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- USBDCD Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup USBDCD_Peripheral_Access_Layer USBDCD Peripheral Access Layer
 * @{
 */

/** USBDCD - Register Layout Typedef */
typedef struct {
  volatile uint32_t CONTROL;                           /**< Control register, offset: 0x0 */
  volatile uint32_t CLOCK;                             /**< Clock register, offset: 0x4 */
  volatile const  uint32_t STATUS;                            /**< Status register, offset: 0x8 */
       uint8_t RESERVED_0[4];
  volatile uint32_t TIMER0;                            /**< TIMER0 register, offset: 0x10 */
  volatile uint32_t TIMER1;                            /**< TIMER1 register, offset: 0x14 */
  volatile uint32_t TIMER2;                            /**< TIMER2 register, offset: 0x18 */
} USBDCD_Type;

/* ----------------------------------------------------------------------------
   -- USBDCD Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup USBDCD_Register_Masks USBDCD Register Masks
 * @{
 */

/* CONTROL Bit Fields */
#line 9065 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* CLOCK Bit Fields */





/* STATUS Bit Fields */
#line 9084 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* TIMER0 Bit Fields */
#line 9091 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* TIMER1 Bit Fields */
#line 9098 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* TIMER2 Bit Fields */
#line 9105 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"

/**
 * @}
 */ /* end of group USBDCD_Register_Masks */


/* USBDCD - Peripheral instance base addresses */
/** Peripheral USBDCD base address */

/** Peripheral USBDCD base pointer */

/** Array initializer of USBDCD peripheral base pointers */


/**
 * @}
 */ /* end of group USBDCD_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- VREF Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup VREF_Peripheral_Access_Layer VREF Peripheral Access Layer
 * @{
 */

/** VREF - Register Layout Typedef */
typedef struct {
  volatile uint8_t TRM;                                /**< VREF Trim Register, offset: 0x0 */
  volatile uint8_t SC;                                 /**< VREF Status and Control Register, offset: 0x1 */
} VREF_Type;

/* ----------------------------------------------------------------------------
   -- VREF Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup VREF_Register_Masks VREF Register Masks
 * @{
 */

/* TRM Bit Fields */





/* SC Bit Fields */
#line 9166 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"

/**
 * @}
 */ /* end of group VREF_Register_Masks */


/* VREF - Peripheral instance base addresses */
/** Peripheral VREF base address */

/** Peripheral VREF base pointer */

/** Array initializer of VREF peripheral base pointers */


/**
 * @}
 */ /* end of group VREF_Peripheral_Access_Layer */


/* ----------------------------------------------------------------------------
   -- WDOG Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup WDOG_Peripheral_Access_Layer WDOG Peripheral Access Layer
 * @{
 */

/** WDOG - Register Layout Typedef */
typedef struct {
  volatile uint16_t STCTRLH;                           /**< Watchdog Status and Control Register High, offset: 0x0 */
  volatile uint16_t STCTRLL;                           /**< Watchdog Status and Control Register Low, offset: 0x2 */
  volatile uint16_t TOVALH;                            /**< Watchdog Time-out Value Register High, offset: 0x4 */
  volatile uint16_t TOVALL;                            /**< Watchdog Time-out Value Register Low, offset: 0x6 */
  volatile uint16_t WINH;                              /**< Watchdog Window Register High, offset: 0x8 */
  volatile uint16_t WINL;                              /**< Watchdog Window Register Low, offset: 0xA */
  volatile uint16_t REFRESH;                           /**< Watchdog Refresh register, offset: 0xC */
  volatile uint16_t UNLOCK;                            /**< Watchdog Unlock register, offset: 0xE */
  volatile uint16_t TMROUTH;                           /**< Watchdog Timer Output Register High, offset: 0x10 */
  volatile uint16_t TMROUTL;                           /**< Watchdog Timer Output Register Low, offset: 0x12 */
  volatile uint16_t RSTCNT;                            /**< Watchdog Reset Count register, offset: 0x14 */
  volatile uint16_t PRESC;                             /**< Watchdog Prescaler register, offset: 0x16 */
} WDOG_Type;

/* ----------------------------------------------------------------------------
   -- WDOG Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup WDOG_Register_Masks WDOG Register Masks
 * @{
 */

/* STCTRLH Bit Fields */
#line 9245 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
/* STCTRLL Bit Fields */


/* TOVALH Bit Fields */



/* TOVALL Bit Fields */



/* WINH Bit Fields */



/* WINL Bit Fields */



/* REFRESH Bit Fields */



/* UNLOCK Bit Fields */



/* TMROUTH Bit Fields */



/* TMROUTL Bit Fields */



/* RSTCNT Bit Fields */



/* PRESC Bit Fields */




/**
 * @}
 */ /* end of group WDOG_Register_Masks */


/* WDOG - Peripheral instance base addresses */
/** Peripheral WDOG base address */

/** Peripheral WDOG base pointer */

/** Array initializer of WDOG peripheral base pointers */


/**
 * @}
 */ /* end of group WDOG_Peripheral_Access_Layer */


/*
** End of section using anonymous unions
*/

#line 9318 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"
  #pragma language=default




/**
 * @}
 */ /* end of group Peripheral_access_layer */


/* ----------------------------------------------------------------------------
   -- Backward Compatibility
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup Backward_Compatibility_Symbols Backward Compatibility
 * @{
 */

#line 9356 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\DeviceSupport\\MK60D10.h"

/**
 * @}
 */ /* end of group Backward_Compatibility_Symbols */




/* MK60D10.h, eof. */
#line 37 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\common.h"
#line 60 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\common.h"

/* configuration */





/* version information */




/* CH_Kinetis version */



//参数检测器
#line 92 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\common.h"
  
#line 99 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\common.h"

/**
 * \enum  FunctionalState
 * \brief disable or enable
 */
typedef enum 
{
    DISABLE = 0,        /**< 不使能 */
    ENABLE = !DISABLE,  /**< 使能 */
}FunctionalState;







































/**
 * \struct map_t
 * \brief QuickInitType
 */
typedef struct
{
    uint32_t ip:3;
    uint32_t io:3;
    uint32_t mux:3;
    uint32_t pin_start:5;
    uint32_t pin_cnt:5;
    uint32_t chl:5;
    uint32_t reserved:8;
}map_t;

/**
 * \enum  Clock_t
 * \brief 时钟源定义
 */
typedef enum
{
    kCoreClock,     /**< core时钟频率 */
    kBusClock,      /**< 总线时钟频率 */
    kFlexBusClock,  /**< Flex总线时钟频率 */
    kFlashClock,    /**< flash时钟频率 */
    kMCGOutClock,   /**< MCG模块输出时钟频率 */
}Clock_t; 

/**
 * \struct Reg_t
 * \brief 寄存器变量
 */
typedef struct 
{
    void *      addr;
    uint32_t    mask;
    uint32_t    shift;
}Reg_t;

/**
 * \brief 系统软复位
 */
static inline void SystemSoftReset(void)
{
    NVIC_SystemReset();
}



void DelayMs(uint32_t ms);
void DelayUs(uint32_t us);
void DelayInit(void);
uint32_t GetClock(Clock_t clockName);
uint32_t QuickInitEncode(map_t * type);
void QuickInitDecode(uint32_t map, map_t* type);
void EnterSTOPMode(_Bool enSleepOnExit);
uint32_t GetUID(void);

void DWT_DelayInit(void);
void DWT_DelayUs(uint32_t us);
void DWT_DelayMs(uint32_t ms);





#line 19 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\chlib_k.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\gpio.h"
/**
  * @file    gpio.h
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.24 vdsav avfdsfdsafasgdsa
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com 
  * @note    此文件为芯片GPIO模块的底层功能函数
  */







#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */
#line 235 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

#line 258 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 17 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\gpio.h"


/* GPIO端口定义 */
#line 26 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\gpio.h"

/**
 * \enum PORT_PinMux_Type
 * \brief 端口复用选择
 * \see Signal Multiplexing and Signal Descriptions 章节
 */
typedef enum
{
    kPinAlt0,  /**<0功能复用*/
    kPinAlt1,  /**<1功能复用*/
    kPinAlt2,  /**<2功能复用*/
    kPinAlt3,  /**<3功能复用*/
    kPinAlt4,  /**<4功能复用*/
    kPinAlt5,  /**<5功能复用*/
    kPinAlt6,  /**<6功能复用*/
    kPinAlt7,  /**<7功能复用*/
}PORT_PinMux_Type;

/**
 * \enum PORT_Pull_Type
 * \brief 端口上下拉配置 ，电阻阻值约为20K
 */
typedef enum
{
    kPullDisabled,  /**<关闭上下拉电阻功能*/
    kPullUp,        /**<开启上拉电阻功能*/
    kPullDown,      /**<开启下拉电阻功能*/
}PORT_Pull_Type;

/**
 * \enum GPIO_Mode_Type
 * \brief GPIO端口模式配置
 */
typedef enum
{
    kGPIO_Mode_IFT = 0x00,       /**< 浮空输入 */
    kGPIO_Mode_IPD = 0x01,       /**< 下拉输入 */
    kGPIO_Mode_IPU = 0x02,       /**< 上拉输入 */
    kGPIO_Mode_OOD = 0x03,       /**< 开漏输出 */
    kGPIO_Mode_OPP = 0x04,       /**< 推挽输出 */
}GPIO_Mode_Type;

/**
 * \enum GPIO_PinConfig_Type
 * \brief 端口输入输出模式选择
 */
typedef enum
{
    kInput,                  /**< 引脚输入模式 */
    kOutput,                 /**< 引脚输出模式 */
}GPIO_PinConfig_Type;

/**
 * \enum GPIO_ITDMAConfig_Type
 * \brief 端口中断及DMA配置选择
 */
typedef enum
{
    kGPIO_DMA_RisingEdge,	      /**<上升沿触发DMA*/
    kGPIO_DMA_FallingEdge,        /**<下降沿触发DMA*/
    kGPIO_DMA_RisingFallingEdge,  /**<上升沿和下降沿触发DMA*/
    kGPIO_IT_Low,                 /**<低电平出发中断*/
    kGPIO_IT_RisingEdge,          /**<上升沿触发中断*/
    kGPIO_IT_FallingEdge,         /**<下降沿触发中断*/
    kGPIO_IT_RisingFallingEdge,   /**<上升沿和下降沿触发中断*/
    kGPIO_IT_High,                /**<高电平触发中断*/
}GPIO_ITDMAConfig_Type;

/**
 * \struct DAC_InitTypeDef
 * \brief GPIO端口初始化结构体 
 */
typedef struct
{
    uint8_t                instance;    ///<引脚端口HW_GPIOA~HW_GPIOF
    GPIO_Mode_Type         mode;        ///<工作模式
    uint32_t               pinx;        ///<引脚号0~31
}GPIO_InitTypeDef;

/* 端口中断回调函数定义 */
typedef void (*GPIO_CallBackType)(uint32_t pinxArray);


/* 位带操作 内存偏移计算 详见 Cortex-M4 Generic User Guide 2.25 */
/* CM4中有2块bitband区域 0x2000_0000-0x200F_FFFF 映射至 0x2200_0000-0x23FF_FFFF
                         0x4000_0000-0x4000_FFFF 映射至 0x4200_0000-0x43FF_FFFF
*/


  


















//!< API functions
void GPIO_Init(GPIO_InitTypeDef * GPIO_InitStruct);
uint8_t GPIO_QuickInit(uint32_t instance, uint32_t pinx, GPIO_Mode_Type mode);
void GPIO_WriteBit(uint32_t instance, uint8_t pin, uint8_t data);
uint8_t GPIO_ReadBit(uint32_t instance, uint8_t pin);
void GPIO_ToggleBit(uint32_t instance, uint8_t pin);
void GPIO_SetBit(uint32_t instance, uint32_t pin);
void GPIO_ResetBit(uint32_t instance, uint32_t pin);
void GPIO_ITDMAConfig(uint32_t instance, uint8_t pin, GPIO_ITDMAConfig_Type config, _Bool status);
void GPIO_CallbackInstall(uint32_t instance, GPIO_CallBackType AppCBFun);
//!< low level functions
void PORT_PinPullConfig(uint32_t instance, uint8_t pin, PORT_Pull_Type pull);
void GPIO_PinConfig(uint32_t instance, uint8_t pin, GPIO_PinConfig_Type mode);
void PORT_PinMuxConfig(uint32_t instance, uint8_t pin, PORT_PinMux_Type pinMux);
uint32_t GPIO_ReadPort(uint32_t instance);
void GPIO_WritePort(uint32_t instance, uint32_t data);
void PORT_PinOpenDrainConfig(uint32_t instance, uint8_t pin, _Bool status);
void PORT_PinPassiveFilterConfig(uint32_t instance, uint8_t pin, _Bool status);
    







#line 20 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\chlib_k.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\adc.h"
/**
  ******************************************************************************
  * @file    adc.h
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.25
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com 
  * @note    此文件为芯片ADC模块的底层功能函数
  ******************************************************************************
  */







#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */
#line 235 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

#line 258 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 19 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\adc.h"


/* ADC外设模块号 */





/* ADC 快速初始化宏 */
#line 75 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\adc.h"

/**
 * \enum  ADC_ClockDiv_Type
 * \brief ADC 转换时钟分频因子,控制转换速度
 */
typedef enum
{
    kADC_ClockDiv1,         /**<不分频*/
    kADC_ClockDiv2,         /**<2分频*/
    kADC_ClockDiv4,         /**<4分频*/
    kADC_ClockDiv8,         /**<8分频*/
}ADC_ClockDiv_Type;         

/**
 * \enum ADC_ResolutionMode_Type
 * \brief ADC转换精度定义
 */
typedef enum
{
    kADC_SingleDiff8or9 = 0,    /**< 单端8位或 差分9位精度 */
    kADC_SingleDiff12or13 = 1,  /**< 单端12位或 差分13位精度*/
    kADC_SingleDiff10or11 = 2,  /**< 单端10位或 差分11位精度*/
    kADC_SingleDIff16 = 3,      /**< 单端/差分16位精度*/
}ADC_ResolutionMode_Type;

/**
 * \enum ADC_TriggerSelect_Type
 * \brief ADC 触发方式定义
 */
typedef enum
{
    kADC_TriggerSoftware,  /**<软件触发*/
    kADC_TriggerHardware,  /**<硬件触发*/
}ADC_TriggerSelect_Type;


/**
 * \enum ADC_ContinueMode_Type
 * \brief 是否连续转换
 */
typedef enum
{
    kADC_ContinueConversionEnable,   /**<开启连续转换*/
    kADC_ContinueConversionDisable,  /**<关闭连续转换*/
}ADC_ContinueMode_Type;

/**
 * \enum ADC_SingleOrDiffMode_Type
 * \brief 单端ADC还是差分ADC
 */
typedef enum
{
    kADC_Single,         /**<单端模式*/
    kADC_Differential,   /**<差分模式*/
}ADC_SingleOrDiffMode_Type;



//!< ADC 通道触发器复用选择(每个ADC通道有2个ADC转换触发器 为MuxA 和 MuxB. MuxB 只能硬件触发)



//!< ADC 通道复用选择(SEA 还是SEB) 硬件通道选择 

/**
 * \enum ADC_VoltageRef_Type
 * \brief 模拟电压参考源
 */
typedef enum
{
    kADC_VoltageVREF,  /**< 使用外部引脚VREFH VREFL 作为参考电源 */
    kADC_VoltageVALT,  /**< 可选的第二电压参考源 不同的型号可能连接到不同的模块上 K60DN512Vxxx 连接到 VREF模块 */
}ADC_VoltageRef_Type;

/**
 * \enum ADC_HardwareAveMode_Type
 * \brief 硬件平均
 */
typedef enum
{
    kADC_HardwareAverageDisable,    /**<关闭硬件平均*/
    kADC_HardwareAverage_4,         /**<4均值*/
    kADC_HardwareAverage_8,         /**<8均值*/
    kADC_HardwareAverage_16,        /**<16均值*/
    kADC_HardwareAverage_32,        /**<32均值*/
}ADC_HardwareAveMode_Type;

/**
 * \enum ADC_ITDMAConfig_Type
 * \brief ADC中断及DMA配置选择
 */
typedef enum
{
    kADC_IT_Disable,        /**<AD中断功能禁止*/
    kADC_DMA_Disable,       /**<ADC DMA功能禁止*/
    kADC_IT_EOF,            /**<打开ADC 转换完成中断*/
    kADC_DMA_EOF,           /**<打开ADC DMA 完成中断*/
}ADC_ITDMAConfig_Type;

//!< ADC 回调函数定义
typedef void (*ADC_CallBackType)(void);

/**
 * \struct ADC_ITDMAConfig_Type
 * \brief ADC 初始化结构
 */
typedef struct
{
    uint32_t                    instance;                   ///<模块号
    ADC_TriggerSelect_Type      triggerMode;                ///<触发模式 软件触发 或 硬件触发
    ADC_ClockDiv_Type           clockDiv;                   ///<ADC时钟分频
    ADC_ResolutionMode_Type     resolutionMode;             ///<分频率选择 8 10 12 16位精度等
    ADC_SingleOrDiffMode_Type   singleOrDiffMode;           ///<单端 还是 差分输入
    ADC_ContinueMode_Type       continueMode;               ///<是否启动连续转换
    ADC_HardwareAveMode_Type    hardwareAveMode;            ///<硬件平均功能选择
    ADC_VoltageRef_Type         vref;                       ///<模拟电压参考源
}ADC_InitTypeDef;


//!< API functions
void ADC_CallbackInstall(uint32_t instance, ADC_CallBackType AppCBFun);
void ADC_Init(ADC_InitTypeDef* ADC_InitStruct);
uint8_t ADC_QuickInit(uint32_t MAP, ADC_ResolutionMode_Type resolutionMode);
void ADC_ITDMAConfig(uint32_t instance, uint32_t mux, ADC_ITDMAConfig_Type config);
int32_t ADC_QuickReadValue(uint32_t MAP);
int32_t ADC_ReadValue(uint32_t instance, uint32_t mux);
void ADC_StartConversion(uint32_t instance, uint32_t chl, uint32_t mux);
uint8_t ADC_IsConversionCompleted(uint32_t instance, uint32_t mux);
void ADC_ChlMuxConfig(uint32_t instance, uint32_t mux);
int32_t ADC_Calibration(uint32_t instance);
//hardware trigger 
void ADC_EnableHardwareTrigger(uint32_t instance, _Bool status);







#line 21 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\chlib_k.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\can.h"
/**
  ******************************************************************************
  * @file    can.c
  * @author  YANDLD
  * @version V2.5
  * @date    2014.4.10
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com
  ******************************************************************************
  */








#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */
#line 235 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

#line 258 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 19 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\can.h"


//!< hardware instances



//CAN总线速度选择
typedef enum
{
    kCAN_20K,
	kCAN_25K,
	kCAN_50K,
	kCAN_100K,
	kCAN_125K,
	kCAN_250K,
	kCAN_500K,
	kCAN_1000K,
}CAN_Baudrate_Type;

typedef struct
{
    uint32_t                instance;  //CAN通信端口 HW_CAN0/HW_CAN1
    CAN_Baudrate_Type       baudrate;  //CAN通信速度设置
}CAN_InitTypeDef;


//!< CAN QuickInit macro






/*!< 中断及DMA配置 */
typedef enum
{
    kCAN_IT_Tx_Disable,  //关闭发送中断
    kCAN_IT_Rx_Disable,  //关闭接收中断
    kCAN_IT_Tx,          //开启发送中断
    kCAN_IT_RX,          //开启接收中断
}CAN_ITDMAConfig_Type;

/*!< CAN 回调函数声明 */
typedef void (*CAN_CallBackType)(void);

//!< API functions
void CAN_SetRxFilterMask(uint32_t instance, uint32_t mb, uint32_t mask);
uint32_t CAN_WriteData(uint32_t instance, uint32_t mb, uint32_t id, uint8_t* buf, uint8_t len);
uint32_t CAN_WriteRemote(uint32_t instance, uint32_t mb, uint32_t id, uint8_t len);
uint32_t CAN_ReadData(uint32_t instance, uint32_t mb, uint32_t *id, uint8_t *buf, uint8_t *len);
uint32_t CAN_QuickInit(uint32_t CANxMAP, CAN_Baudrate_Type baudrate);
void CAN_ITDMAConfig(uint32_t instance, uint32_t mb, CAN_ITDMAConfig_Type config);
void CAN_SetRxMB(uint32_t instance, uint32_t mb, uint32_t id);
void CAN_CallbackInstall(uint32_t instance, CAN_CallBackType AppCBFun);
void CAN_Init(CAN_InitTypeDef* CAN_InitStruct);





#line 22 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\chlib_k.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\uart.h"
/**
  ******************************************************************************
  * @file    uart.h
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.25
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com
  * @note    此文件为芯片UART模块的底层功能函数
  ******************************************************************************
  */







#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */
#line 235 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

#line 258 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 19 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\uart.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"
/* stdio.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */
#line 241 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"

#line 292 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"

/*
 * Copyright (c) 1992-2002 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 21 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\uart.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\dma.h"
/**
  ******************************************************************************
  * @file    dma.h
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.26
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com 
  * @note    此文件为芯片DMA模块的底层功能函数
  ******************************************************************************
  */


  
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */
#line 235 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

#line 258 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 15 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\dma.h"


/* DMA 触发源选择 */
#line 79 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\dma.h"

/* DMA通道 */





/**
 * \enum DMA_TriggerSource_Type
 * \brief DMA 触发模式选择
 */
typedef enum
{
    kDMA_TriggerSource_Normal,    /**< 正常模式 */
    kDMA_TriggerSource_Periodic,  /**< 周期触发模式 */
}DMA_TriggerSource_Type;

/**
 * \enum DMA_DataWidthBit_Type
 * \brief DMA搬运数据端口位宽设置
 */
typedef enum
{
    kDMA_DataWidthBit_8,   /**< 8 bit data width */
    kDMA_DataWidthBit_16,  /**< 16 bit data width */
    kDMA_DataWidthBit_32,  /**< 32 bit data width */
}DMA_DataWidthBit_Type; 

/**
 * \enum DMA_Modulo_Type
 * \brief DMA Moduluo 设置
 */
typedef enum 
{
    kDMA_ModuloDisable = 0x0U,
    kDMA_Modulo2bytes = 0x1U,
    kDMA_Modulo4bytes = 0x2U,
    kDMA_Modulo8bytes = 0x3U,
    kDMA_Modulo16bytes = 0x4U,
    kDMA_Modulo32bytes = 0x5U,
    kDMA_Modulo64bytes = 0x6U,
    kDMA_Modulo128bytes = 0x7U,
    kDMA_Modulo256bytes = 0x8U,
    kDMA_Modulo512bytes = 0x9U,
    kDMA_Modulo1Kbytes = 0xaU,
    kDMA_Modulo2Kbytes = 0xbU,
    kDMA_Modulo4Kbytes = 0xcU,
    kDMA_Modulo8Kbytes = 0xdU,
    kDMA_Modulo16Kbytes = 0xeU,
    kDMA_Modulo32Kbytes = 0xfU,
    kDMA_Modulo64Kbytes = 0x10U,
    kDMA_Modulo128Kbytes = 0x11U,
    kDMA_Modulo256Kbytes = 0x12U,
    kDMA_Modulo512Kbytes = 0x13U,
    kDMA_Modulo1Mbytes = 0x14U,
    kDMA_Modulo2Mbytes = 0x15U,
    kDMA_Modulo4Mbytes = 0x16U,
    kDMA_Modulo8Mbytes = 0x17U,
    kDMA_Modulo16Mbytes = 0x18U,
    kDMA_Modulo32Mbytes = 0x19U,
    kDMA_Modulo64Mbytes = 0x1aU,
    kDMA_Modulo128Mbytes = 0x1bU,
    kDMA_Modulo256Mbytes = 0x1cU,
    kDMA_Modulo512Mbytes = 0x1dU,
    kDMA_Modulo1Gbytes = 0x1eU,
    kDMA_Modulo2Gbytes = 0x1fU
} DMA_Modulo_Type;

/**
 * \struct DMA_InitTypeDef
 * \brief DMA 初始化结构
 */
typedef struct 
{
    uint8_t                     chl;                                ///< DMA通道号0~15      
    uint8_t                     chlTriggerSource;                   ///< DMA触发源选择 
    uint16_t                    minorLoopByteCnt;                   ///< MINOR LOOP 中一次传输的字节数 
    uint16_t                    majorLoopCnt;                       ///< MAJOR LOOP 循环次数 
    DMA_TriggerSource_Type      triggerSourceMode;                  ///< 触发模式选择 
    /* 源地址配置 */
    int32_t                     sAddrOffset;                ///< DMA每次读取sAddr之后 sAddr的偏移量 可正可负 
    uint32_t                    sAddr;                      ///< 数据源地址 
    DMA_DataWidthBit_Type       sDataWidth;                 ///< 数据源地址数据宽度 8 16 32 
    int32_t                     sLastAddrAdj;               ///< 所有MAJOR LOOP循环完成后 源地址偏移量 
    DMA_Modulo_Type             sMod;                       ///< Modulo 设置 参见 AN2898 
    /* 目标地址属性配置 */
    int32_t                     dAddrOffset;                
    uint32_t                    dAddr;                      
    DMA_DataWidthBit_Type       dDataWidth;                 
    int32_t                     dLastAddrAdj;               
    DMA_Modulo_Type             dMod;                       
}DMA_InitTypeDef;

/**
 * \enum DMA_ITConfig_Type
 * \brief DMA interrupt select
 */
typedef enum
{
    kDMA_IT_Half,               /**< 传输一半中断开启 */
    kDMA_IT_Major,              /**< 传输完成中断开启 */
}DMA_ITConfig_Type;  

/* Callback Type */
typedef void (*DMA_CallBackType)(void);

/* API functions */
uint32_t DMA_ChlAlloc(void);
void DMA_ChlFree(uint32_t chl);
uint32_t DMA_Init(DMA_InitTypeDef *DMA_InitStruct);
/* get vars and status */
uint32_t DMA_GetDestAddress(uint8_t ch);
uint32_t DMA_GetSourceAddress(uint8_t ch);
uint8_t DMA_IsMajorLoopComplete(uint8_t chl);
uint32_t DMA_GetMajorLoopCount(uint8_t chl);
/* control */
void DMA_SetMajorLoopCounter(uint8_t chl, uint32_t val);
void DMA_CancelTransfer(void);
void DMA_SetDestAddress(uint8_t chl, uint32_t address);
void DMA_SetSourceAddress(uint8_t chl, uint32_t address);
void DMA_EnableRequest(uint8_t chl);
void DMA_DisableRequest(uint8_t chl);
void DMA_EnableAutoDisableRequest(uint8_t chl , _Bool flag);
/* IT funtions */
void DMA_ITConfig(uint8_t chl, DMA_ITConfig_Type config, _Bool status);
void DMA_CallbackInstall(uint8_t chl, DMA_CallBackType AppCBFun);
/* chl link */
void DMA_EnableMajorLink(uint8_t chl , uint8_t linkChl, _Bool flag);



  
#line 22 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\uart.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\App\\Module_Init\\Module_Init.h"
/**
  ******************************************************************************
  * @file    Module_Init.c
  * @author  Donatello
  * @version V1.0
  * @date    2015.9.16
  * @brief
  ******************************************************************************
  */
/*
*********************************************************************************************************
*                                             INCLUDE FILES
*********************************************************************************************************
*/
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\rtc.h"
/**
  ******************************************************************************
  * @file    rtc.h
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.26
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com 
  ******************************************************************************
  */



#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */
#line 235 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

#line 258 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 14 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\rtc.h"


/**
 * \struct RTC_DateTime_Type
 * \brief RTC初始化结构
 */
typedef struct 
{
   uint16_t year;    ///< 年Range from 200 to 2099.
   uint16_t month;   ///< 月Range from 1 to 12.
   uint16_t day;     ///< 日Range from 1 to 31 (depending on month).
   uint16_t hour;    ///< 时Range from 0 to 23.
   uint16_t minute;  ///< 分Range from 0 to 59.
   uint8_t second;   ///< 秒Range from 0 to 59.
}RTC_DateTime_Type;

/**
 * \enum RTC_OscLoad_Type
 * \brief RTC内置电容补偿
 */
typedef enum
{
    kRTC_OScLoad_0PF,       /**< Oscillator 0pF Load */
    kRTC_OScLoad_2PF,       /**< Oscillator 2pF Load */
    kRTC_OScLoad_4PF,       /**< Oscillator 4pF Load */
    kRTC_OScLoad_8PF,       /**< Oscillator 8pF Load */
    kRTC_OScLoad_16PF,      /**< Oscillator 16pF Load */
}RTC_OscLoad_Type;

/**
 * \struct RTC_InitTypeDef
 * \brief OSC 电容负载
 */
typedef struct
{
    RTC_OscLoad_Type        oscLoad;            // OSC 电容负载
}RTC_InitTypeDef;

/**
 * \enum RTC_ITDMAConfig_Type
 * \brief RTC interrupt and DMA select
 */
typedef enum
{
    kRTC_IT_TimeAlarm,             /**< 开启闹钟中断 */
    kRTC_IT_TimeOverflow,          /**< 开启时间溢出中断 */    
}RTC_ITDMAConfig_Type;

//!< CallbackType
typedef void (*RTC_CallBackType)(void);

//!<API functions
void RTC_QuickInit(void);
void RTC_GetDateTime(RTC_DateTime_Type * datetime);
void RTC_SetDateTime(RTC_DateTime_Type * datetime);
void RTC_ITDMAConfig(RTC_ITDMAConfig_Type config, _Bool status);
uint32_t RTC_IsTimeValid(void);
void RTC_CallbackInstall(RTC_CallBackType AppCBFun);

void RTC_Init(RTC_InitTypeDef * RTC_InitStruct);
int  RTC_GetWeekFromYMD(int year, int month, int days);
uint32_t RTC_GetTSR(void);
void RTC_SetTSR(uint32_t val);
void RTC_SetAlarm(RTC_DateTime_Type * datetime);
void RTC_SetCompensation(uint32_t compensationInterval, uint32_t timeCompensation);



#line 19 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\App\\Module_Init\\Module_Init.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\i2c.h"
/**
  ******************************************************************************
  * @file    i2c.h
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.26
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com
  * @note    此文件为芯片IIC模块的底层功能函数
  ******************************************************************************
  */







#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */
#line 235 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

#line 258 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 19 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\i2c.h"


typedef struct
{
    uint32_t instance;    //!< I2C pin select
    uint32_t baudrate;   //!< baudrate some common baudrate: 48000Hz 76000Hz 96000Hz 376000Hz
}I2C_InitTypeDef;







//!< I2C QuickInit macro
#line 44 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\i2c.h"
typedef enum
{
    kI2C_Read,                  //!< I2C Master Read Data
    kI2C_Write,                 //!< I2C Master Write Data
    kI2C_DirectionNameCount,
}I2C_Direction_Type;

typedef enum
{
    kI2C_IT_Disable,        //!< Disable Interrupt
    kI2C_DMA_Disable,       //!< Disable DMA
    kI2C_IT_BTC,            //!< Byte Transfer Complete Interrupt
    kI2C_DMA_BTC,           //!< DMA Trigger On Byte Transfer Complete
}I2C_ITDMAConfig_Type;


//!< I2C CallBack Type
typedef void (*I2C_CallBackType)(void);


uint8_t I2C_QuickInit(uint32_t MAP, uint32_t baudrate);

int I2C_BurstWrite(uint32_t instance ,uint8_t chipAddr, uint32_t addr, uint32_t addrLen, uint8_t *buf, uint32_t len);
int I2C_WriteSingleRegister(uint32_t instance, uint8_t chipAddr, uint8_t addr, uint8_t data);

int I2C_BurstRead(uint32_t instance ,uint8_t chipAddr, uint32_t addr, uint32_t addrLen, uint8_t *buf, uint32_t len);
int I2C_ReadSingleRegister(uint32_t instance, uint8_t chipAddr, uint8_t addr, uint8_t *data);

int SCCB_ReadSingleRegister(uint32_t instance, uint8_t chipAddr, uint8_t addr, uint8_t* data);
int SCCB_WriteSingleRegister(uint32_t instance, uint8_t chipAddr, uint8_t addr, uint8_t data);

/* test function */
int I2C_Probe(uint32_t instance, uint8_t chipAddr);
void I2C_Scan(uint32_t MAP);









#line 20 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\App\\Module_Init\\Module_Init.h"





void Init_Timer_Cnt(void);

#line 24 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\uart.h"
/*!< UART 硬件模块号 */
#line 31 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\uart.h"

/*!< UART 快速初始化宏 */
#line 52 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\uart.h"
/*!< parity 选择 */
typedef enum
{
    kUART_ParityDisabled = 0x0,  // 校验位禁止
    kUART_ParityEven     = 0x2,  // 1位 奇校验
    kUART_ParityOdd      = 0x3,  // 1位 偶校验
} UART_ParityMode_Type;

/*!< 每帧数据位个数 */
typedef enum
{
    kUART_8BitsPerChar  = 0,   // 8-bit 数据 不包括校验位
    kUART_9BitsPerChar  = 1,   // 9-bit 数据 不包括校验位
} UART_BitPerChar_Type;

/*!< 中断及DMA配置 */
typedef enum
{
    kUART_IT_Tx,                // 开启每发送一帧传输完成中断
    kUART_DMA_Tx,               // 开启每发送一帧传输完成触发DMA
    kUART_IT_Rx,                // 开启每接收一帧传输完成中断
    kUART_DMA_Rx,               // 开启每接收一帧传输完成触发DMA
}UART_ITDMAConfig_Type;

/*!< UART初始化结构 */
typedef struct
{
    uint32_t                srcClock;       // 时钟源频率
    uint8_t                 instance;       // UART 模块号 HW_UART0~HW_UART5
    uint32_t                baudrate;       // UART 波特率
    UART_ParityMode_Type    parityMode;     // UART 校验位
    UART_BitPerChar_Type    bitPerChar;     // UART 每一帧含多少位数据
}UART_InitTypeDef;

//uart dma
#line 96 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\uart.h"
/*!< 串口通讯控制块 */
typedef struct
{
	unsigned char	CommStatus;		//通讯状态
	unsigned char	RxdPackDelayCnt;
	unsigned char	TxdDelay;
	unsigned short	RxdByteCnt;		//接收字节记数
	unsigned short	TxdPackByteCnt;
	unsigned short	TxdPackLength;	//发送包长度
}USART_CtrolBlock;

/*!< UART DMA */
void UART_SetDMATxMode(uint32_t instance, _Bool status);
void UART_DMASendByte(uint32_t instance, uint8_t* buf, uint32_t size);


/*!< UART 回调函数声明 */
typedef void (*UART_CallBackTxType)(uint16_t * pbyteToSend);
typedef void (*UART_CallBackRxType)(uint16_t byteReceived);

/*!< API functions */

uint8_t UART_QuickInit(uint32_t MAP, uint32_t baudrate);
void UART_Init(UART_InitTypeDef * UART_InitStruct);
void UART_DeInit(uint32_t instance);
int UART_printf(const char *format,...);
uint8_t UART_ReadByte(uint32_t instance, uint16_t *ch);
void UART_WriteByte(uint32_t instance, uint16_t ch);
void UART_SelectDebugInstance(uint32_t instance);

/* FIFO functions */
void UART_EnableTxFIFO(uint32_t instance, _Bool status);
void UART_EnableRxFIFO(uint32_t instance, _Bool status);
uint32_t UART_GetTxFIFOSize(uint32_t instance);
uint32_t UART_GetRxFIFOSize(uint32_t instance);
void UART_SetTxFIFOWatermark(uint32_t instance, uint32_t size);
void UART_SetRxFIFOWatermark(uint32_t instance, uint32_t size);

/* Interrupt and DMA functions */
void UART_CallbackTxInstall(uint32_t instance, UART_CallBackTxType AppCBFun);
void UART_CallbackRxInstall(uint32_t instance, UART_CallBackRxType AppCBFun);
void UART_ITDMAConfig(uint32_t instance, UART_ITDMAConfig_Type config, _Bool status);
int UART_printf(const char *fmt, ...);


/* DMA support */

/*
uint32_t UART_Init();
uint32_t UART_Config();
void UART_SendData();
uint8_t UART_GetData();
*/
int UART_printf(const char *format,...);
void UART_DMASetCmd(uint32_t instance, uint32_t dir, _Bool status);
void UART_DMASendData(uint32_t instance, uint8_t *buf, uint32_t len);
void UART_DMAGetRemain(uint32_t instacne, uint32_t dir);


//!< param check






//!< UART dma
/* UART 模块数据寄存器 */
static const void* UART_DataPortAddrTable[] =
{
    (void*)&((UART_Type *)(0x4006A000u))->D,
    (void*)&((UART_Type *)(0x4006B000u))->D,
    (void*)&((UART_Type *)(0x4006C000u))->D,
    (void*)&((UART_Type *)(0x4006D000u))->D,
    (void*)&((UART_Type *)(0x400EA000u))->D,
    (void*)&((UART_Type *)(0x400EB000u))->D,
};
/* UART 发送触发源编号 */
static const uint32_t UART_SendDMATriggerSourceTable[] =
{
    3,
    5,
    7,
    9,
    11,
    13,
};
/* UART 接收触发源编号 */
static const uint32_t UART_RevDMATriggerSourceTable[] =
{
    2,
    4,
    6,
    8,
    10,
    12,
};

/* 定义使用的DMA通道号 */





/* Public functions ---------------------------------------------------------*/

uint32_t UART_SendWithDMA(uint32_t dmaChl, const uint8_t *buf, uint32_t size);

void UART_DMASendInit(uint32_t uartInstnace, uint8_t dmaChl, uint8_t * txBuf);

void UART_DMARevInit(uint32_t uartInstnace, uint8_t dmaChl, uint8_t * rxBuf);

void DMA_ISR(void);

void UART_SendString(uint32_t instance, uint8_t * str);

_Bool DMA_UartRxd(void);

void UART5_DMA_init(void);
/* Private functions ---------------------------------------------------------*/






#line 23 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\chlib_k.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\systick.h"
/**
  ******************************************************************************
  * @file    systick.h
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.26
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com 
  * @note    此文件为芯片ARM内核中的SysTick模块的底层功能函数
  ******************************************************************************
  */



#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */
#line 235 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

#line 258 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 15 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\systick.h"



void SYSTICK_DelayInit(void);
void SYSTICK_Init(uint32_t timeInUs);
void SYSTICK_Cmd(_Bool NewState);
void SYSTICK_ITConfig(_Bool NewState);
void SYSTICK_DelayUs(uint32_t us);
void SYSTICK_DelayMs(uint32_t ms);
uint32_t SYSTICK_GetVal(void);



#line 24 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\chlib_k.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\pit.h"
/**
  ******************************************************************************
  * @file    pit.h
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.24
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com 
  * @note    此文件为芯片PIT模块的底层功能函数
  ******************************************************************************
  */










/*PIT模块的通道*/





//!< PIT CallBack Type
typedef void (*PIT_CallBackType)(void);

/**
 * \struct PIT_InitTypeDef
 * \brief PIT初始化结构
 */
typedef struct
{
    uint8_t   chl;            ///<PIT模块通道选择
    uint32_t  timeInUs;       ///<定时时间单位为us
}PIT_InitTypeDef;

/**
 * \enum PIT_ITDMAConfig_Type
 * \brief PIT 中断DMA配置
 */
typedef enum
{
    kPIT_IT_TOF,            /**<定时器定时中断*/
}PIT_ITDMAConfig_Type;

//!< API functions
void PIT_Init(PIT_InitTypeDef* PIT_InitStruct);
void PIT_QuickInit(uint8_t chl, uint32_t timeInUs);
void PIT_ResetCounter(uint8_t chl);
uint32_t PIT_GetCounterValue(uint8_t chl);
void PIT_CallbackInstall(uint8_t chl, PIT_CallBackType AppCBFun);
void PIT_ITDMAConfig(uint8_t chl, PIT_ITDMAConfig_Type config, _Bool flag);





#line 25 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\chlib_k.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\dac.h"
/**
  ******************************************************************************
  * @file    dac.h
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.26
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com 
  ******************************************************************************
  */



#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */
#line 235 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

#line 258 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 14 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\dac.h"

/* DAC外设模块号 */




//!< DAC 回调函数定义
typedef void (*DAC_CallBackType)(void);

/**
 * \enum DAC_TriggerSelect_Type
 * \brief DAC Trigger Style
 */
typedef enum
{
    kDAC_TriggerSoftware,  /**<The DAC software trigger is selected.*/
    kDAC_TriggerHardware,  /**<The DAC hardware trigger is selected.*/
}DAC_TriggerSelect_Type;

/**
 * \enum DAC_BufferMode_Type
 * \brief DAC Buffer Work Mode Select
 */
typedef enum
{
    kDAC_Buffer_Disable,    /**<关闭DAC缓存*/
    kDAC_Buffer_Normal,     /**<开启DAC缓存*/
    kDAC_Buffer_Swing,      /**<dac摇摆模式*/
    kDAC_Buffer_OneTimeScan,/**<DAC一次浏览*/
}DAC_BufferMode_Type;

/**
 * \enum DAC_ReferenceSelect_Type
 * \brief DAC Reference Select
 */
typedef enum
{
    kDAC_Reference_1,       /**< 参考电压源 VREF_OUT */
    kDAC_Reference_2,       /**< 参考电压源 VDDA */
}DAC_ReferenceSelect_Type;

/**
 * \struct DAC_InitTypeDef
 * \brief DAC初始化结构
 */
typedef struct
{
    uint32_t                    instance;      ///<DAC模块号0~1
    DAC_TriggerSelect_Type      triggerMode;   ///<DAC触发模式
    DAC_BufferMode_Type         bufferMode;    ///<缓存类型
    DAC_ReferenceSelect_Type    referenceMode; ///<参考源选择
}DAC_InitTypeDef;

/**
 * \enum DAC_ITDMAConfig_Type
 * \brief DAC中断及DMA配置选择
 */
typedef enum
{
    kDAC_DMA_Disable,                       /**<disable DMA*/
    kDAC_IT_Disable,                        /**<disable interrupt*/
    kDAC_IT_BufferPointer_WaterMark,        /**<when read pointer reach watermask*/
    kDAC_IT_BufferPointer_TopFlag,          /**<when read pointer reach 0 */
    kDAC_IT_BufferPointer_BottomFlag,       /**<when read pointer reach upper limit */
    kDAC_DMA_BufferPointer_WaterMark,       /**<when read pointer reach watermask(DMA)*/
    kDAC_DMA_BufferPointer_TopFlag,         /**<when read pointer reach 0 (DMA)*/
    kDAC_DMA_BufferPointer_BottomFlag,      /**<when read pointer reach upper limit (DMA)*/
}DAC_ITDMAConfig_Type;
 
/**
 * \enum DAC_WaterMarkMode_Type
 * \brief DAC Buffer Watermark Select(1–4 words away from the upper limit)
 */
typedef enum
{
    kDAC_WaterMark_1Word,       /**<1个字*/
    kDAC_WaterMark_2Word,       /**<2个字*/
    kDAC_WaterMark_3Word,       /**<3个字*/
    kDAC_WaterMark_4Word,       /**<4个字*/
}DAC_WaterMarkMode_Type;

 //!< API functions
void DAC_Init(DAC_InitTypeDef* DAC_InitStruct);
void DAC_CallbackInstall(uint8_t instance, DAC_CallBackType AppCBFun);
void DAC_ITDMAConfig(uint32_t instance, DAC_ITDMAConfig_Type config);
uint32_t DAC_GetBufferReadPointer(uint32_t instance);
void DAC_SetBufferReadPointer(uint32_t instance, uint32_t value);
void DAC_SetBufferUpperLimit(uint32_t instance, uint32_t value);
void DAC_ITDMAConfig(uint32_t instance, DAC_ITDMAConfig_Type config);
void DAC_SetBufferValue(uint32_t instance, uint16_t* buf, uint8_t len);
void DAC_SetWaterMark(uint32_t instance, DAC_WaterMarkMode_Type value);
void DAC_SoftwareStartConversion(uint32_t instance);





#line 26 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\chlib_k.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\spi.h"
/**
  ******************************************************************************
  * @file    spi.h
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.26
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com 
  * @note    此文件为芯片SPI模块的底层功能函数
  ******************************************************************************
  */




#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */
#line 235 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

#line 258 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 16 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\spi.h"

  
/* SPI模块设备 */




/* Clock and Transfer Attributes Register */



/* SPI Chip select */





/**
 * \enum SPI_FrameFormat_Type
 * \brief SPI帧格式选择
 */
typedef enum
{
    kSPI_CPOL0_CPHA0,
    kSPI_CPOL0_CPHA1,
    kSPI_CPOL1_CPHA0,
    kSPI_CPOL1_CPHA1
}SPI_FrameFormat_Type;

/**
 * \enum SPI_Mode_Type
 * \brief SPI 主从设置
 */
typedef enum
{
    kSPI_Master,        /**< master device */
    kSPI_Slave,         /**< slave device */
} SPI_Mode_Type;

/**
 * \enum SPI_ITDMAConfig_Type
 * \brief SPI interrupt and DMA select
 */
typedef enum
{
    kSPI_IT_TCF,            /**< SPI传输一次完成中断使能 */
    kSPI_DMA_TFFF,          /**< transmit FIFO full */
    kSPI_DMA_RFDF,          /**< receive FIFO drain */
}SPI_ITDMAConfig_Type;

/**
 * \enum SPI_PCS_Type
 * \brief SPI 传输完成后CS信号是否保持选中状态
 */
typedef enum 
{
    kSPI_PCS_ReturnInactive  = 0,   /**< 传输完成后CS信号保持未选中状态(通常为返回高电平) */
    kSPI_PCS_KeepAsserted  = 1,     /**< 传输完成后CS信号保持片选中状态(通常为拉低) */
}SPI_PCS_Type;

/**
 * \enum SPI_BitOlder_Type
 * \brief SPI LSB or MSB
 */
typedef enum
{
    kSPI_MSB,      /**< 先发送最高位 */
    kSPI_LSB,      /**< 先发送最低位 */
} SPI_BitOlder_Type;

/**
 * \struct SPI_InitTypeDef
 * \brief SPI初始化结构
 */
typedef struct
{
    uint32_t                instance;               ///< 模块号
	SPI_Mode_Type           mode;                   ///< 主从模式
    uint8_t                 dataSize;               ///< 每帧数据有多少位 通常为8或16
    SPI_BitOlder_Type       bitOrder;               ///< 先发高位还是先发地位
    SPI_FrameFormat_Type    frameFormat;            ///< 四种帧格式选择
    uint32_t                baudrate;               ///< 速率
    uint32_t                ctar;                   ///< 帧格式寄存器选择 
}SPI_InitTypeDef;

/* 快速初始化结构 */
#line 108 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\spi.h"

/* Callback Type */
typedef void (*SPI_CallBackType)(void);

/* API functions */
void SPI_Init(SPI_InitTypeDef * SPI_InitStruct);
uint16_t SPI_ReadWriteByte(uint32_t instance,uint32_t ctar, uint16_t data, uint16_t CSn, SPI_PCS_Type csState);
void SPI_ITDMAConfig(uint32_t instance, SPI_ITDMAConfig_Type config, _Bool status);
void SPI_CallbackInstall(uint32_t instance, SPI_CallBackType AppCBFun);
uint32_t SPI_QuickInit(uint32_t MAP, SPI_FrameFormat_Type frameFormat, uint32_t baudrate);
void SPI_CTARConfig(uint32_t instance, uint32_t ctar, SPI_FrameFormat_Type frameFormat, uint8_t dataSize, uint8_t bitOrder, uint32_t baudrate);

/* FIFO functions */
void SPI_EnableTxFIFO(uint32_t instance, _Bool status);
void SPI_EnableRxFIFO(uint32_t instance, _Bool status);



#line 28 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\chlib_k.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\cpuidy.h"
/**
  ******************************************************************************
  * @file    cpuidy.h
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.24
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com 
  * @note    此文件为内部文件，用于获取芯片的出厂信息，少部分用户使用
  ******************************************************************************
  */



#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */
#line 235 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

#line 258 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 15 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\cpuidy.h"

/**
 * \enum  CPUIDY_MemSize_Type
 * \brief 芯片信息
 */
typedef enum
{
    kPFlashSizeInKB,   /**< 芯片内部的PFlash大小 */              
    kDFlashSizeInKB,   /**< 芯片内部的DFlash大小 */ 
    kFlexNVMSizeInKB,  /**< 芯片内部的FlexNVMFlash大小 */ 
    kEEPROMSizeInByte, /**< 芯片内部的EEPROM大小 */ 
    kRAMSizeInKB,      /**< 芯片内部的RAM大小 */ 
    kMemNameCount,     /**< 暂未定义 */
}CPUIDY_MemSize_Type;


/* API functions */
char *CPUIDY_GetFamID(void);
uint32_t CPUIDY_GetPinCount(void);
uint32_t CPUIDY_GetMemSize(CPUIDY_MemSize_Type memSizeName);
void CPUIDY_GetUID(uint32_t * UIDArray);




#line 30 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\chlib_k.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\enet.h"
/**
  ******************************************************************************
  * @file    enet.h
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.26
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com 
  * @note    此文件为芯片ENET模块的底层功能函数，具体应用请查看实例程序
  ******************************************************************************
  */ 








#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */
#line 235 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

#line 258 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 20 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\enet.h"

   

/* TX缓冲区描述符位定义 */
#line 31 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\enet.h"

/* TX增强型缓冲区描述符位定义 */
#line 44 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\enet.h"



/* RX缓冲区描述符位定义 */
// 0偏移标志 - 状态:大端格式
#line 62 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\enet.h"

/* RX增强型缓冲区描述符位定义 */




    










/* MII接口超时 */


/* 以太帧相关定义 */




/**
 * \struct NBUF
 * \brief 缓冲区描述符结构体
 */
typedef struct
{
    uint16_t status;	            ///< control and status 
  	uint16_t length;	            ///< transfer length 
    uint8_t  *data;	                ///< buffer address 
  	uint32_t ebd_status;
  	uint16_t length_proto_type;
  	uint16_t payload_checksum;
  	uint32_t bdu;
  	uint32_t timestamp;
  	uint32_t reserverd_word1;
  	uint32_t reserverd_word2;
} NBUF;

/**
 * \enum ENET_RMII_SpeedType
 * \brief ENET RMII速度设置
 */
typedef enum
{
    kENET_RMII_10M,     /**< 10M */
    kENET_RMII_100M,    /**< 100M */
}ENET_RMII_SpeedType;

/**
 * \struct ENET_InitTypeDef
 * \brief 以太网初始化结构
 */
typedef struct
{
    uint8_t* pMacAddress;
    _Bool is10MSpped;
    _Bool isHalfDuplex;
}ENET_InitTypeDef;
     
/**
 * \enum ENET_ITDMAConfig_Type
 * \brief ENET 中断DMA配置
 */
typedef enum
{
    kENET_IT_TXF_Disable,   /**< 禁止发送一帧后产生中断 */  
    kENET_IT_RXF_Disable,   /**< 禁止接收一帧后产生中断 */  
    kENET_IT_TXF,           /**< 开启ENET发送一帧中断 */ 
    kENET_IT_RXF,           /**< 开启ENET接收一帧中断 */
}ENET_ITDMAConfig_Type;

/* ENET CallBack Type */
typedef void (*ENET_CallBackTxType)(void);
typedef void (*ENET_CallBackRxType)(void);


/* RMII API */
void ENET_MII_Init(void);
_Bool ENET_MII_Read(uint16_t phy_addr, uint16_t reg_addr, uint16_t *data);
_Bool ENET_MII_Write(uint16_t phy_addr, uint16_t reg_addr, uint16_t data);

/* controller API */
void ENET_Init(ENET_InitTypeDef* ENET_InitStrut);
void ENET_MacSendData(uint8_t *data, uint16_t len);
uint16_t ENET_MacReceiveData(uint8_t *data);
void ENET_ITDMAConfig(ENET_ITDMAConfig_Type config);
void ENET_CallbackTxInstall(ENET_CallBackTxType AppCBFun);
void ENET_CallbackRxInstall(ENET_CallBackRxType AppCBFun);
_Bool ENET_IsTxTransferComplete(void);
uint32_t ENET_GetReceiveLen(void);










#line 32 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\chlib_k.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\ftm.h"
/**
  ******************************************************************************
  * @file    ftm.h
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.25
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com 
  * @note    此模块为芯片FTM模块的底层功能函数
  ******************************************************************************
  */







#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */
#line 235 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

#line 258 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 19 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\ftm.h"







#line 34 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\ftm.h"

/**
 * \enum FTM_DualChlConfig_Type
 * \brief FTM dual pin mode select
 */
typedef enum
{
	kFTM_Combine,                   /**<级联*/
    kFTM_Complementary,             /**<互补*/
    kFTM_DualEdgeCapture,           /**<双边沿捕捉*/
    kFTM_DeadTime,                  /**<deadtime insertion*/
    kFTM_Sync,                      /**<PWM synchronization*/
    kFTM_FaultControl,              /**<fault control*/
}FTM_DualChlConfig_Type;

/**
 * \enum FTM_Mode_Type
 * \brief internal use, FTM mode select
 */
typedef enum
{
    kFTM_Mode_EdgeAligned,          /**<边沿对齐*/
    kFTM_Mode_CenterAligned,        /**<中心对齐*/
    kFTM_Mode_Combine,              /**<级联*/
    kFTM_Mode_Complementary,        /**<互补*/
    kFTM_Mode_InputCapture,         /**<输入捕捉*/
    kFTM_Mode_QuadratureDecoder,    /**<正交解码*/
}FTM_Mode_Type;

/**
 * \enum FTM_PWM_Mode_Type
 * \brief PWM Mode Select
 */
typedef enum
{
	kPWM_EdgeAligned,           /**<边沿对齐 最常用*/
	kPWM_Combine,               /**<组合模式*/
    kPWM_Complementary,         /**<互补模式 类似组合模式 但是Chl(n) 和 Chl(n+1) 是互补输出*/
}FTM_PWM_Mode_Type;

/* PWM 极性反转 */



/**
 * \enum FTM_QD_PolarityMode_Type
 * \brief QD 正交解码
 */
typedef enum
{
    kFTM_QD_NormalPolarity,     /**<正常极性 */
    kFTM_QD_InvertedPolarity,   /**<反正极性 */
}FTM_QD_PolarityMode_Type;
 
/**
 * \enum FTM_QD_Mode_Type
 * \brief QD Mode Select
 */
typedef enum
{
	kQD_PHABEncoding,           /**< 使用AB相编码器 */
	kQD_CountDirectionEncoding, /**< 使用方向-脉冲型编码器 */
}FTM_QD_Mode_Type;

/**
 * \enum FTM_IC_Mode_Type
 * \brief FTM Input Capture Mode select
 */
typedef enum
{
	kFTM_IC_FallingEdge,        /**<上升沿*/
	kFTM_IC_RisingEdge,         /**<下降沿*/
	kFTM_IC_RisingFallingEdge,  /**<跳变沿*/
}FTM_IC_Mode_Type;

/**
 * \enum FTM_ITDMAConfig_Type
 * \brief FTM 中断及DMA 配置
 */
typedef enum
{
    kFTM_IT_TOF,                /**<定时器溢出中断*/
    kFTM_IT_CH0,                /**<通道0中断*/
    kFTM_IT_CH1,                /**<通道1中断*/
    kFTM_IT_CH2,                /**<通道2中断*/
    kFTM_IT_CH3,                /**<通道3中断*/
    kFTM_IT_CH4,                /**<通道4中断*/
    kFTM_IT_CH5,                /**<通道5中断*/
    kFTM_IT_CH6,                /**<通道6中断*/
    kFTM_IT_CH7,                /**<通道7中断*/
    kFTM_DMA_CH0,               /**<通道0DMA中断*/
    kFTM_DMA_CH1,               /**<通道1DMA中断*/
    kFTM_DMA_CH2,               /**<通道2DMA中断*/
    kFTM_DMA_CH3,               /**<通道3DMA中断*/
    kFTM_DMA_CH4,               /**<通道4DMA中断*/
    kFTM_DMA_CH5,               /**<通道5DMA中断*/
    kFTM_DMA_CH6,               /**<通道6DMA中断*/
    kFTM_DMA_CH7,               /**<通道7DMA中断*/
}FTM_ITDMAConfig_Type;
/**
 * \enum FTM_ClockDiv_Type
 * \brief 分频系数
 */
typedef enum
{
    kFTM_ClockDiv1,         /**<不分频*/
    kFTM_ClockDiv2,         /**<2分频*/
    kFTM_ClockDiv4,         /**<4分频*/
    kFTM_ClockDiv8,         /**<8分频*/
    kFTM_ClockDiv16,        /**<16分频*/
    kFTM_ClockDiv32,        /**<32分频*/
    kFTM_ClockDiv64,        /**<64分频*/
    kFTM_ClockDiv128,       /**<128分频*/
}FTM_ClockDiv_Type;

/* FTM PWM 快速初始化 */
#line 196 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\ftm.h"



/* FTM 正交解码快速初始化 */






/* Callback */
typedef void (*FTM_CallBackType)(void);

//!< API functions

/* PWM functions */
uint8_t FTM_PWM_QuickInit(uint32_t MAP, FTM_PWM_Mode_Type mode, uint32_t req);
void FTM_PWM_ChangeDuty(uint32_t instance, uint8_t chl, uint32_t pwmDuty);
void FTM_PWM_InvertPolarity(uint32_t instance, uint8_t chl, uint32_t config);
/* QD functions */
uint32_t FTM_QD_QuickInit(uint32_t MAP, FTM_QD_PolarityMode_Type polarity, FTM_QD_Mode_Type mode);
void FTM_QD_GetData(uint32_t instance, int* value, uint8_t* direction);
void FTM_QD_ClearCount(uint32_t instance);
/* IC functions */
void FTM_IC_QuickInit(uint32_t MAP, FTM_ClockDiv_Type ps);
void FTM_IC_SetTriggerMode(uint32_t instance, uint32_t chl, FTM_IC_Mode_Type mode);
/* IT & DMA config */
void FTM_ITDMAConfig(uint32_t instance, FTM_ITDMAConfig_Type config, _Bool flag);
void FTM_CallbackInstall(uint32_t instance, FTM_CallBackType AppCBFun);
/* control function */
uint32_t FTM_GetChlCounter(uint32_t instance, uint32_t chl);
void FTM_SetMoudleCounter(uint32_t instance, uint32_t val);












#line 33 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\chlib_k.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\lptmr.h"
/**
  ******************************************************************************
  * @file    lptmr.h
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.26
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com 
  ******************************************************************************
  */
	



#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */
#line 235 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

#line 258 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 15 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\lptmr.h"



//!LPTMR 回调函数声明
typedef void (*LPTMR_CallBackType)(void);

/**
 * \enum LPTMR_ITDMAConfig_Type
 * \brief LPTMR 中断DMA配置
 */
typedef enum
{
    kLPTMR_IT_TOF,            /**<开启计数器溢出中断 */
}LPTMR_ITDMAConfig_Type;

/**
 * \struct LPTMR_TC_InitTypeDef
 * \brief LPTMR 定时器功能 初始化
 */
typedef struct
{
    uint16_t        timeInMs;  ///<定时时间
}LPTMR_TC_InitTypeDef;

/**
 * \enum LPTMR_PC_IntputSource_Type
 * \brief LPTMR 脉冲计数源选择
 */
typedef enum
{
    kLPTMR_PC_InputSource_CMP0, /**< CMP0 作为脉冲计数时钟源 */
    kLPTMR_PC_InputSource_ALT1, /**< 外部引脚LPTMR_ALT1作为外部计数时钟源 */
    kLPTMR_PC_InputSource_ALT2, /**< 外部引脚LPTMR_ALT2作为外部计数时钟源 */
}LPTMR_PC_IntputSource_Type;

/**
 * \enum LPTMR_PC_PinPolarity_Type
 * \brief LPTMR 外部引脚作为计数时 触发极性选择
 */
typedef enum
{
    kLPTMR_PC_PinPolarity_RigsingEdge,  /**< 上升沿触发计数 */
    kLPTMR_PC_PinPolarity_FallingEdge,  /**< 下降沿触发计数 */
}LPTMR_PC_PinPolarity_Type;

/**
 * \struct LPTMR_PC_InitTypeDef
 * \brief LPTMR 用作外部单路脉冲技术 初始化
 */
typedef struct
{
    uint16_t                        counterOverflowValue;   ///< 脉冲累加器溢出阀值 最大0xFFFF 
    LPTMR_PC_IntputSource_Type      inputSource;            ///< 输入源选择 
    LPTMR_PC_PinPolarity_Type       pinPolarity;            ///< 输入捕捉极性选择 
}LPTMR_PC_InitTypeDef;

//!< 快速初始化结构 用于单路脉冲计数



//!< API functions
void LPTMR_TC_Init(LPTMR_TC_InitTypeDef* LPTMR_TC_InitStruct);
void LPTMR_PC_Init(LPTMR_PC_InitTypeDef* LPTMR_PC_InitStruct);
void LPTMR_ITDMAConfig(LPTMR_ITDMAConfig_Type config, _Bool status);
void LPTMR_CallbackInstall(LPTMR_CallBackType AppCBFun);
uint32_t LPTMR_PC_ReadCounter(void);
uint32_t LPTMR_PC_QuickInit(uint32_t MAP);
void LPTMR_ClearCounter(void);



#line 34 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\chlib_k.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\flexbus.h"
/**
  ******************************************************************************
  * @file    flexbus.h
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.26
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com 
  * @note    此文件为芯片FlexBus模块的底层功能函数
  ******************************************************************************
  */



#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */
#line 235 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

#line 258 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 15 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\flexbus.h"


//!< Flexbus 数据对其方式选择



//!< Flexbus 自动应答信号使能



//!< Flexbus 端口位宽选择




//!< Flexbus 片选信号选择 
#line 37 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\flexbus.h"

//!< Flexbus 片选范围 参考选择





//!< Flexbus BE信号控制模式选择



/**
 * \enum FLEXBUS_PortMultiplexingSelect_Type
 * \brief FLEXBUS 端口复用选择
 */
typedef enum
{
    kFLEXBUS_CSPMCR_Group1,
    kFLEXBUS_CSPMCR_Group2,  
    kFLEXBUS_CSPMCR_Group3,
    kFLEXBUS_CSPMCR_Group4,
    kFLEXBUS_CSPMCR_Group5,    
}FLEXBUS_PortMultiplexingSelect_Type;

//!< Flexus 控制信号复用选择
#line 77 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\flexbus.h"

/**
 * \struct FLEXBUS_InitTypeDef
 * \brief FLEXBUS初始化结构体
 */
typedef struct
{
    uint32_t div;             ///< 总线速度分频
    uint32_t dataWidth;       ///< 数据总线数据宽度
    uint32_t baseAddress;     ///< 设备基地址
    uint32_t ADSpaceMask;     ///< 设备存储空间
    uint32_t dataAlignMode;   ///< 数据对齐方式
    uint32_t autoAckMode;     ///< 自动应答模式
    uint32_t ByteEnableMode;  ///< BE使能模式
    uint32_t CSn;             ///< 片选信号通道
}FLEXBUS_InitTypeDef;

/**
 * \struct FLEXBUS_AdvancedConfigTypeDef
 * \brief FLEXBUS 高级配置选项
 */
typedef struct
{
    _Bool kFLEXBUS_brustWriteEnable;
    _Bool kFLEXBUS_brustReadEnable;
    _Bool kFLEXBUS_EXTS;
    uint32_t kFLEXBUS_ASET:2;
    uint32_t kFLEXBUS_RDAH:2;
    uint32_t kFLEXBUS_WRAH:2;
    uint32_t kFLEXBUS_WS:6;    
}FLEXBUS_AdvancedConfigTypeDef;

/* API functions */
void FLEXBUS_Init(FLEXBUS_InitTypeDef* FLEXBUS_InitStruct);
void FLEXBUS_PortMuxConfig(FLEXBUS_PortMultiplexingSelect_Type group, uint32_t config);
void FLEXBUS_AdvancedConfig(uint32_t CS, FLEXBUS_AdvancedConfigTypeDef* FLEXBUS_AdvancedConfigStruct);



#line 35 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\chlib_k.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\sd.h"
/**
  ******************************************************************************
  * @file    sd.h
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.26
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com 
  ******************************************************************************
  */  



#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */
#line 235 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

#line 258 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 14 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\sd.h"


/* SD卡类型定义 */
#line 26 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\sd.h"

/**
 * \struct SD_InitTypeDef
 * \brief SD初始化结构体
 */
typedef struct 
{
    uint32_t baudrate; //通信速度
}SD_InitTypeDef;

typedef struct 
{
    uint32_t attribute;
    uint32_t *address;
}adma2_t;


typedef struct 
{
  uint32_t cmd;
  uint32_t arg;
  uint32_t blkSize;
  uint32_t blkCount;
  uint32_t resp[4];
}SDHC_Cmd_t;

struct sd_card_handler
{
    uint32_t card_type;  
    uint32_t OCR;
    uint32_t CID[4];
    uint32_t CSD[4];
    uint16_t RCA;
    uint32_t CSR[2];
};     


#line 69 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\sd.h"


/* API funtctions */
uint8_t SD_Init(SD_InitTypeDef* SD_InitStruct);
uint32_t SD_GetSizeInMB(void);
uint8_t SD_ReadSingleBlock(uint32_t sector, uint8_t *buf);
uint8_t SD_WriteSingleBlock(uint32_t sector,  uint8_t *buf);
uint8_t SD_ReadMultiBlock(uint32_t sector, uint8_t *buf, uint16_t len);
uint8_t SD_WriteMultiBlock(uint32_t sector, uint8_t *buf, uint16_t len);
uint32_t SD_QuickInit(uint32_t baudrate);






#line 36 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\chlib_k.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\tsi.h"
/**
  ******************************************************************************
  * @file    tsi.h
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.26
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com 
  * @note    此文件为芯片TSI模块的底层功能函数
  ******************************************************************************
  */






     
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */
#line 235 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

#line 258 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 19 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\tsi.h"

/**
 * \enum TSI_TriggerMode_Type
 * \brief TSI 触发模式选择
 */
typedef enum
{
    kTSI_TriggerSoftware,               /**< 软件触发 */
    kTSI_TriggerPeriodicalScan,         /**< 硬件周期性扫描 */
} TSI_TriggerMode_Type;
  
#line 46 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\tsi.h"

/**
 * \enum TSI_ITDMAConfig_Type
 * \brief TSI 中断DMA配置
 */
typedef enum
{
    kTSI_IT_Disable,        /**< 关闭中断 */
    kTSI_IT_OutOfRange,     /**< 溢出中断 */
    kTSI_IT_EndOfScan,      /**< 扫描结束中断 */
}TSI_ITDMAConfig_Type;

/**
 * \enum TSI_EletrodeOscPs_Type
 * \brief TSI Electrode Oscillator 分频
 */
typedef enum
{
    kTSI_EletrodeOscDiv_1,
    kTSI_EletrodeOscDiv_2,
    kTSI_EletrodeOscDiv_4,
    kTSI_EletrodeOscDiv_8,
    kTSI_EletrodeOscDiv_16,
    kTSI_EletrodeOscDiv_32,
    kTSI_EletrodeOscDiv_64,
    kTSI_EletrodeOscDiv_128,
}TSI_EletrodeOscPs_Type;

/**
 * \enum TSI_ChargeCurrent_Type
 * \brief TSI charge current
 */
typedef enum
{
    kTSI_ChargeCurrent_2uA,
    kTSI_ChargeCurrent_4uA,
    kTSI_ChargeCurrent_6uA,
    kTSI_ChargeCurrent_8uA,
    kTSI_ChargeCurrent_10uA,
    kTSI_ChargeCurrent_12uA,
    kTSI_ChargeCurrent_14uA,
    kTSI_ChargeCurrent_16uA,
    kTSI_ChargeCurrent_18uA,
    kTSI_ChargeCurrent_20uA,
    kTSI_ChargeCurrent_22uA,
    kTSI_ChargeCurrent_24uA,
    kTSI_ChargeCurrent_26uA,
    kTSI_ChargeCurrent_28uA,
    kTSI_ChargeCurrent_30uA,
    kTSI_ChargeCurrent_32uA,
}TSI_ChargeCurrent_Type;


/**
 * \struct TSI_InitTypeDef
 * \brief TSI初始化结构
 */
typedef struct
{
    uint32_t                chl;                                    /* 通道号1~15 */
    TSI_TriggerMode_Type    triggerMode;                            /* 触发模式选择 */
    TSI_EletrodeOscPs_Type  electrodeOSCPrescaler;
    uint32_t                consecutiveScanTimes;                   /* number of consecutive scans per electrode */
    uint32_t                threshld;                               /* 发生超范围中断时的判断阀值 */
    TSI_ChargeCurrent_Type  refChargeCurrent;                       /* 参考 OSC 充电电流 */
    TSI_ChargeCurrent_Type  extChargeCurrent;                       /* 外部 OSC 充电电流 */
}TSI_InitTypeDef;

/* TSI QuickInit macro */
#line 131 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\tsi.h"


/* TSI CallBack Type */
typedef void (*TSI_CallBackType)(void);

/* API functions */
uint32_t TSI_QuickInit(uint32_t MAP);
uint32_t TSI_GetCounter(uint32_t chl);
void TSI_ITDMAConfig(TSI_ITDMAConfig_Type config);
void TSI_Init(TSI_InitTypeDef* TSI_InitStruct);
void TSI_CallbackInstall(TSI_CallBackType AppCBFun);





#line 37 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\chlib_k.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\vref.h"
/**
  ******************************************************************************
  * @file    vref.h
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.26
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com 
  ******************************************************************************
  */
  



#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */
#line 235 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

#line 258 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 15 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\vref.h"

/**
 * \enum  VREF_BufferMode_Type
 * \brief VREF 输出模式选择
 */
typedef enum
{
    kVREF_BufferMode_Lv0,  /**< Bandgap on only, for stabilization and startup */     
    kVREF_BufferMode_Lv1,  /**< High power buffer mode enabled */
    kVREF_BufferMode_Lv2,  /**< Low-power buffer mode enabled */
}VREF_BufferMode_Type;

/**
 * \struct VREF_InitTypeDef
 * \brief VREF init struct
 */
typedef struct
{
    uint32_t                    instance;       ///<模块号
    VREF_BufferMode_Type        bufferMode;     ///<输出模式
}VREF_InitTypeDef;

void VREF_Init(VREF_InitTypeDef *VREF_InitStruct);
void VREF_DeInit(void);
void VREF_QuickInit(void);
void VREF_SetTrimValue(uint32_t val);



#line 38 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\chlib_k.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\crc.h"
/**
  ******************************************************************************
  * @file    crc.h
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.26
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com
  ******************************************************************************
  */




#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */
#line 235 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

#line 258 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 15 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\crc.h"



typedef enum
{
    kCRCNoTranspose    = 0U, /*!< No transposition. @internal gui name="No Transpose" */
    kCRCTransposeBits  = 1U, /*!< Bits in bytes are transposed; bytes are not transposed. @internal gui name="Transpose Bits" */
    kCRCTransposeBoth  = 2U, /*!< Both bits in bytes and bytes are transposed. @internal gui name="Transpose Bits in Bytes and Bytes" */
    kCRCTransposeBytes = 3U  /*!< Only bytes are transposed; no bits in a byte are transposed. @internal gui name="Transpose Bytes" */
}CRC_Transpose_Type;

/* CRC协议 用于快速初始化 */
typedef enum
{
    kCRC16_IBM,
    kCRC16_MAXIM,
    kCRC16_USB,
    kCRC16_MODBUS,
    kCRC16_CCITT,
    kCRC16_CCITTFalse,
    kCRC16_X25,
    kCRC16_XMODEM,
    kCRC16_DNP,
    kCRC32,
    kCRC32_MPEG2,
    kCRC_ProtocolNameMax,
}CRC_ProtocolType;

typedef struct
{
    uint8_t crcWidth;                   /*!< Selects 16 or 32-bit CRC protocol */
    uint32_t seed;                      /*!< Value of the seed (initial) CRC value */
    uint32_t polynomial;                /*!< Value of the polynomial for the CRC calculation */
    CRC_Transpose_Type writeTranspose;  /*!< Defines transpose configuration of the data written to the CRC data register */
    CRC_Transpose_Type readTranspose;   /*!< Defines transpose configuration of the value read from the CRC data register */
    _Bool complementRead;                /*!< Enables complement read of CRC data register */
} CRC_InitTypeDef;



//!< API functions
void CRC_QuickInit(CRC_ProtocolType type);
void CRC_Init(CRC_InitTypeDef * CRC_InitStruct);
//uint16_t CRC16_GenerateSoftware(const uint8_t *src, uint32_t len);
uint32_t CRC_Generate(uint8_t* data, uint32_t len);


uint8_t	crcCheck(uint16_t size, uint8_t* ptr );
uint16_t crcCheck16(uint16_t size, uint8_t* ptr );




#line 39 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\chlib_k.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\wdog.h"
/**
  ******************************************************************************
  * @file    wdog.h
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.24
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com 
  * @note    此文件为芯片看门狗模块的底层功能函数
  ******************************************************************************
  */






/**
 * \enum WDOG_Mode_Type
 * \brief WDOG mode select
 */
typedef enum
{
    kWDOG_Mode_Normal,            /**< 普通模式看门狗 */
    kWDOG_Mode_Window,            /**< WDOG 窗体模式  */
}WDOG_Mode_Type;

/**
 * \struct WDOG_InitTypeDef
 * \brief WDOG初始化结构
 */
typedef struct
{
    WDOG_Mode_Type      mode;                   ///<WDOG 工作模式选择
    uint32_t            timeOutInMs;            ///<WDOG 最大喂狗时限
    uint32_t            windowInMs;             ///<WDOG 开窗起始时间
}WDOG_InitTypeDef;

/* Callback Type */
typedef void (*WDOG_CallBackType)(void);

/* API functions */
void WDOG_QuickInit(uint32_t timeInUs);
void WDOG_Init(WDOG_InitTypeDef* WDOG_InitStruct);
void WDOG_ITDMAConfig(_Bool status);
void WDOG_CallbackInstall(WDOG_CallBackType AppCBFun);
uint32_t WDOG_GetResetCounter(void);
void WDOG_ClearResetCounter(void);
void WDOG_Refresh(void);
uint32_t WDOG_GetCurrentCounter(void);






#line 40 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\chlib_k.h"

/* T90FS Flash */
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\flash.h"
/**
  ******************************************************************************
  * @file    iflash.h
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.25
  * @brief   design for manley
  ******************************************************************************
  */



#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */
#line 235 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

#line 258 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdint.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 14 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\flash.h"




/* function return type */
#line 26 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\flash.h"

//!< API declare
void		FLASH_Init(void);
uint32_t	FLASH_GetSectorSize(void);
void		FLASH_ReadByte(uint32_t FlashStartAdd,uint32_t len,uint8_t *pbuffer);

uint8_t Flash_Read_Inside(uint32_t FlashStartAdd,uint8_t *pbuffer, uint32_t len);
uint8_t Flash_Write_Inside(uint16_t secNO, uint8_t* buf, uint16_t write_len);


#line 43 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\chlib_k.h"

/* DSP lib */


#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\arm_const_structs.h"
/* ----------------------------------------------------------------------
* Copyright (C) 2010-20134 ARM Limited. All rights reserved.
*
* $Date:        12. March 2014
* $Revision: 	V1.4.3
*
* Project: 	    CMSIS DSP Library
* Title:	    arm_const_structs.h
*
* Description:	This file has constant structs that are initialized for
*              user convenience.  For example, some can be given as
*              arguments to the arm_cfft_f32() function.
*
* Target Processor: Cortex-M4/Cortex-M3
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions
* are met:
*   - Redistributions of source code must retain the above copyright
*     notice, this list of conditions and the following disclaimer.
*   - Redistributions in binary form must reproduce the above copyright
*     notice, this list of conditions and the following disclaimer in
*     the documentation and/or other materials provided with the
*     distribution.
*   - Neither the name of ARM LIMITED nor the names of its contributors
*     may be used to endorse or promote products derived from this
*     software without specific prior written permission.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
* "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
* LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
* FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
* COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
* INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
* BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
* LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
* CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
* LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
* ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
* POSSIBILITY OF SUCH DAMAGE.
* -------------------------------------------------------------------- */




#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\arm_math.h"
/* ----------------------------------------------------------------------
* Copyright (C) 2010-2014 ARM Limited. All rights reserved.
*
* $Date:        12. March 2014
* $Revision: 	V1.4.3
*
* Project: 	    CMSIS DSP Library
* Title:	    arm_math.h
*
* Description:	Public header file for CMSIS DSP Library
*
* Target Processor: Cortex-M4/Cortex-M3/Cortex-M0
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions
* are met:
*   - Redistributions of source code must retain the above copyright
*     notice, this list of conditions and the following disclaimer.
*   - Redistributions in binary form must reproduce the above copyright
*     notice, this list of conditions and the following disclaimer in
*     the documentation and/or other materials provided with the
*     distribution.
*   - Neither the name of ARM LIMITED nor the names of its contributors
*     may be used to endorse or promote products derived from this
*     software without specific prior written permission.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
* "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
* LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
* FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
* COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
* INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
* BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
* LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
* CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
* LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
* ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
* POSSIBILITY OF SUCH DAMAGE.
 * -------------------------------------------------------------------- */

/**
   \mainpage CMSIS DSP Software Library
   *
   * Introduction
   * ------------
   *
   * This user manual describes the CMSIS DSP software library,
   * a suite of common signal processing functions for use on Cortex-M processor based devices.
   *
   * The library is divided into a number of functions each covering a specific category:
   * - Basic math functions
   * - Fast math functions
   * - Complex math functions
   * - Filters
   * - Matrix functions
   * - Transforms
   * - Motor control functions
   * - Statistical functions
   * - Support functions
   * - Interpolation functions
   *
   * The library has separate functions for operating on 8-bit integers, 16-bit integers,
   * 32-bit integer and 32-bit floating-point values.
   *
   * Using the Library
   * ------------
   *
   * The library installer contains prebuilt versions of the libraries in the <code>Lib</code> folder.
   * - arm_cortexM4lf_math.lib (Little endian and Floating Point Unit on Cortex-M4)
   * - arm_cortexM4bf_math.lib (Big endian and Floating Point Unit on Cortex-M4)
   * - arm_cortexM4l_math.lib (Little endian on Cortex-M4)
   * - arm_cortexM4b_math.lib (Big endian on Cortex-M4)
   * - arm_cortexM3l_math.lib (Little endian on Cortex-M3)
   * - arm_cortexM3b_math.lib (Big endian on Cortex-M3)
   * - arm_cortexM0l_math.lib (Little endian on Cortex-M0)
   * - arm_cortexM0b_math.lib (Big endian on Cortex-M3)
   *
   * The library functions are declared in the public file <code>arm_math.h</code> which is placed in the <code>Include</code> folder.
   * Simply include this file and link the appropriate library in the application and begin calling the library functions. The Library supports single
   * public header file <code> arm_math.h</code> for Cortex-M4/M3/M0 with little endian and big endian. Same header file will be used for floating point unit(FPU) variants.
   * Define the appropriate pre processor MACRO ARM_MATH_CM4 or  ARM_MATH_CM3 or
   * ARM_MATH_CM0 or ARM_MATH_CM0PLUS depending on the target processor in the application.
   *
   * Examples
   * --------
   *
   * The library ships with a number of examples which demonstrate how to use the library functions.
   *
   * Toolchain Support
   * ------------
   *
   * The library has been developed and tested with MDK-ARM version 4.60.
   * The library is being tested in GCC and IAR toolchains and updates on this activity will be made available shortly.
   *
   * Building the Library
   * ------------
   *
   * The library installer contains a project file to re build libraries on MDK-ARM Tool chain in the <code>CMSIS\\DSP_Lib\\Source\\ARM</code> folder.
   * - arm_cortexM_math.uvproj
   *
   *
   * The libraries can be built by opening the arm_cortexM_math.uvproj project in MDK-ARM, selecting a specific target, and defining the optional pre processor MACROs detailed above.
   *
   * Pre-processor Macros
   * ------------
   *
   * Each library project have differant pre-processor macros.
   *
   * - UNALIGNED_SUPPORT_DISABLE:
   *
   * Define macro UNALIGNED_SUPPORT_DISABLE, If the silicon does not support unaligned memory access
   *
   * - ARM_MATH_BIG_ENDIAN:
   *
   * Define macro ARM_MATH_BIG_ENDIAN to build the library for big endian targets. By default library builds for little endian targets.
   *
   * - ARM_MATH_MATRIX_CHECK:
   *
   * Define macro ARM_MATH_MATRIX_CHECK for checking on the input and output sizes of matrices
   *
   * - ARM_MATH_ROUNDING:
   *
   * Define macro ARM_MATH_ROUNDING for rounding on support functions
   *
   * - ARM_MATH_CMx:
   *
   * Define macro ARM_MATH_CM4 for building the library on Cortex-M4 target, ARM_MATH_CM3 for building library on Cortex-M3 target
   * and ARM_MATH_CM0 for building library on cortex-M0 target, ARM_MATH_CM0PLUS for building library on cortex-M0+ target.
   *
   * - __FPU_PRESENT:
   *
   * Initialize macro __FPU_PRESENT = 1 when building on FPU supported Targets. Enable this macro for M4bf and M4lf libraries
   *
   * <hr>
   * CMSIS-DSP in ARM::CMSIS Pack
   * -----------------------------
   * 
   * The following files relevant to CMSIS-DSP are present in the <b>ARM::CMSIS</b> Pack directories:
   * |File/Folder                   |Content                                                                 |
   * |------------------------------|------------------------------------------------------------------------|
   * |\b CMSIS\\Documentation\\DSP  | This documentation                                                     |
   * |\b CMSIS\\DSP_Lib             | Software license agreement (license.txt)                               |
   * |\b CMSIS\\DSP_Lib\\Examples   | Example projects demonstrating the usage of the library functions      |
   * |\b CMSIS\\DSP_Lib\\Source     | Source files for rebuilding the library                                |
   * 
   * <hr>
   * Revision History of CMSIS-DSP
   * ------------
   * Please refer to \ref ChangeLog_pg.
   *
   * Copyright Notice
   * ------------
   *
   * Copyright (C) 2010-2014 ARM Limited. All rights reserved.
   */


/**
 * @defgroup groupMath Basic Math Functions
 */

/**
 * @defgroup groupFastMath Fast Math Functions
 * This set of functions provides a fast approximation to sine, cosine, and square root.
 * As compared to most of the other functions in the CMSIS math library, the fast math functions
 * operate on individual values and not arrays.
 * There are separate functions for Q15, Q31, and floating-point data.
 *
 */

/**
 * @defgroup groupCmplxMath Complex Math Functions
 * This set of functions operates on complex data vectors.
 * The data in the complex arrays is stored in an interleaved fashion
 * (real, imag, real, imag, ...).
 * In the API functions, the number of samples in a complex array refers
 * to the number of complex values; the array contains twice this number of
 * real values.
 */

/**
 * @defgroup groupFilters Filtering Functions
 */

/**
 * @defgroup groupMatrix Matrix Functions
 *
 * This set of functions provides basic matrix math operations.
 * The functions operate on matrix data structures.  For example,
 * the type
 * definition for the floating-point matrix structure is shown
 * below:
 * <pre>
 *     typedef struct
 *     {
 *       uint16_t numRows;     // number of rows of the matrix.
 *       uint16_t numCols;     // number of columns of the matrix.
 *       float32_t *pData;     // points to the data of the matrix.
 *     } arm_matrix_instance_f32;
 * </pre>
 * There are similar definitions for Q15 and Q31 data types.
 *
 * The structure specifies the size of the matrix and then points to
 * an array of data.  The array is of size <code>numRows X numCols</code>
 * and the values are arranged in row order.  That is, the
 * matrix element (i, j) is stored at:
 * <pre>
 *     pData[i*numCols + j]
 * </pre>
 *
 * \par Init Functions
 * There is an associated initialization function for each type of matrix
 * data structure.
 * The initialization function sets the values of the internal structure fields.
 * Refer to the function <code>arm_mat_init_f32()</code>, <code>arm_mat_init_q31()</code>
 * and <code>arm_mat_init_q15()</code> for floating-point, Q31 and Q15 types,  respectively.
 *
 * \par
 * Use of the initialization function is optional. However, if initialization function is used
 * then the instance structure cannot be placed into a const data section.
 * To place the instance structure in a const data
 * section, manually initialize the data structure.  For example:
 * <pre>
 * <code>arm_matrix_instance_f32 S = {nRows, nColumns, pData};</code>
 * <code>arm_matrix_instance_q31 S = {nRows, nColumns, pData};</code>
 * <code>arm_matrix_instance_q15 S = {nRows, nColumns, pData};</code>
 * </pre>
 * where <code>nRows</code> specifies the number of rows, <code>nColumns</code>
 * specifies the number of columns, and <code>pData</code> points to the
 * data array.
 *
 * \par Size Checking
 * By default all of the matrix functions perform size checking on the input and
 * output matrices.  For example, the matrix addition function verifies that the
 * two input matrices and the output matrix all have the same number of rows and
 * columns.  If the size check fails the functions return:
 * <pre>
 *     ARM_MATH_SIZE_MISMATCH
 * </pre>
 * Otherwise the functions return
 * <pre>
 *     ARM_MATH_SUCCESS
 * </pre>
 * There is some overhead associated with this matrix size checking.
 * The matrix size checking is enabled via the \#define
 * <pre>
 *     ARM_MATH_MATRIX_CHECK
 * </pre>
 * within the library project settings.  By default this macro is defined
 * and size checking is enabled.  By changing the project settings and
 * undefining this macro size checking is eliminated and the functions
 * run a bit faster.  With size checking disabled the functions always
 * return <code>ARM_MATH_SUCCESS</code>.
 */

/**
 * @defgroup groupTransforms Transform Functions
 */

/**
 * @defgroup groupController Controller Functions
 */

/**
 * @defgroup groupStats Statistics Functions
 */
/**
 * @defgroup groupSupport Support Functions
 */

/**
 * @defgroup groupInterpolation Interpolation Functions
 * These functions perform 1- and 2-dimensional interpolation of data.
 * Linear interpolation is used for 1-dimensional data and
 * bilinear interpolation is used for 2-dimensional data.
 */

/**
 * @defgroup groupExamples Examples
 */





#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cm4.h"
/**************************************************************************//**
 * @file     core_cm4.h
 * @brief    CMSIS Cortex-M4 Core Peripheral Access Layer Header File
 * @version  V3.30
 * @date     06. May 2014
 *
 * @note
 *
 ******************************************************************************/
/* Copyright (c) 2009 - 2014 ARM LIMITED

   All rights reserved.
   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are met:
   - Redistributions of source code must retain the above copyright
     notice, this list of conditions and the following disclaimer.
   - Redistributions in binary form must reproduce the above copyright
     notice, this list of conditions and the following disclaimer in the
     documentation and/or other materials provided with the distribution.
   - Neither the name of ARM nor the names of its contributors may be used
     to endorse or promote products derived from this software without
     specific prior written permission.
   *
   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
   AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
   IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
   ARE DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS AND CONTRIBUTORS BE
   LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
   INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
   CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
   ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
   POSSIBILITY OF SUCH DAMAGE.
   ---------------------------------------------------------------------------*/



 #pragma system_include  /* treat file as system include file for MISRA check */


#line 192 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\CPU\\CoreSupport\\core_cm4.h"

#line 288 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\arm_math.h"
#line 300 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\arm_math.h"

#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\string.h"
/* string.h standard header */
/* Copyright 2009-2010 IAR Systems AB. */
#line 456 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\string.h"

#line 479 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\string.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 303 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\arm_math.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\math.h"
/* math.h standard header */
/* Copyright 2003-2010 IAR Systems AB. */
#line 1856 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\math.h"


#line 2010 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\math.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 304 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\arm_math.h"






  /**
   * @brief Macros required for reciprocal calculation in Normalized LMS
   */

#line 320 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\arm_math.h"

  /**
   * @brief Macros required for SINE and COSINE Fast math approximations
   */

#line 332 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\arm_math.h"

  /**
   * @brief Macros required for SINE and COSINE Controller functions
   */
  /* 1.31(q31) Fixed value of 2/360 */
  /* -1 to +1 is divided into 360 values so total spacing is (2/360) */


  /**
   * @brief Macro for Unaligned Support
   */
#line 352 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\arm_math.h"

  /**
   * @brief Error status returned by some functions in the library.
   */

  typedef enum
  {
    ARM_MATH_SUCCESS = 0,                /**< No error */
    ARM_MATH_ARGUMENT_ERROR = -1,        /**< One or more arguments are incorrect */
    ARM_MATH_LENGTH_ERROR = -2,          /**< Length of data buffer is incorrect */
    ARM_MATH_SIZE_MISMATCH = -3,         /**< Size of matrices is not compatible with the operation. */
    ARM_MATH_NANINF = -4,                /**< Not-a-number (NaN) or infinity is generated */
    ARM_MATH_SINGULAR = -5,              /**< Generated by matrix inversion if the input matrix is singular and cannot be inverted. */
    ARM_MATH_TEST_FAILURE = -6           /**< Test Failed  */
  } arm_status;

  /**
   * @brief 8-bit fractional data type in 1.7 format.
   */
  typedef int8_t q7_t;

  /**
   * @brief 16-bit fractional data type in 1.15 format.
   */
  typedef int16_t q15_t;

  /**
   * @brief 32-bit fractional data type in 1.31 format.
   */
  typedef int32_t q31_t;

  /**
   * @brief 64-bit fractional data type in 1.63 format.
   */
  typedef int64_t q63_t;

  /**
   * @brief 32-bit floating-point type definition.
   */
  typedef float float32_t;

  /**
   * @brief 64-bit floating-point type definition.
   */
  typedef double float64_t;

  /**
   * @brief definition to read/write two 16 bit values.
   */
#line 416 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\arm_math.h"








#line 434 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\arm_math.h"


   /**
   * @brief definition to pack four 8 bit values.
   */


#line 453 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\arm_math.h"


  /**
   * @brief Clips Q63 to Q31 values.
   */
  static inline q31_t clip_q63_to_q31(
  q63_t x)
  {
    return ((q31_t) (x >> 32) != ((q31_t) x >> 31)) ?
      ((0x7FFFFFFF ^ ((q31_t) (x >> 63)))) : (q31_t) x;
  }

  /**
   * @brief Clips Q63 to Q15 values.
   */
  static inline q15_t clip_q63_to_q15(
  q63_t x)
  {
    return ((q31_t) (x >> 32) != ((q31_t) x >> 31)) ?
      ((0x7FFF ^ ((q15_t) (x >> 63)))) : (q15_t) (x >> 15);
  }

  /**
   * @brief Clips Q31 to Q7 values.
   */
  static inline q7_t clip_q31_to_q7(
  q31_t x)
  {
    return ((q31_t) (x >> 24) != ((q31_t) x >> 23)) ?
      ((0x7F ^ ((q7_t) (x >> 31)))) : (q7_t) x;
  }

  /**
   * @brief Clips Q31 to Q15 values.
   */
  static inline q15_t clip_q31_to_q15(
  q31_t x)
  {
    return ((q31_t) (x >> 16) != ((q31_t) x >> 15)) ?
      ((0x7FFF ^ ((q15_t) (x >> 31)))) : (q15_t) x;
  }

  /**
   * @brief Multiplies 32 X 64 and returns 32 bit result in 2.30 format.
   */

  static inline q63_t mult32x64(
  q63_t x,
  q31_t y)
  {
    return ((((q63_t) (x & 0x00000000FFFFFFFF) * y) >> 32) +
            (((q63_t) (x >> 32) * y)));
  }






#line 535 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\arm_math.h"

  /**
   * @brief Function to Calculates 1/in (reciprocal) value of Q31 Data type.
   */

  static inline uint32_t arm_recip_q31(
  q31_t in,
  q31_t * dst,
  q31_t * pRecipTable)
  {

    uint32_t out, tempVal;
    uint32_t index, i;
    uint32_t signBits;

    if(in > 0)
    {
      signBits = __CLZ(in) - 1;
    }
    else
    {
      signBits = __CLZ(-in) - 1;
    }

    /* Convert input sample to 1.31 format */
    in = in << signBits;

    /* calculation of index for initial approximated Val */
    index = (uint32_t) (in >> 24u);
    index = (index & 0x0000003F);

    /* 1.31 with exp 1 */
    out = pRecipTable[index];

    /* calculation of reciprocal value */
    /* running approximation for two iterations */
    for (i = 0u; i < 2u; i++)
    {
      tempVal = (q31_t) (((q63_t) in * out) >> 31u);
      tempVal = 0x7FFFFFFF - tempVal;
      /*      1.31 with exp 1 */
      //out = (q31_t) (((q63_t) out * tempVal) >> 30u);
      out = (q31_t) clip_q63_to_q31(((q63_t) out * tempVal) >> 30u);
    }

    /* write output */
    *dst = out;

    /* return num of signbits of out = 1/in value */
    return (signBits + 1u);

  }

  /**
   * @brief Function to Calculates 1/in (reciprocal) value of Q15 Data type.
   */
  static inline uint32_t arm_recip_q15(
  q15_t in,
  q15_t * dst,
  q15_t * pRecipTable)
  {

    uint32_t out = 0, tempVal = 0;
    uint32_t index = 0, i = 0;
    uint32_t signBits = 0;

    if(in > 0)
    {
      signBits = __CLZ(in) - 17;
    }
    else
    {
      signBits = __CLZ(-in) - 17;
    }

    /* Convert input sample to 1.15 format */
    in = in << signBits;

    /* calculation of index for initial approximated Val */
    index = in >> 8;
    index = (index & 0x0000003F);

    /*      1.15 with exp 1  */
    out = pRecipTable[index];

    /* calculation of reciprocal value */
    /* running approximation for two iterations */
    for (i = 0; i < 2; i++)
    {
      tempVal = (q15_t) (((q31_t) in * out) >> 15);
      tempVal = 0x7FFF - tempVal;
      /*      1.15 with exp 1 */
      out = (q15_t) (((q31_t) out * tempVal) >> 14);
    }

    /* write output */
    *dst = out;

    /* return num of signbits of out = 1/in value */
    return (signBits + 1);

  }


  /*
   * @brief C custom defined intrinisic function for only M0 processors
   */
#line 681 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\arm_math.h"



  /*
   * @brief C custom defined intrinsic function for M3 and M0 processors
   */
#line 1064 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\arm_math.h"


  /**
   * @brief Instance structure for the Q7 FIR filter.
   */
  typedef struct
  {
    uint16_t numTaps;        /**< number of filter coefficients in the filter. */
    q7_t *pState;            /**< points to the state variable array. The array is of length numTaps+blockSize-1. */
    q7_t *pCoeffs;           /**< points to the coefficient array. The array is of length numTaps.*/
  } arm_fir_instance_q7;

  /**
   * @brief Instance structure for the Q15 FIR filter.
   */
  typedef struct
  {
    uint16_t numTaps;         /**< number of filter coefficients in the filter. */
    q15_t *pState;            /**< points to the state variable array. The array is of length numTaps+blockSize-1. */
    q15_t *pCoeffs;           /**< points to the coefficient array. The array is of length numTaps.*/
  } arm_fir_instance_q15;

  /**
   * @brief Instance structure for the Q31 FIR filter.
   */
  typedef struct
  {
    uint16_t numTaps;         /**< number of filter coefficients in the filter. */
    q31_t *pState;            /**< points to the state variable array. The array is of length numTaps+blockSize-1. */
    q31_t *pCoeffs;           /**< points to the coefficient array. The array is of length numTaps. */
  } arm_fir_instance_q31;

  /**
   * @brief Instance structure for the floating-point FIR filter.
   */
  typedef struct
  {
    uint16_t numTaps;     /**< number of filter coefficients in the filter. */
    float32_t *pState;    /**< points to the state variable array. The array is of length numTaps+blockSize-1. */
    float32_t *pCoeffs;   /**< points to the coefficient array. The array is of length numTaps. */
  } arm_fir_instance_f32;


  /**
   * @brief Processing function for the Q7 FIR filter.
   * @param[in] *S points to an instance of the Q7 FIR filter structure.
   * @param[in] *pSrc points to the block of input data.
   * @param[out] *pDst points to the block of output data.
   * @param[in] blockSize number of samples to process.
   * @return none.
   */
  void arm_fir_q7(
  const arm_fir_instance_q7 * S,
  q7_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);


  /**
   * @brief  Initialization function for the Q7 FIR filter.
   * @param[in,out] *S points to an instance of the Q7 FIR structure.
   * @param[in] numTaps  Number of filter coefficients in the filter.
   * @param[in] *pCoeffs points to the filter coefficients.
   * @param[in] *pState points to the state buffer.
   * @param[in] blockSize number of samples that are processed.
   * @return none
   */
  void arm_fir_init_q7(
  arm_fir_instance_q7 * S,
  uint16_t numTaps,
  q7_t * pCoeffs,
  q7_t * pState,
  uint32_t blockSize);


  /**
   * @brief Processing function for the Q15 FIR filter.
   * @param[in] *S points to an instance of the Q15 FIR structure.
   * @param[in] *pSrc points to the block of input data.
   * @param[out] *pDst points to the block of output data.
   * @param[in] blockSize number of samples to process.
   * @return none.
   */
  void arm_fir_q15(
  const arm_fir_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Processing function for the fast Q15 FIR filter for Cortex-M3 and Cortex-M4.
   * @param[in] *S points to an instance of the Q15 FIR filter structure.
   * @param[in] *pSrc points to the block of input data.
   * @param[out] *pDst points to the block of output data.
   * @param[in] blockSize number of samples to process.
   * @return none.
   */
  void arm_fir_fast_q15(
  const arm_fir_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  /**
   * @brief  Initialization function for the Q15 FIR filter.
   * @param[in,out] *S points to an instance of the Q15 FIR filter structure.
   * @param[in] numTaps  Number of filter coefficients in the filter. Must be even and greater than or equal to 4.
   * @param[in] *pCoeffs points to the filter coefficients.
   * @param[in] *pState points to the state buffer.
   * @param[in] blockSize number of samples that are processed at a time.
   * @return The function returns ARM_MATH_SUCCESS if initialization was successful or ARM_MATH_ARGUMENT_ERROR if
   * <code>numTaps</code> is not a supported value.
   */

  arm_status arm_fir_init_q15(
  arm_fir_instance_q15 * S,
  uint16_t numTaps,
  q15_t * pCoeffs,
  q15_t * pState,
  uint32_t blockSize);

  /**
   * @brief Processing function for the Q31 FIR filter.
   * @param[in] *S points to an instance of the Q31 FIR filter structure.
   * @param[in] *pSrc points to the block of input data.
   * @param[out] *pDst points to the block of output data.
   * @param[in] blockSize number of samples to process.
   * @return none.
   */
  void arm_fir_q31(
  const arm_fir_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Processing function for the fast Q31 FIR filter for Cortex-M3 and Cortex-M4.
   * @param[in] *S points to an instance of the Q31 FIR structure.
   * @param[in] *pSrc points to the block of input data.
   * @param[out] *pDst points to the block of output data.
   * @param[in] blockSize number of samples to process.
   * @return none.
   */
  void arm_fir_fast_q31(
  const arm_fir_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  /**
   * @brief  Initialization function for the Q31 FIR filter.
   * @param[in,out] *S points to an instance of the Q31 FIR structure.
   * @param[in] 	numTaps  Number of filter coefficients in the filter.
   * @param[in] 	*pCoeffs points to the filter coefficients.
   * @param[in] 	*pState points to the state buffer.
   * @param[in] 	blockSize number of samples that are processed at a time.
   * @return 		none.
   */
  void arm_fir_init_q31(
  arm_fir_instance_q31 * S,
  uint16_t numTaps,
  q31_t * pCoeffs,
  q31_t * pState,
  uint32_t blockSize);

  /**
   * @brief Processing function for the floating-point FIR filter.
   * @param[in] *S points to an instance of the floating-point FIR structure.
   * @param[in] *pSrc points to the block of input data.
   * @param[out] *pDst points to the block of output data.
   * @param[in] blockSize number of samples to process.
   * @return none.
   */
  void arm_fir_f32(
  const arm_fir_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  /**
   * @brief  Initialization function for the floating-point FIR filter.
   * @param[in,out] *S points to an instance of the floating-point FIR filter structure.
   * @param[in] 	numTaps  Number of filter coefficients in the filter.
   * @param[in] 	*pCoeffs points to the filter coefficients.
   * @param[in] 	*pState points to the state buffer.
   * @param[in] 	blockSize number of samples that are processed at a time.
   * @return    	none.
   */
  void arm_fir_init_f32(
  arm_fir_instance_f32 * S,
  uint16_t numTaps,
  float32_t * pCoeffs,
  float32_t * pState,
  uint32_t blockSize);


  /**
   * @brief Instance structure for the Q15 Biquad cascade filter.
   */
  typedef struct
  {
    int8_t numStages;         /**< number of 2nd order stages in the filter.  Overall order is 2*numStages. */
    q15_t *pState;            /**< Points to the array of state coefficients.  The array is of length 4*numStages. */
    q15_t *pCoeffs;           /**< Points to the array of coefficients.  The array is of length 5*numStages. */
    int8_t postShift;         /**< Additional shift, in bits, applied to each output sample. */

  } arm_biquad_casd_df1_inst_q15;


  /**
   * @brief Instance structure for the Q31 Biquad cascade filter.
   */
  typedef struct
  {
    uint32_t numStages;      /**< number of 2nd order stages in the filter.  Overall order is 2*numStages. */
    q31_t *pState;           /**< Points to the array of state coefficients.  The array is of length 4*numStages. */
    q31_t *pCoeffs;          /**< Points to the array of coefficients.  The array is of length 5*numStages. */
    uint8_t postShift;       /**< Additional shift, in bits, applied to each output sample. */

  } arm_biquad_casd_df1_inst_q31;

  /**
   * @brief Instance structure for the floating-point Biquad cascade filter.
   */
  typedef struct
  {
    uint32_t numStages;         /**< number of 2nd order stages in the filter.  Overall order is 2*numStages. */
    float32_t *pState;          /**< Points to the array of state coefficients.  The array is of length 4*numStages. */
    float32_t *pCoeffs;         /**< Points to the array of coefficients.  The array is of length 5*numStages. */


  } arm_biquad_casd_df1_inst_f32;



  /**
   * @brief Processing function for the Q15 Biquad cascade filter.
   * @param[in]  *S points to an instance of the Q15 Biquad cascade structure.
   * @param[in]  *pSrc points to the block of input data.
   * @param[out] *pDst points to the block of output data.
   * @param[in]  blockSize number of samples to process.
   * @return     none.
   */

  void arm_biquad_cascade_df1_q15(
  const arm_biquad_casd_df1_inst_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  /**
   * @brief  Initialization function for the Q15 Biquad cascade filter.
   * @param[in,out] *S           points to an instance of the Q15 Biquad cascade structure.
   * @param[in]     numStages    number of 2nd order stages in the filter.
   * @param[in]     *pCoeffs     points to the filter coefficients.
   * @param[in]     *pState      points to the state buffer.
   * @param[in]     postShift    Shift to be applied to the output. Varies according to the coefficients format
   * @return        none
   */

  void arm_biquad_cascade_df1_init_q15(
  arm_biquad_casd_df1_inst_q15 * S,
  uint8_t numStages,
  q15_t * pCoeffs,
  q15_t * pState,
  int8_t postShift);


  /**
   * @brief Fast but less precise processing function for the Q15 Biquad cascade filter for Cortex-M3 and Cortex-M4.
   * @param[in]  *S points to an instance of the Q15 Biquad cascade structure.
   * @param[in]  *pSrc points to the block of input data.
   * @param[out] *pDst points to the block of output data.
   * @param[in]  blockSize number of samples to process.
   * @return     none.
   */

  void arm_biquad_cascade_df1_fast_q15(
  const arm_biquad_casd_df1_inst_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);


  /**
   * @brief Processing function for the Q31 Biquad cascade filter
   * @param[in]  *S         points to an instance of the Q31 Biquad cascade structure.
   * @param[in]  *pSrc      points to the block of input data.
   * @param[out] *pDst      points to the block of output data.
   * @param[in]  blockSize  number of samples to process.
   * @return     none.
   */

  void arm_biquad_cascade_df1_q31(
  const arm_biquad_casd_df1_inst_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Fast but less precise processing function for the Q31 Biquad cascade filter for Cortex-M3 and Cortex-M4.
   * @param[in]  *S         points to an instance of the Q31 Biquad cascade structure.
   * @param[in]  *pSrc      points to the block of input data.
   * @param[out] *pDst      points to the block of output data.
   * @param[in]  blockSize  number of samples to process.
   * @return     none.
   */

  void arm_biquad_cascade_df1_fast_q31(
  const arm_biquad_casd_df1_inst_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  /**
   * @brief  Initialization function for the Q31 Biquad cascade filter.
   * @param[in,out] *S           points to an instance of the Q31 Biquad cascade structure.
   * @param[in]     numStages      number of 2nd order stages in the filter.
   * @param[in]     *pCoeffs     points to the filter coefficients.
   * @param[in]     *pState      points to the state buffer.
   * @param[in]     postShift    Shift to be applied to the output. Varies according to the coefficients format
   * @return        none
   */

  void arm_biquad_cascade_df1_init_q31(
  arm_biquad_casd_df1_inst_q31 * S,
  uint8_t numStages,
  q31_t * pCoeffs,
  q31_t * pState,
  int8_t postShift);

  /**
   * @brief Processing function for the floating-point Biquad cascade filter.
   * @param[in]  *S         points to an instance of the floating-point Biquad cascade structure.
   * @param[in]  *pSrc      points to the block of input data.
   * @param[out] *pDst      points to the block of output data.
   * @param[in]  blockSize  number of samples to process.
   * @return     none.
   */

  void arm_biquad_cascade_df1_f32(
  const arm_biquad_casd_df1_inst_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  /**
   * @brief  Initialization function for the floating-point Biquad cascade filter.
   * @param[in,out] *S           points to an instance of the floating-point Biquad cascade structure.
   * @param[in]     numStages    number of 2nd order stages in the filter.
   * @param[in]     *pCoeffs     points to the filter coefficients.
   * @param[in]     *pState      points to the state buffer.
   * @return        none
   */

  void arm_biquad_cascade_df1_init_f32(
  arm_biquad_casd_df1_inst_f32 * S,
  uint8_t numStages,
  float32_t * pCoeffs,
  float32_t * pState);


  /**
   * @brief Instance structure for the floating-point matrix structure.
   */

  typedef struct
  {
    uint16_t numRows;     /**< number of rows of the matrix.     */
    uint16_t numCols;     /**< number of columns of the matrix.  */
    float32_t *pData;     /**< points to the data of the matrix. */
  } arm_matrix_instance_f32;

  /**
   * @brief Instance structure for the Q15 matrix structure.
   */

  typedef struct
  {
    uint16_t numRows;     /**< number of rows of the matrix.     */
    uint16_t numCols;     /**< number of columns of the matrix.  */
    q15_t *pData;         /**< points to the data of the matrix. */

  } arm_matrix_instance_q15;

  /**
   * @brief Instance structure for the Q31 matrix structure.
   */

  typedef struct
  {
    uint16_t numRows;     /**< number of rows of the matrix.     */
    uint16_t numCols;     /**< number of columns of the matrix.  */
    q31_t *pData;         /**< points to the data of the matrix. */

  } arm_matrix_instance_q31;



  /**
   * @brief Floating-point matrix addition.
   * @param[in]       *pSrcA points to the first input matrix structure
   * @param[in]       *pSrcB points to the second input matrix structure
   * @param[out]      *pDst points to output matrix structure
   * @return     The function returns either
   * <code>ARM_MATH_SIZE_MISMATCH</code> or <code>ARM_MATH_SUCCESS</code> based on the outcome of size checking.
   */

  arm_status arm_mat_add_f32(
  const arm_matrix_instance_f32 * pSrcA,
  const arm_matrix_instance_f32 * pSrcB,
  arm_matrix_instance_f32 * pDst);

  /**
   * @brief Q15 matrix addition.
   * @param[in]       *pSrcA points to the first input matrix structure
   * @param[in]       *pSrcB points to the second input matrix structure
   * @param[out]      *pDst points to output matrix structure
   * @return     The function returns either
   * <code>ARM_MATH_SIZE_MISMATCH</code> or <code>ARM_MATH_SUCCESS</code> based on the outcome of size checking.
   */

  arm_status arm_mat_add_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
  arm_matrix_instance_q15 * pDst);

  /**
   * @brief Q31 matrix addition.
   * @param[in]       *pSrcA points to the first input matrix structure
   * @param[in]       *pSrcB points to the second input matrix structure
   * @param[out]      *pDst points to output matrix structure
   * @return     The function returns either
   * <code>ARM_MATH_SIZE_MISMATCH</code> or <code>ARM_MATH_SUCCESS</code> based on the outcome of size checking.
   */

  arm_status arm_mat_add_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
  arm_matrix_instance_q31 * pDst);

  /**
   * @brief Floating-point, complex, matrix multiplication.
   * @param[in]       *pSrcA points to the first input matrix structure
   * @param[in]       *pSrcB points to the second input matrix structure
   * @param[out]      *pDst points to output matrix structure
   * @return     The function returns either
   * <code>ARM_MATH_SIZE_MISMATCH</code> or <code>ARM_MATH_SUCCESS</code> based on the outcome of size checking.
   */

  arm_status arm_mat_cmplx_mult_f32(
  const arm_matrix_instance_f32 * pSrcA,
  const arm_matrix_instance_f32 * pSrcB,
  arm_matrix_instance_f32 * pDst);

  /**
   * @brief Q15, complex,  matrix multiplication.
   * @param[in]       *pSrcA points to the first input matrix structure
   * @param[in]       *pSrcB points to the second input matrix structure
   * @param[out]      *pDst points to output matrix structure
   * @return     The function returns either
   * <code>ARM_MATH_SIZE_MISMATCH</code> or <code>ARM_MATH_SUCCESS</code> based on the outcome of size checking.
   */

  arm_status arm_mat_cmplx_mult_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
  arm_matrix_instance_q15 * pDst,
  q15_t * pScratch);

  /**
   * @brief Q31, complex, matrix multiplication.
   * @param[in]       *pSrcA points to the first input matrix structure
   * @param[in]       *pSrcB points to the second input matrix structure
   * @param[out]      *pDst points to output matrix structure
   * @return     The function returns either
   * <code>ARM_MATH_SIZE_MISMATCH</code> or <code>ARM_MATH_SUCCESS</code> based on the outcome of size checking.
   */

  arm_status arm_mat_cmplx_mult_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
  arm_matrix_instance_q31 * pDst);


  /**
   * @brief Floating-point matrix transpose.
   * @param[in]  *pSrc points to the input matrix
   * @param[out] *pDst points to the output matrix
   * @return 	The function returns either  <code>ARM_MATH_SIZE_MISMATCH</code>
   * or <code>ARM_MATH_SUCCESS</code> based on the outcome of size checking.
   */

  arm_status arm_mat_trans_f32(
  const arm_matrix_instance_f32 * pSrc,
  arm_matrix_instance_f32 * pDst);


  /**
   * @brief Q15 matrix transpose.
   * @param[in]  *pSrc points to the input matrix
   * @param[out] *pDst points to the output matrix
   * @return 	The function returns either  <code>ARM_MATH_SIZE_MISMATCH</code>
   * or <code>ARM_MATH_SUCCESS</code> based on the outcome of size checking.
   */

  arm_status arm_mat_trans_q15(
  const arm_matrix_instance_q15 * pSrc,
  arm_matrix_instance_q15 * pDst);

  /**
   * @brief Q31 matrix transpose.
   * @param[in]  *pSrc points to the input matrix
   * @param[out] *pDst points to the output matrix
   * @return 	The function returns either  <code>ARM_MATH_SIZE_MISMATCH</code>
   * or <code>ARM_MATH_SUCCESS</code> based on the outcome of size checking.
   */

  arm_status arm_mat_trans_q31(
  const arm_matrix_instance_q31 * pSrc,
  arm_matrix_instance_q31 * pDst);


  /**
   * @brief Floating-point matrix multiplication
   * @param[in]       *pSrcA points to the first input matrix structure
   * @param[in]       *pSrcB points to the second input matrix structure
   * @param[out]      *pDst points to output matrix structure
   * @return     The function returns either
   * <code>ARM_MATH_SIZE_MISMATCH</code> or <code>ARM_MATH_SUCCESS</code> based on the outcome of size checking.
   */

  arm_status arm_mat_mult_f32(
  const arm_matrix_instance_f32 * pSrcA,
  const arm_matrix_instance_f32 * pSrcB,
  arm_matrix_instance_f32 * pDst);

  /**
   * @brief Q15 matrix multiplication
   * @param[in]       *pSrcA points to the first input matrix structure
   * @param[in]       *pSrcB points to the second input matrix structure
   * @param[out]      *pDst points to output matrix structure
   * @param[in]		 *pState points to the array for storing intermediate results
   * @return     The function returns either
   * <code>ARM_MATH_SIZE_MISMATCH</code> or <code>ARM_MATH_SUCCESS</code> based on the outcome of size checking.
   */

  arm_status arm_mat_mult_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
  arm_matrix_instance_q15 * pDst,
  q15_t * pState);

  /**
   * @brief Q15 matrix multiplication (fast variant) for Cortex-M3 and Cortex-M4
   * @param[in]       *pSrcA  points to the first input matrix structure
   * @param[in]       *pSrcB  points to the second input matrix structure
   * @param[out]      *pDst   points to output matrix structure
   * @param[in]		  *pState points to the array for storing intermediate results
   * @return     The function returns either
   * <code>ARM_MATH_SIZE_MISMATCH</code> or <code>ARM_MATH_SUCCESS</code> based on the outcome of size checking.
   */

  arm_status arm_mat_mult_fast_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
  arm_matrix_instance_q15 * pDst,
  q15_t * pState);

  /**
   * @brief Q31 matrix multiplication
   * @param[in]       *pSrcA points to the first input matrix structure
   * @param[in]       *pSrcB points to the second input matrix structure
   * @param[out]      *pDst points to output matrix structure
   * @return     The function returns either
   * <code>ARM_MATH_SIZE_MISMATCH</code> or <code>ARM_MATH_SUCCESS</code> based on the outcome of size checking.
   */

  arm_status arm_mat_mult_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
  arm_matrix_instance_q31 * pDst);

  /**
   * @brief Q31 matrix multiplication (fast variant) for Cortex-M3 and Cortex-M4
   * @param[in]       *pSrcA points to the first input matrix structure
   * @param[in]       *pSrcB points to the second input matrix structure
   * @param[out]      *pDst points to output matrix structure
   * @return     The function returns either
   * <code>ARM_MATH_SIZE_MISMATCH</code> or <code>ARM_MATH_SUCCESS</code> based on the outcome of size checking.
   */

  arm_status arm_mat_mult_fast_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
  arm_matrix_instance_q31 * pDst);


  /**
   * @brief Floating-point matrix subtraction
   * @param[in]       *pSrcA points to the first input matrix structure
   * @param[in]       *pSrcB points to the second input matrix structure
   * @param[out]      *pDst points to output matrix structure
   * @return     The function returns either
   * <code>ARM_MATH_SIZE_MISMATCH</code> or <code>ARM_MATH_SUCCESS</code> based on the outcome of size checking.
   */

  arm_status arm_mat_sub_f32(
  const arm_matrix_instance_f32 * pSrcA,
  const arm_matrix_instance_f32 * pSrcB,
  arm_matrix_instance_f32 * pDst);

  /**
   * @brief Q15 matrix subtraction
   * @param[in]       *pSrcA points to the first input matrix structure
   * @param[in]       *pSrcB points to the second input matrix structure
   * @param[out]      *pDst points to output matrix structure
   * @return     The function returns either
   * <code>ARM_MATH_SIZE_MISMATCH</code> or <code>ARM_MATH_SUCCESS</code> based on the outcome of size checking.
   */

  arm_status arm_mat_sub_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
  arm_matrix_instance_q15 * pDst);

  /**
   * @brief Q31 matrix subtraction
   * @param[in]       *pSrcA points to the first input matrix structure
   * @param[in]       *pSrcB points to the second input matrix structure
   * @param[out]      *pDst points to output matrix structure
   * @return     The function returns either
   * <code>ARM_MATH_SIZE_MISMATCH</code> or <code>ARM_MATH_SUCCESS</code> based on the outcome of size checking.
   */

  arm_status arm_mat_sub_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
  arm_matrix_instance_q31 * pDst);

  /**
   * @brief Floating-point matrix scaling.
   * @param[in]  *pSrc points to the input matrix
   * @param[in]  scale scale factor
   * @param[out] *pDst points to the output matrix
   * @return     The function returns either
   * <code>ARM_MATH_SIZE_MISMATCH</code> or <code>ARM_MATH_SUCCESS</code> based on the outcome of size checking.
   */

  arm_status arm_mat_scale_f32(
  const arm_matrix_instance_f32 * pSrc,
  float32_t scale,
  arm_matrix_instance_f32 * pDst);

  /**
   * @brief Q15 matrix scaling.
   * @param[in]       *pSrc points to input matrix
   * @param[in]       scaleFract fractional portion of the scale factor
   * @param[in]       shift number of bits to shift the result by
   * @param[out]      *pDst points to output matrix
   * @return     The function returns either
   * <code>ARM_MATH_SIZE_MISMATCH</code> or <code>ARM_MATH_SUCCESS</code> based on the outcome of size checking.
   */

  arm_status arm_mat_scale_q15(
  const arm_matrix_instance_q15 * pSrc,
  q15_t scaleFract,
  int32_t shift,
  arm_matrix_instance_q15 * pDst);

  /**
   * @brief Q31 matrix scaling.
   * @param[in]       *pSrc points to input matrix
   * @param[in]       scaleFract fractional portion of the scale factor
   * @param[in]       shift number of bits to shift the result by
   * @param[out]      *pDst points to output matrix structure
   * @return     The function returns either
   * <code>ARM_MATH_SIZE_MISMATCH</code> or <code>ARM_MATH_SUCCESS</code> based on the outcome of size checking.
   */

  arm_status arm_mat_scale_q31(
  const arm_matrix_instance_q31 * pSrc,
  q31_t scaleFract,
  int32_t shift,
  arm_matrix_instance_q31 * pDst);


  /**
   * @brief  Q31 matrix initialization.
   * @param[in,out] *S             points to an instance of the floating-point matrix structure.
   * @param[in]     nRows          number of rows in the matrix.
   * @param[in]     nColumns       number of columns in the matrix.
   * @param[in]     *pData	       points to the matrix data array.
   * @return        none
   */

  void arm_mat_init_q31(
  arm_matrix_instance_q31 * S,
  uint16_t nRows,
  uint16_t nColumns,
  q31_t * pData);

  /**
   * @brief  Q15 matrix initialization.
   * @param[in,out] *S             points to an instance of the floating-point matrix structure.
   * @param[in]     nRows          number of rows in the matrix.
   * @param[in]     nColumns       number of columns in the matrix.
   * @param[in]     *pData	       points to the matrix data array.
   * @return        none
   */

  void arm_mat_init_q15(
  arm_matrix_instance_q15 * S,
  uint16_t nRows,
  uint16_t nColumns,
  q15_t * pData);

  /**
   * @brief  Floating-point matrix initialization.
   * @param[in,out] *S             points to an instance of the floating-point matrix structure.
   * @param[in]     nRows          number of rows in the matrix.
   * @param[in]     nColumns       number of columns in the matrix.
   * @param[in]     *pData	       points to the matrix data array.
   * @return        none
   */

  void arm_mat_init_f32(
  arm_matrix_instance_f32 * S,
  uint16_t nRows,
  uint16_t nColumns,
  float32_t * pData);



  /**
   * @brief Instance structure for the Q15 PID Control.
   */
  typedef struct
  {
    q15_t A0;    /**< The derived gain, A0 = Kp + Ki + Kd . */




    q31_t A1;           /**< The derived gain A1 = -Kp - 2Kd | Kd.*/

    q15_t state[3];       /**< The state array of length 3. */
    q15_t Kp;           /**< The proportional gain. */
    q15_t Ki;           /**< The integral gain. */
    q15_t Kd;           /**< The derivative gain. */
  } arm_pid_instance_q15;

  /**
   * @brief Instance structure for the Q31 PID Control.
   */
  typedef struct
  {
    q31_t A0;            /**< The derived gain, A0 = Kp + Ki + Kd . */
    q31_t A1;            /**< The derived gain, A1 = -Kp - 2Kd. */
    q31_t A2;            /**< The derived gain, A2 = Kd . */
    q31_t state[3];      /**< The state array of length 3. */
    q31_t Kp;            /**< The proportional gain. */
    q31_t Ki;            /**< The integral gain. */
    q31_t Kd;            /**< The derivative gain. */

  } arm_pid_instance_q31;

  /**
   * @brief Instance structure for the floating-point PID Control.
   */
  typedef struct
  {
    float32_t A0;          /**< The derived gain, A0 = Kp + Ki + Kd . */
    float32_t A1;          /**< The derived gain, A1 = -Kp - 2Kd. */
    float32_t A2;          /**< The derived gain, A2 = Kd . */
    float32_t state[3];    /**< The state array of length 3. */
    float32_t Kp;               /**< The proportional gain. */
    float32_t Ki;               /**< The integral gain. */
    float32_t Kd;               /**< The derivative gain. */
  } arm_pid_instance_f32;



  /**
   * @brief  Initialization function for the floating-point PID Control.
   * @param[in,out] *S      points to an instance of the PID structure.
   * @param[in]     resetStateFlag  flag to reset the state. 0 = no change in state 1 = reset the state.
   * @return none.
   */
  void arm_pid_init_f32(
  arm_pid_instance_f32 * S,
  int32_t resetStateFlag);

  /**
   * @brief  Reset function for the floating-point PID Control.
   * @param[in,out] *S is an instance of the floating-point PID Control structure
   * @return none
   */
  void arm_pid_reset_f32(
  arm_pid_instance_f32 * S);


  /**
   * @brief  Initialization function for the Q31 PID Control.
   * @param[in,out] *S points to an instance of the Q15 PID structure.
   * @param[in]     resetStateFlag  flag to reset the state. 0 = no change in state 1 = reset the state.
   * @return none.
   */
  void arm_pid_init_q31(
  arm_pid_instance_q31 * S,
  int32_t resetStateFlag);


  /**
   * @brief  Reset function for the Q31 PID Control.
   * @param[in,out] *S points to an instance of the Q31 PID Control structure
   * @return none
   */

  void arm_pid_reset_q31(
  arm_pid_instance_q31 * S);

  /**
   * @brief  Initialization function for the Q15 PID Control.
   * @param[in,out] *S points to an instance of the Q15 PID structure.
   * @param[in] resetStateFlag  flag to reset the state. 0 = no change in state 1 = reset the state.
   * @return none.
   */
  void arm_pid_init_q15(
  arm_pid_instance_q15 * S,
  int32_t resetStateFlag);

  /**
   * @brief  Reset function for the Q15 PID Control.
   * @param[in,out] *S points to an instance of the q15 PID Control structure
   * @return none
   */
  void arm_pid_reset_q15(
  arm_pid_instance_q15 * S);


  /**
   * @brief Instance structure for the floating-point Linear Interpolate function.
   */
  typedef struct
  {
    uint32_t nValues;           /**< nValues */
    float32_t x1;               /**< x1 */
    float32_t xSpacing;         /**< xSpacing */
    float32_t *pYData;          /**< pointer to the table of Y values */
  } arm_linear_interp_instance_f32;

  /**
   * @brief Instance structure for the floating-point bilinear interpolation function.
   */

  typedef struct
  {
    uint16_t numRows;   /**< number of rows in the data table. */
    uint16_t numCols;   /**< number of columns in the data table. */
    float32_t *pData;   /**< points to the data table. */
  } arm_bilinear_interp_instance_f32;

   /**
   * @brief Instance structure for the Q31 bilinear interpolation function.
   */

  typedef struct
  {
    uint16_t numRows;   /**< number of rows in the data table. */
    uint16_t numCols;   /**< number of columns in the data table. */
    q31_t *pData;       /**< points to the data table. */
  } arm_bilinear_interp_instance_q31;

   /**
   * @brief Instance structure for the Q15 bilinear interpolation function.
   */

  typedef struct
  {
    uint16_t numRows;   /**< number of rows in the data table. */
    uint16_t numCols;   /**< number of columns in the data table. */
    q15_t *pData;       /**< points to the data table. */
  } arm_bilinear_interp_instance_q15;

   /**
   * @brief Instance structure for the Q15 bilinear interpolation function.
   */

  typedef struct
  {
    uint16_t numRows;   /**< number of rows in the data table. */
    uint16_t numCols;   /**< number of columns in the data table. */
    q7_t *pData;                /**< points to the data table. */
  } arm_bilinear_interp_instance_q7;


  /**
   * @brief Q7 vector multiplication.
   * @param[in]       *pSrcA points to the first input vector
   * @param[in]       *pSrcB points to the second input vector
   * @param[out]      *pDst  points to the output vector
   * @param[in]       blockSize number of samples in each vector
   * @return none.
   */

  void arm_mult_q7(
  q7_t * pSrcA,
  q7_t * pSrcB,
  q7_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Q15 vector multiplication.
   * @param[in]       *pSrcA points to the first input vector
   * @param[in]       *pSrcB points to the second input vector
   * @param[out]      *pDst  points to the output vector
   * @param[in]       blockSize number of samples in each vector
   * @return none.
   */

  void arm_mult_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  q15_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Q31 vector multiplication.
   * @param[in]       *pSrcA points to the first input vector
   * @param[in]       *pSrcB points to the second input vector
   * @param[out]      *pDst points to the output vector
   * @param[in]       blockSize number of samples in each vector
   * @return none.
   */

  void arm_mult_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  q31_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Floating-point vector multiplication.
   * @param[in]       *pSrcA points to the first input vector
   * @param[in]       *pSrcB points to the second input vector
   * @param[out]      *pDst points to the output vector
   * @param[in]       blockSize number of samples in each vector
   * @return none.
   */

  void arm_mult_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  float32_t * pDst,
  uint32_t blockSize);






  /**
   * @brief Instance structure for the Q15 CFFT/CIFFT function.
   */

  typedef struct
  {
    uint16_t fftLen;                 /**< length of the FFT. */
    uint8_t ifftFlag;                /**< flag that selects forward (ifftFlag=0) or inverse (ifftFlag=1) transform. */
    uint8_t bitReverseFlag;          /**< flag that enables (bitReverseFlag=1) or disables (bitReverseFlag=0) bit reversal of output. */
    q15_t *pTwiddle;                     /**< points to the Sin twiddle factor table. */
    uint16_t *pBitRevTable;          /**< points to the bit reversal table. */
    uint16_t twidCoefModifier;       /**< twiddle coefficient modifier that supports different size FFTs with the same twiddle factor table. */
    uint16_t bitRevFactor;           /**< bit reversal modifier that supports different size FFTs with the same bit reversal table. */
  } arm_cfft_radix2_instance_q15;

  arm_status arm_cfft_radix2_init_q15(
  arm_cfft_radix2_instance_q15 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

  void arm_cfft_radix2_q15(
  const arm_cfft_radix2_instance_q15 * S,
  q15_t * pSrc);



  /**
   * @brief Instance structure for the Q15 CFFT/CIFFT function.
   */

  typedef struct
  {
    uint16_t fftLen;                 /**< length of the FFT. */
    uint8_t ifftFlag;                /**< flag that selects forward (ifftFlag=0) or inverse (ifftFlag=1) transform. */
    uint8_t bitReverseFlag;          /**< flag that enables (bitReverseFlag=1) or disables (bitReverseFlag=0) bit reversal of output. */
    q15_t *pTwiddle;                 /**< points to the twiddle factor table. */
    uint16_t *pBitRevTable;          /**< points to the bit reversal table. */
    uint16_t twidCoefModifier;       /**< twiddle coefficient modifier that supports different size FFTs with the same twiddle factor table. */
    uint16_t bitRevFactor;           /**< bit reversal modifier that supports different size FFTs with the same bit reversal table. */
  } arm_cfft_radix4_instance_q15;

  arm_status arm_cfft_radix4_init_q15(
  arm_cfft_radix4_instance_q15 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

  void arm_cfft_radix4_q15(
  const arm_cfft_radix4_instance_q15 * S,
  q15_t * pSrc);

  /**
   * @brief Instance structure for the Radix-2 Q31 CFFT/CIFFT function.
   */

  typedef struct
  {
    uint16_t fftLen;                 /**< length of the FFT. */
    uint8_t ifftFlag;                /**< flag that selects forward (ifftFlag=0) or inverse (ifftFlag=1) transform. */
    uint8_t bitReverseFlag;          /**< flag that enables (bitReverseFlag=1) or disables (bitReverseFlag=0) bit reversal of output. */
    q31_t *pTwiddle;                     /**< points to the Twiddle factor table. */
    uint16_t *pBitRevTable;          /**< points to the bit reversal table. */
    uint16_t twidCoefModifier;       /**< twiddle coefficient modifier that supports different size FFTs with the same twiddle factor table. */
    uint16_t bitRevFactor;           /**< bit reversal modifier that supports different size FFTs with the same bit reversal table. */
  } arm_cfft_radix2_instance_q31;

  arm_status arm_cfft_radix2_init_q31(
  arm_cfft_radix2_instance_q31 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

  void arm_cfft_radix2_q31(
  const arm_cfft_radix2_instance_q31 * S,
  q31_t * pSrc);

  /**
   * @brief Instance structure for the Q31 CFFT/CIFFT function.
   */

  typedef struct
  {
    uint16_t fftLen;                 /**< length of the FFT. */
    uint8_t ifftFlag;                /**< flag that selects forward (ifftFlag=0) or inverse (ifftFlag=1) transform. */
    uint8_t bitReverseFlag;          /**< flag that enables (bitReverseFlag=1) or disables (bitReverseFlag=0) bit reversal of output. */
    q31_t *pTwiddle;                 /**< points to the twiddle factor table. */
    uint16_t *pBitRevTable;          /**< points to the bit reversal table. */
    uint16_t twidCoefModifier;       /**< twiddle coefficient modifier that supports different size FFTs with the same twiddle factor table. */
    uint16_t bitRevFactor;           /**< bit reversal modifier that supports different size FFTs with the same bit reversal table. */
  } arm_cfft_radix4_instance_q31;

  void arm_cfft_radix4_q31(
  const arm_cfft_radix4_instance_q31 * S,
  q31_t * pSrc);

  arm_status arm_cfft_radix4_init_q31(
  arm_cfft_radix4_instance_q31 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

  /**
   * @brief Instance structure for the floating-point CFFT/CIFFT function.
   */

  typedef struct
  {
    uint16_t fftLen;                   /**< length of the FFT. */
    uint8_t ifftFlag;                  /**< flag that selects forward (ifftFlag=0) or inverse (ifftFlag=1) transform. */
    uint8_t bitReverseFlag;            /**< flag that enables (bitReverseFlag=1) or disables (bitReverseFlag=0) bit reversal of output. */
    float32_t *pTwiddle;               /**< points to the Twiddle factor table. */
    uint16_t *pBitRevTable;            /**< points to the bit reversal table. */
    uint16_t twidCoefModifier;         /**< twiddle coefficient modifier that supports different size FFTs with the same twiddle factor table. */
    uint16_t bitRevFactor;             /**< bit reversal modifier that supports different size FFTs with the same bit reversal table. */
    float32_t onebyfftLen;                 /**< value of 1/fftLen. */
  } arm_cfft_radix2_instance_f32;

/* Deprecated */
  arm_status arm_cfft_radix2_init_f32(
  arm_cfft_radix2_instance_f32 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

/* Deprecated */
  void arm_cfft_radix2_f32(
  const arm_cfft_radix2_instance_f32 * S,
  float32_t * pSrc);

  /**
   * @brief Instance structure for the floating-point CFFT/CIFFT function.
   */

  typedef struct
  {
    uint16_t fftLen;                   /**< length of the FFT. */
    uint8_t ifftFlag;                  /**< flag that selects forward (ifftFlag=0) or inverse (ifftFlag=1) transform. */
    uint8_t bitReverseFlag;            /**< flag that enables (bitReverseFlag=1) or disables (bitReverseFlag=0) bit reversal of output. */
    float32_t *pTwiddle;               /**< points to the Twiddle factor table. */
    uint16_t *pBitRevTable;            /**< points to the bit reversal table. */
    uint16_t twidCoefModifier;         /**< twiddle coefficient modifier that supports different size FFTs with the same twiddle factor table. */
    uint16_t bitRevFactor;             /**< bit reversal modifier that supports different size FFTs with the same bit reversal table. */
    float32_t onebyfftLen;                 /**< value of 1/fftLen. */
  } arm_cfft_radix4_instance_f32;

/* Deprecated */
  arm_status arm_cfft_radix4_init_f32(
  arm_cfft_radix4_instance_f32 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

/* Deprecated */
  void arm_cfft_radix4_f32(
  const arm_cfft_radix4_instance_f32 * S,
  float32_t * pSrc);

  /**
   * @brief Instance structure for the floating-point CFFT/CIFFT function.
   */

  typedef struct
  {
    uint16_t fftLen;                   /**< length of the FFT. */
    const float32_t *pTwiddle;         /**< points to the Twiddle factor table. */
    const uint16_t *pBitRevTable;      /**< points to the bit reversal table. */
    uint16_t bitRevLength;             /**< bit reversal table length. */
  } arm_cfft_instance_f32;

  void arm_cfft_f32(
  const arm_cfft_instance_f32 * S,
  float32_t * p1,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

  /**
   * @brief Instance structure for the Q15 RFFT/RIFFT function.
   */

  typedef struct
  {
    uint32_t fftLenReal;                      /**< length of the real FFT. */
    uint32_t fftLenBy2;                       /**< length of the complex FFT. */
    uint8_t ifftFlagR;                        /**< flag that selects forward (ifftFlagR=0) or inverse (ifftFlagR=1) transform. */
    uint8_t bitReverseFlagR;                      /**< flag that enables (bitReverseFlagR=1) or disables (bitReverseFlagR=0) bit reversal of output. */
    uint32_t twidCoefRModifier;               /**< twiddle coefficient modifier that supports different size FFTs with the same twiddle factor table. */
    q15_t *pTwiddleAReal;                     /**< points to the real twiddle factor table. */
    q15_t *pTwiddleBReal;                     /**< points to the imag twiddle factor table. */
    arm_cfft_radix4_instance_q15 *pCfft;          /**< points to the complex FFT instance. */
  } arm_rfft_instance_q15;

  arm_status arm_rfft_init_q15(
  arm_rfft_instance_q15 * S,
  arm_cfft_radix4_instance_q15 * S_CFFT,
  uint32_t fftLenReal,
  uint32_t ifftFlagR,
  uint32_t bitReverseFlag);

  void arm_rfft_q15(
  const arm_rfft_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst);

  /**
   * @brief Instance structure for the Q31 RFFT/RIFFT function.
   */

  typedef struct
  {
    uint32_t fftLenReal;                        /**< length of the real FFT. */
    uint32_t fftLenBy2;                         /**< length of the complex FFT. */
    uint8_t ifftFlagR;                          /**< flag that selects forward (ifftFlagR=0) or inverse (ifftFlagR=1) transform. */
    uint8_t bitReverseFlagR;                        /**< flag that enables (bitReverseFlagR=1) or disables (bitReverseFlagR=0) bit reversal of output. */
    uint32_t twidCoefRModifier;                 /**< twiddle coefficient modifier that supports different size FFTs with the same twiddle factor table. */
    q31_t *pTwiddleAReal;                       /**< points to the real twiddle factor table. */
    q31_t *pTwiddleBReal;                       /**< points to the imag twiddle factor table. */
    arm_cfft_radix4_instance_q31 *pCfft;        /**< points to the complex FFT instance. */
  } arm_rfft_instance_q31;

  arm_status arm_rfft_init_q31(
  arm_rfft_instance_q31 * S,
  arm_cfft_radix4_instance_q31 * S_CFFT,
  uint32_t fftLenReal,
  uint32_t ifftFlagR,
  uint32_t bitReverseFlag);

  void arm_rfft_q31(
  const arm_rfft_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst);

  /**
   * @brief Instance structure for the floating-point RFFT/RIFFT function.
   */

  typedef struct
  {
    uint32_t fftLenReal;                        /**< length of the real FFT. */
    uint16_t fftLenBy2;                         /**< length of the complex FFT. */
    uint8_t ifftFlagR;                          /**< flag that selects forward (ifftFlagR=0) or inverse (ifftFlagR=1) transform. */
    uint8_t bitReverseFlagR;                    /**< flag that enables (bitReverseFlagR=1) or disables (bitReverseFlagR=0) bit reversal of output. */
    uint32_t twidCoefRModifier;                     /**< twiddle coefficient modifier that supports different size FFTs with the same twiddle factor table. */
    float32_t *pTwiddleAReal;                   /**< points to the real twiddle factor table. */
    float32_t *pTwiddleBReal;                   /**< points to the imag twiddle factor table. */
    arm_cfft_radix4_instance_f32 *pCfft;        /**< points to the complex FFT instance. */
  } arm_rfft_instance_f32;

  arm_status arm_rfft_init_f32(
  arm_rfft_instance_f32 * S,
  arm_cfft_radix4_instance_f32 * S_CFFT,
  uint32_t fftLenReal,
  uint32_t ifftFlagR,
  uint32_t bitReverseFlag);

  void arm_rfft_f32(
  const arm_rfft_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst);

  /**
   * @brief Instance structure for the floating-point RFFT/RIFFT function.
   */

typedef struct
  {
    arm_cfft_instance_f32 Sint;      /**< Internal CFFT structure. */
    uint16_t fftLenRFFT;                        /**< length of the real sequence */
	float32_t * pTwiddleRFFT;					/**< Twiddle factors real stage  */
  } arm_rfft_fast_instance_f32 ;

arm_status arm_rfft_fast_init_f32 (
	arm_rfft_fast_instance_f32 * S,
	uint16_t fftLen);

void arm_rfft_fast_f32(
  arm_rfft_fast_instance_f32 * S,
  float32_t * p, float32_t * pOut,
  uint8_t ifftFlag);

  /**
   * @brief Instance structure for the floating-point DCT4/IDCT4 function.
   */

  typedef struct
  {
    uint16_t N;                         /**< length of the DCT4. */
    uint16_t Nby2;                      /**< half of the length of the DCT4. */
    float32_t normalize;                /**< normalizing factor. */
    float32_t *pTwiddle;                /**< points to the twiddle factor table. */
    float32_t *pCosFactor;              /**< points to the cosFactor table. */
    arm_rfft_instance_f32 *pRfft;        /**< points to the real FFT instance. */
    arm_cfft_radix4_instance_f32 *pCfft; /**< points to the complex FFT instance. */
  } arm_dct4_instance_f32;

  /**
   * @brief  Initialization function for the floating-point DCT4/IDCT4.
   * @param[in,out] *S         points to an instance of floating-point DCT4/IDCT4 structure.
   * @param[in]     *S_RFFT    points to an instance of floating-point RFFT/RIFFT structure.
   * @param[in]     *S_CFFT    points to an instance of floating-point CFFT/CIFFT structure.
   * @param[in]     N          length of the DCT4.
   * @param[in]     Nby2       half of the length of the DCT4.
   * @param[in]     normalize  normalizing factor.
   * @return		arm_status function returns ARM_MATH_SUCCESS if initialization is successful or ARM_MATH_ARGUMENT_ERROR if <code>fftLenReal</code> is not a supported transform length.
   */

  arm_status arm_dct4_init_f32(
  arm_dct4_instance_f32 * S,
  arm_rfft_instance_f32 * S_RFFT,
  arm_cfft_radix4_instance_f32 * S_CFFT,
  uint16_t N,
  uint16_t Nby2,
  float32_t normalize);

  /**
   * @brief Processing function for the floating-point DCT4/IDCT4.
   * @param[in]       *S             points to an instance of the floating-point DCT4/IDCT4 structure.
   * @param[in]       *pState        points to state buffer.
   * @param[in,out]   *pInlineBuffer points to the in-place input and output buffer.
   * @return none.
   */

  void arm_dct4_f32(
  const arm_dct4_instance_f32 * S,
  float32_t * pState,
  float32_t * pInlineBuffer);

  /**
   * @brief Instance structure for the Q31 DCT4/IDCT4 function.
   */

  typedef struct
  {
    uint16_t N;                         /**< length of the DCT4. */
    uint16_t Nby2;                      /**< half of the length of the DCT4. */
    q31_t normalize;                    /**< normalizing factor. */
    q31_t *pTwiddle;                    /**< points to the twiddle factor table. */
    q31_t *pCosFactor;                  /**< points to the cosFactor table. */
    arm_rfft_instance_q31 *pRfft;        /**< points to the real FFT instance. */
    arm_cfft_radix4_instance_q31 *pCfft; /**< points to the complex FFT instance. */
  } arm_dct4_instance_q31;

  /**
   * @brief  Initialization function for the Q31 DCT4/IDCT4.
   * @param[in,out] *S         points to an instance of Q31 DCT4/IDCT4 structure.
   * @param[in]     *S_RFFT    points to an instance of Q31 RFFT/RIFFT structure
   * @param[in]     *S_CFFT    points to an instance of Q31 CFFT/CIFFT structure
   * @param[in]     N          length of the DCT4.
   * @param[in]     Nby2       half of the length of the DCT4.
   * @param[in]     normalize  normalizing factor.
   * @return		arm_status function returns ARM_MATH_SUCCESS if initialization is successful or ARM_MATH_ARGUMENT_ERROR if <code>N</code> is not a supported transform length.
   */

  arm_status arm_dct4_init_q31(
  arm_dct4_instance_q31 * S,
  arm_rfft_instance_q31 * S_RFFT,
  arm_cfft_radix4_instance_q31 * S_CFFT,
  uint16_t N,
  uint16_t Nby2,
  q31_t normalize);

  /**
   * @brief Processing function for the Q31 DCT4/IDCT4.
   * @param[in]       *S             points to an instance of the Q31 DCT4 structure.
   * @param[in]       *pState        points to state buffer.
   * @param[in,out]   *pInlineBuffer points to the in-place input and output buffer.
   * @return none.
   */

  void arm_dct4_q31(
  const arm_dct4_instance_q31 * S,
  q31_t * pState,
  q31_t * pInlineBuffer);

  /**
   * @brief Instance structure for the Q15 DCT4/IDCT4 function.
   */

  typedef struct
  {
    uint16_t N;                         /**< length of the DCT4. */
    uint16_t Nby2;                      /**< half of the length of the DCT4. */
    q15_t normalize;                    /**< normalizing factor. */
    q15_t *pTwiddle;                    /**< points to the twiddle factor table. */
    q15_t *pCosFactor;                  /**< points to the cosFactor table. */
    arm_rfft_instance_q15 *pRfft;        /**< points to the real FFT instance. */
    arm_cfft_radix4_instance_q15 *pCfft; /**< points to the complex FFT instance. */
  } arm_dct4_instance_q15;

  /**
   * @brief  Initialization function for the Q15 DCT4/IDCT4.
   * @param[in,out] *S         points to an instance of Q15 DCT4/IDCT4 structure.
   * @param[in]     *S_RFFT    points to an instance of Q15 RFFT/RIFFT structure.
   * @param[in]     *S_CFFT    points to an instance of Q15 CFFT/CIFFT structure.
   * @param[in]     N          length of the DCT4.
   * @param[in]     Nby2       half of the length of the DCT4.
   * @param[in]     normalize  normalizing factor.
   * @return		arm_status function returns ARM_MATH_SUCCESS if initialization is successful or ARM_MATH_ARGUMENT_ERROR if <code>N</code> is not a supported transform length.
   */

  arm_status arm_dct4_init_q15(
  arm_dct4_instance_q15 * S,
  arm_rfft_instance_q15 * S_RFFT,
  arm_cfft_radix4_instance_q15 * S_CFFT,
  uint16_t N,
  uint16_t Nby2,
  q15_t normalize);

  /**
   * @brief Processing function for the Q15 DCT4/IDCT4.
   * @param[in]       *S             points to an instance of the Q15 DCT4 structure.
   * @param[in]       *pState        points to state buffer.
   * @param[in,out]   *pInlineBuffer points to the in-place input and output buffer.
   * @return none.
   */

  void arm_dct4_q15(
  const arm_dct4_instance_q15 * S,
  q15_t * pState,
  q15_t * pInlineBuffer);

  /**
   * @brief Floating-point vector addition.
   * @param[in]       *pSrcA points to the first input vector
   * @param[in]       *pSrcB points to the second input vector
   * @param[out]      *pDst points to the output vector
   * @param[in]       blockSize number of samples in each vector
   * @return none.
   */

  void arm_add_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  float32_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Q7 vector addition.
   * @param[in]       *pSrcA points to the first input vector
   * @param[in]       *pSrcB points to the second input vector
   * @param[out]      *pDst points to the output vector
   * @param[in]       blockSize number of samples in each vector
   * @return none.
   */

  void arm_add_q7(
  q7_t * pSrcA,
  q7_t * pSrcB,
  q7_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Q15 vector addition.
   * @param[in]       *pSrcA points to the first input vector
   * @param[in]       *pSrcB points to the second input vector
   * @param[out]      *pDst points to the output vector
   * @param[in]       blockSize number of samples in each vector
   * @return none.
   */

  void arm_add_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  q15_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Q31 vector addition.
   * @param[in]       *pSrcA points to the first input vector
   * @param[in]       *pSrcB points to the second input vector
   * @param[out]      *pDst points to the output vector
   * @param[in]       blockSize number of samples in each vector
   * @return none.
   */

  void arm_add_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  q31_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Floating-point vector subtraction.
   * @param[in]       *pSrcA points to the first input vector
   * @param[in]       *pSrcB points to the second input vector
   * @param[out]      *pDst points to the output vector
   * @param[in]       blockSize number of samples in each vector
   * @return none.
   */

  void arm_sub_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  float32_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Q7 vector subtraction.
   * @param[in]       *pSrcA points to the first input vector
   * @param[in]       *pSrcB points to the second input vector
   * @param[out]      *pDst points to the output vector
   * @param[in]       blockSize number of samples in each vector
   * @return none.
   */

  void arm_sub_q7(
  q7_t * pSrcA,
  q7_t * pSrcB,
  q7_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Q15 vector subtraction.
   * @param[in]       *pSrcA points to the first input vector
   * @param[in]       *pSrcB points to the second input vector
   * @param[out]      *pDst points to the output vector
   * @param[in]       blockSize number of samples in each vector
   * @return none.
   */

  void arm_sub_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  q15_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Q31 vector subtraction.
   * @param[in]       *pSrcA points to the first input vector
   * @param[in]       *pSrcB points to the second input vector
   * @param[out]      *pDst points to the output vector
   * @param[in]       blockSize number of samples in each vector
   * @return none.
   */

  void arm_sub_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  q31_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Multiplies a floating-point vector by a scalar.
   * @param[in]       *pSrc points to the input vector
   * @param[in]       scale scale factor to be applied
   * @param[out]      *pDst points to the output vector
   * @param[in]       blockSize number of samples in the vector
   * @return none.
   */

  void arm_scale_f32(
  float32_t * pSrc,
  float32_t scale,
  float32_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Multiplies a Q7 vector by a scalar.
   * @param[in]       *pSrc points to the input vector
   * @param[in]       scaleFract fractional portion of the scale value
   * @param[in]       shift number of bits to shift the result by
   * @param[out]      *pDst points to the output vector
   * @param[in]       blockSize number of samples in the vector
   * @return none.
   */

  void arm_scale_q7(
  q7_t * pSrc,
  q7_t scaleFract,
  int8_t shift,
  q7_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Multiplies a Q15 vector by a scalar.
   * @param[in]       *pSrc points to the input vector
   * @param[in]       scaleFract fractional portion of the scale value
   * @param[in]       shift number of bits to shift the result by
   * @param[out]      *pDst points to the output vector
   * @param[in]       blockSize number of samples in the vector
   * @return none.
   */

  void arm_scale_q15(
  q15_t * pSrc,
  q15_t scaleFract,
  int8_t shift,
  q15_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Multiplies a Q31 vector by a scalar.
   * @param[in]       *pSrc points to the input vector
   * @param[in]       scaleFract fractional portion of the scale value
   * @param[in]       shift number of bits to shift the result by
   * @param[out]      *pDst points to the output vector
   * @param[in]       blockSize number of samples in the vector
   * @return none.
   */

  void arm_scale_q31(
  q31_t * pSrc,
  q31_t scaleFract,
  int8_t shift,
  q31_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Q7 vector absolute value.
   * @param[in]       *pSrc points to the input buffer
   * @param[out]      *pDst points to the output buffer
   * @param[in]       blockSize number of samples in each vector
   * @return none.
   */

  void arm_abs_q7(
  q7_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Floating-point vector absolute value.
   * @param[in]       *pSrc points to the input buffer
   * @param[out]      *pDst points to the output buffer
   * @param[in]       blockSize number of samples in each vector
   * @return none.
   */

  void arm_abs_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Q15 vector absolute value.
   * @param[in]       *pSrc points to the input buffer
   * @param[out]      *pDst points to the output buffer
   * @param[in]       blockSize number of samples in each vector
   * @return none.
   */

  void arm_abs_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Q31 vector absolute value.
   * @param[in]       *pSrc points to the input buffer
   * @param[out]      *pDst points to the output buffer
   * @param[in]       blockSize number of samples in each vector
   * @return none.
   */

  void arm_abs_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Dot product of floating-point vectors.
   * @param[in]       *pSrcA points to the first input vector
   * @param[in]       *pSrcB points to the second input vector
   * @param[in]       blockSize number of samples in each vector
   * @param[out]      *result output result returned here
   * @return none.
   */

  void arm_dot_prod_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  uint32_t blockSize,
  float32_t * result);

  /**
   * @brief Dot product of Q7 vectors.
   * @param[in]       *pSrcA points to the first input vector
   * @param[in]       *pSrcB points to the second input vector
   * @param[in]       blockSize number of samples in each vector
   * @param[out]      *result output result returned here
   * @return none.
   */

  void arm_dot_prod_q7(
  q7_t * pSrcA,
  q7_t * pSrcB,
  uint32_t blockSize,
  q31_t * result);

  /**
   * @brief Dot product of Q15 vectors.
   * @param[in]       *pSrcA points to the first input vector
   * @param[in]       *pSrcB points to the second input vector
   * @param[in]       blockSize number of samples in each vector
   * @param[out]      *result output result returned here
   * @return none.
   */

  void arm_dot_prod_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  uint32_t blockSize,
  q63_t * result);

  /**
   * @brief Dot product of Q31 vectors.
   * @param[in]       *pSrcA points to the first input vector
   * @param[in]       *pSrcB points to the second input vector
   * @param[in]       blockSize number of samples in each vector
   * @param[out]      *result output result returned here
   * @return none.
   */

  void arm_dot_prod_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  uint32_t blockSize,
  q63_t * result);

  /**
   * @brief  Shifts the elements of a Q7 vector a specified number of bits.
   * @param[in]  *pSrc points to the input vector
   * @param[in]  shiftBits number of bits to shift.  A positive value shifts left; a negative value shifts right.
   * @param[out]  *pDst points to the output vector
   * @param[in]  blockSize number of samples in the vector
   * @return none.
   */

  void arm_shift_q7(
  q7_t * pSrc,
  int8_t shiftBits,
  q7_t * pDst,
  uint32_t blockSize);

  /**
   * @brief  Shifts the elements of a Q15 vector a specified number of bits.
   * @param[in]  *pSrc points to the input vector
   * @param[in]  shiftBits number of bits to shift.  A positive value shifts left; a negative value shifts right.
   * @param[out]  *pDst points to the output vector
   * @param[in]  blockSize number of samples in the vector
   * @return none.
   */

  void arm_shift_q15(
  q15_t * pSrc,
  int8_t shiftBits,
  q15_t * pDst,
  uint32_t blockSize);

  /**
   * @brief  Shifts the elements of a Q31 vector a specified number of bits.
   * @param[in]  *pSrc points to the input vector
   * @param[in]  shiftBits number of bits to shift.  A positive value shifts left; a negative value shifts right.
   * @param[out]  *pDst points to the output vector
   * @param[in]  blockSize number of samples in the vector
   * @return none.
   */

  void arm_shift_q31(
  q31_t * pSrc,
  int8_t shiftBits,
  q31_t * pDst,
  uint32_t blockSize);

  /**
   * @brief  Adds a constant offset to a floating-point vector.
   * @param[in]  *pSrc points to the input vector
   * @param[in]  offset is the offset to be added
   * @param[out]  *pDst points to the output vector
   * @param[in]  blockSize number of samples in the vector
   * @return none.
   */

  void arm_offset_f32(
  float32_t * pSrc,
  float32_t offset,
  float32_t * pDst,
  uint32_t blockSize);

  /**
   * @brief  Adds a constant offset to a Q7 vector.
   * @param[in]  *pSrc points to the input vector
   * @param[in]  offset is the offset to be added
   * @param[out]  *pDst points to the output vector
   * @param[in]  blockSize number of samples in the vector
   * @return none.
   */

  void arm_offset_q7(
  q7_t * pSrc,
  q7_t offset,
  q7_t * pDst,
  uint32_t blockSize);

  /**
   * @brief  Adds a constant offset to a Q15 vector.
   * @param[in]  *pSrc points to the input vector
   * @param[in]  offset is the offset to be added
   * @param[out]  *pDst points to the output vector
   * @param[in]  blockSize number of samples in the vector
   * @return none.
   */

  void arm_offset_q15(
  q15_t * pSrc,
  q15_t offset,
  q15_t * pDst,
  uint32_t blockSize);

  /**
   * @brief  Adds a constant offset to a Q31 vector.
   * @param[in]  *pSrc points to the input vector
   * @param[in]  offset is the offset to be added
   * @param[out]  *pDst points to the output vector
   * @param[in]  blockSize number of samples in the vector
   * @return none.
   */

  void arm_offset_q31(
  q31_t * pSrc,
  q31_t offset,
  q31_t * pDst,
  uint32_t blockSize);

  /**
   * @brief  Negates the elements of a floating-point vector.
   * @param[in]  *pSrc points to the input vector
   * @param[out]  *pDst points to the output vector
   * @param[in]  blockSize number of samples in the vector
   * @return none.
   */

  void arm_negate_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  /**
   * @brief  Negates the elements of a Q7 vector.
   * @param[in]  *pSrc points to the input vector
   * @param[out]  *pDst points to the output vector
   * @param[in]  blockSize number of samples in the vector
   * @return none.
   */

  void arm_negate_q7(
  q7_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);

  /**
   * @brief  Negates the elements of a Q15 vector.
   * @param[in]  *pSrc points to the input vector
   * @param[out]  *pDst points to the output vector
   * @param[in]  blockSize number of samples in the vector
   * @return none.
   */

  void arm_negate_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  /**
   * @brief  Negates the elements of a Q31 vector.
   * @param[in]  *pSrc points to the input vector
   * @param[out]  *pDst points to the output vector
   * @param[in]  blockSize number of samples in the vector
   * @return none.
   */

  void arm_negate_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);
  /**
   * @brief  Copies the elements of a floating-point vector.
   * @param[in]  *pSrc input pointer
   * @param[out]  *pDst output pointer
   * @param[in]  blockSize number of samples to process
   * @return none.
   */
  void arm_copy_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  /**
   * @brief  Copies the elements of a Q7 vector.
   * @param[in]  *pSrc input pointer
   * @param[out]  *pDst output pointer
   * @param[in]  blockSize number of samples to process
   * @return none.
   */
  void arm_copy_q7(
  q7_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);

  /**
   * @brief  Copies the elements of a Q15 vector.
   * @param[in]  *pSrc input pointer
   * @param[out]  *pDst output pointer
   * @param[in]  blockSize number of samples to process
   * @return none.
   */
  void arm_copy_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  /**
   * @brief  Copies the elements of a Q31 vector.
   * @param[in]  *pSrc input pointer
   * @param[out]  *pDst output pointer
   * @param[in]  blockSize number of samples to process
   * @return none.
   */
  void arm_copy_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);
  /**
   * @brief  Fills a constant value into a floating-point vector.
   * @param[in]  value input value to be filled
   * @param[out]  *pDst output pointer
   * @param[in]  blockSize number of samples to process
   * @return none.
   */
  void arm_fill_f32(
  float32_t value,
  float32_t * pDst,
  uint32_t blockSize);

  /**
   * @brief  Fills a constant value into a Q7 vector.
   * @param[in]  value input value to be filled
   * @param[out]  *pDst output pointer
   * @param[in]  blockSize number of samples to process
   * @return none.
   */
  void arm_fill_q7(
  q7_t value,
  q7_t * pDst,
  uint32_t blockSize);

  /**
   * @brief  Fills a constant value into a Q15 vector.
   * @param[in]  value input value to be filled
   * @param[out]  *pDst output pointer
   * @param[in]  blockSize number of samples to process
   * @return none.
   */
  void arm_fill_q15(
  q15_t value,
  q15_t * pDst,
  uint32_t blockSize);

  /**
   * @brief  Fills a constant value into a Q31 vector.
   * @param[in]  value input value to be filled
   * @param[out]  *pDst output pointer
   * @param[in]  blockSize number of samples to process
   * @return none.
   */
  void arm_fill_q31(
  q31_t value,
  q31_t * pDst,
  uint32_t blockSize);

/**
 * @brief Convolution of floating-point sequences.
 * @param[in] *pSrcA points to the first input sequence.
 * @param[in] srcALen length of the first input sequence.
 * @param[in] *pSrcB points to the second input sequence.
 * @param[in] srcBLen length of the second input sequence.
 * @param[out] *pDst points to the location where the output result is written.  Length srcALen+srcBLen-1.
 * @return none.
 */

  void arm_conv_f32(
  float32_t * pSrcA,
  uint32_t srcALen,
  float32_t * pSrcB,
  uint32_t srcBLen,
  float32_t * pDst);


  /**
   * @brief Convolution of Q15 sequences.
   * @param[in] *pSrcA points to the first input sequence.
   * @param[in] srcALen length of the first input sequence.
   * @param[in] *pSrcB points to the second input sequence.
   * @param[in] srcBLen length of the second input sequence.
   * @param[out] *pDst points to the block of output data  Length srcALen+srcBLen-1.
   * @param[in]  *pScratch1 points to scratch buffer of size max(srcALen, srcBLen) + 2*min(srcALen, srcBLen) - 2.
   * @param[in]  *pScratch2 points to scratch buffer of size min(srcALen, srcBLen).
   * @return none.
   */


  void arm_conv_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  q15_t * pScratch1,
  q15_t * pScratch2);


/**
 * @brief Convolution of Q15 sequences.
 * @param[in] *pSrcA points to the first input sequence.
 * @param[in] srcALen length of the first input sequence.
 * @param[in] *pSrcB points to the second input sequence.
 * @param[in] srcBLen length of the second input sequence.
 * @param[out] *pDst points to the location where the output result is written.  Length srcALen+srcBLen-1.
 * @return none.
 */

  void arm_conv_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst);

  /**
   * @brief Convolution of Q15 sequences (fast version) for Cortex-M3 and Cortex-M4
   * @param[in] *pSrcA points to the first input sequence.
   * @param[in] srcALen length of the first input sequence.
   * @param[in] *pSrcB points to the second input sequence.
   * @param[in] srcBLen length of the second input sequence.
   * @param[out] *pDst points to the block of output data  Length srcALen+srcBLen-1.
   * @return none.
   */

  void arm_conv_fast_q15(
			  q15_t * pSrcA,
			 uint32_t srcALen,
			  q15_t * pSrcB,
			 uint32_t srcBLen,
			 q15_t * pDst);

  /**
   * @brief Convolution of Q15 sequences (fast version) for Cortex-M3 and Cortex-M4
   * @param[in] *pSrcA points to the first input sequence.
   * @param[in] srcALen length of the first input sequence.
   * @param[in] *pSrcB points to the second input sequence.
   * @param[in] srcBLen length of the second input sequence.
   * @param[out] *pDst points to the block of output data  Length srcALen+srcBLen-1.
   * @param[in]  *pScratch1 points to scratch buffer of size max(srcALen, srcBLen) + 2*min(srcALen, srcBLen) - 2.
   * @param[in]  *pScratch2 points to scratch buffer of size min(srcALen, srcBLen).
   * @return none.
   */

  void arm_conv_fast_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  q15_t * pScratch1,
  q15_t * pScratch2);



  /**
   * @brief Convolution of Q31 sequences.
   * @param[in] *pSrcA points to the first input sequence.
   * @param[in] srcALen length of the first input sequence.
   * @param[in] *pSrcB points to the second input sequence.
   * @param[in] srcBLen length of the second input sequence.
   * @param[out] *pDst points to the block of output data  Length srcALen+srcBLen-1.
   * @return none.
   */

  void arm_conv_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst);

  /**
   * @brief Convolution of Q31 sequences (fast version) for Cortex-M3 and Cortex-M4
   * @param[in] *pSrcA points to the first input sequence.
   * @param[in] srcALen length of the first input sequence.
   * @param[in] *pSrcB points to the second input sequence.
   * @param[in] srcBLen length of the second input sequence.
   * @param[out] *pDst points to the block of output data  Length srcALen+srcBLen-1.
   * @return none.
   */

  void arm_conv_fast_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst);


    /**
   * @brief Convolution of Q7 sequences.
   * @param[in] *pSrcA points to the first input sequence.
   * @param[in] srcALen length of the first input sequence.
   * @param[in] *pSrcB points to the second input sequence.
   * @param[in] srcBLen length of the second input sequence.
   * @param[out] *pDst points to the block of output data  Length srcALen+srcBLen-1.
   * @param[in]  *pScratch1 points to scratch buffer(of type q15_t) of size max(srcALen, srcBLen) + 2*min(srcALen, srcBLen) - 2.
   * @param[in]  *pScratch2 points to scratch buffer (of type q15_t) of size min(srcALen, srcBLen).
   * @return none.
   */

  void arm_conv_opt_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst,
  q15_t * pScratch1,
  q15_t * pScratch2);



  /**
   * @brief Convolution of Q7 sequences.
   * @param[in] *pSrcA points to the first input sequence.
   * @param[in] srcALen length of the first input sequence.
   * @param[in] *pSrcB points to the second input sequence.
   * @param[in] srcBLen length of the second input sequence.
   * @param[out] *pDst points to the block of output data  Length srcALen+srcBLen-1.
   * @return none.
   */

  void arm_conv_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst);


  /**
   * @brief Partial convolution of floating-point sequences.
   * @param[in]       *pSrcA points to the first input sequence.
   * @param[in]       srcALen length of the first input sequence.
   * @param[in]       *pSrcB points to the second input sequence.
   * @param[in]       srcBLen length of the second input sequence.
   * @param[out]      *pDst points to the block of output data
   * @param[in]       firstIndex is the first output sample to start with.
   * @param[in]       numPoints is the number of output points to be computed.
   * @return  Returns either ARM_MATH_SUCCESS if the function completed correctly or ARM_MATH_ARGUMENT_ERROR if the requested subset is not in the range [0 srcALen+srcBLen-2].
   */

  arm_status arm_conv_partial_f32(
  float32_t * pSrcA,
  uint32_t srcALen,
  float32_t * pSrcB,
  uint32_t srcBLen,
  float32_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints);

    /**
   * @brief Partial convolution of Q15 sequences.
   * @param[in]       *pSrcA points to the first input sequence.
   * @param[in]       srcALen length of the first input sequence.
   * @param[in]       *pSrcB points to the second input sequence.
   * @param[in]       srcBLen length of the second input sequence.
   * @param[out]      *pDst points to the block of output data
   * @param[in]       firstIndex is the first output sample to start with.
   * @param[in]       numPoints is the number of output points to be computed.
   * @param[in]       * pScratch1 points to scratch buffer of size max(srcALen, srcBLen) + 2*min(srcALen, srcBLen) - 2.
   * @param[in]       * pScratch2 points to scratch buffer of size min(srcALen, srcBLen).
   * @return  Returns either ARM_MATH_SUCCESS if the function completed correctly or ARM_MATH_ARGUMENT_ERROR if the requested subset is not in the range [0 srcALen+srcBLen-2].
   */

  arm_status arm_conv_partial_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints,
  q15_t * pScratch1,
  q15_t * pScratch2);


/**
   * @brief Partial convolution of Q15 sequences.
   * @param[in]       *pSrcA points to the first input sequence.
   * @param[in]       srcALen length of the first input sequence.
   * @param[in]       *pSrcB points to the second input sequence.
   * @param[in]       srcBLen length of the second input sequence.
   * @param[out]      *pDst points to the block of output data
   * @param[in]       firstIndex is the first output sample to start with.
   * @param[in]       numPoints is the number of output points to be computed.
   * @return  Returns either ARM_MATH_SUCCESS if the function completed correctly or ARM_MATH_ARGUMENT_ERROR if the requested subset is not in the range [0 srcALen+srcBLen-2].
   */

  arm_status arm_conv_partial_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints);

  /**
   * @brief Partial convolution of Q15 sequences (fast version) for Cortex-M3 and Cortex-M4
   * @param[in]       *pSrcA points to the first input sequence.
   * @param[in]       srcALen length of the first input sequence.
   * @param[in]       *pSrcB points to the second input sequence.
   * @param[in]       srcBLen length of the second input sequence.
   * @param[out]      *pDst points to the block of output data
   * @param[in]       firstIndex is the first output sample to start with.
   * @param[in]       numPoints is the number of output points to be computed.
   * @return  Returns either ARM_MATH_SUCCESS if the function completed correctly or ARM_MATH_ARGUMENT_ERROR if the requested subset is not in the range [0 srcALen+srcBLen-2].
   */

  arm_status arm_conv_partial_fast_q15(
				        q15_t * pSrcA,
				       uint32_t srcALen,
				        q15_t * pSrcB,
				       uint32_t srcBLen,
				       q15_t * pDst,
				       uint32_t firstIndex,
				       uint32_t numPoints);


  /**
   * @brief Partial convolution of Q15 sequences (fast version) for Cortex-M3 and Cortex-M4
   * @param[in]       *pSrcA points to the first input sequence.
   * @param[in]       srcALen length of the first input sequence.
   * @param[in]       *pSrcB points to the second input sequence.
   * @param[in]       srcBLen length of the second input sequence.
   * @param[out]      *pDst points to the block of output data
   * @param[in]       firstIndex is the first output sample to start with.
   * @param[in]       numPoints is the number of output points to be computed.
   * @param[in]       * pScratch1 points to scratch buffer of size max(srcALen, srcBLen) + 2*min(srcALen, srcBLen) - 2.
   * @param[in]       * pScratch2 points to scratch buffer of size min(srcALen, srcBLen).
   * @return  Returns either ARM_MATH_SUCCESS if the function completed correctly or ARM_MATH_ARGUMENT_ERROR if the requested subset is not in the range [0 srcALen+srcBLen-2].
   */

  arm_status arm_conv_partial_fast_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints,
  q15_t * pScratch1,
  q15_t * pScratch2);


  /**
   * @brief Partial convolution of Q31 sequences.
   * @param[in]       *pSrcA points to the first input sequence.
   * @param[in]       srcALen length of the first input sequence.
   * @param[in]       *pSrcB points to the second input sequence.
   * @param[in]       srcBLen length of the second input sequence.
   * @param[out]      *pDst points to the block of output data
   * @param[in]       firstIndex is the first output sample to start with.
   * @param[in]       numPoints is the number of output points to be computed.
   * @return  Returns either ARM_MATH_SUCCESS if the function completed correctly or ARM_MATH_ARGUMENT_ERROR if the requested subset is not in the range [0 srcALen+srcBLen-2].
   */

  arm_status arm_conv_partial_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints);


  /**
   * @brief Partial convolution of Q31 sequences (fast version) for Cortex-M3 and Cortex-M4
   * @param[in]       *pSrcA points to the first input sequence.
   * @param[in]       srcALen length of the first input sequence.
   * @param[in]       *pSrcB points to the second input sequence.
   * @param[in]       srcBLen length of the second input sequence.
   * @param[out]      *pDst points to the block of output data
   * @param[in]       firstIndex is the first output sample to start with.
   * @param[in]       numPoints is the number of output points to be computed.
   * @return  Returns either ARM_MATH_SUCCESS if the function completed correctly or ARM_MATH_ARGUMENT_ERROR if the requested subset is not in the range [0 srcALen+srcBLen-2].
   */

  arm_status arm_conv_partial_fast_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints);


  /**
   * @brief Partial convolution of Q7 sequences
   * @param[in]       *pSrcA points to the first input sequence.
   * @param[in]       srcALen length of the first input sequence.
   * @param[in]       *pSrcB points to the second input sequence.
   * @param[in]       srcBLen length of the second input sequence.
   * @param[out]      *pDst points to the block of output data
   * @param[in]       firstIndex is the first output sample to start with.
   * @param[in]       numPoints is the number of output points to be computed.
   * @param[in]  *pScratch1 points to scratch buffer(of type q15_t) of size max(srcALen, srcBLen) + 2*min(srcALen, srcBLen) - 2.
   * @param[in]  *pScratch2 points to scratch buffer (of type q15_t) of size min(srcALen, srcBLen).
   * @return  Returns either ARM_MATH_SUCCESS if the function completed correctly or ARM_MATH_ARGUMENT_ERROR if the requested subset is not in the range [0 srcALen+srcBLen-2].
   */

  arm_status arm_conv_partial_opt_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints,
  q15_t * pScratch1,
  q15_t * pScratch2);


/**
   * @brief Partial convolution of Q7 sequences.
   * @param[in]       *pSrcA points to the first input sequence.
   * @param[in]       srcALen length of the first input sequence.
   * @param[in]       *pSrcB points to the second input sequence.
   * @param[in]       srcBLen length of the second input sequence.
   * @param[out]      *pDst points to the block of output data
   * @param[in]       firstIndex is the first output sample to start with.
   * @param[in]       numPoints is the number of output points to be computed.
   * @return  Returns either ARM_MATH_SUCCESS if the function completed correctly or ARM_MATH_ARGUMENT_ERROR if the requested subset is not in the range [0 srcALen+srcBLen-2].
   */

  arm_status arm_conv_partial_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints);



  /**
   * @brief Instance structure for the Q15 FIR decimator.
   */

  typedef struct
  {
    uint8_t M;                      /**< decimation factor. */
    uint16_t numTaps;               /**< number of coefficients in the filter. */
    q15_t *pCoeffs;                  /**< points to the coefficient array. The array is of length numTaps.*/
    q15_t *pState;                   /**< points to the state variable array. The array is of length numTaps+blockSize-1. */
  } arm_fir_decimate_instance_q15;

  /**
   * @brief Instance structure for the Q31 FIR decimator.
   */

  typedef struct
  {
    uint8_t M;                  /**< decimation factor. */
    uint16_t numTaps;           /**< number of coefficients in the filter. */
    q31_t *pCoeffs;              /**< points to the coefficient array. The array is of length numTaps.*/
    q31_t *pState;               /**< points to the state variable array. The array is of length numTaps+blockSize-1. */

  } arm_fir_decimate_instance_q31;

  /**
   * @brief Instance structure for the floating-point FIR decimator.
   */

  typedef struct
  {
    uint8_t M;                          /**< decimation factor. */
    uint16_t numTaps;                   /**< number of coefficients in the filter. */
    float32_t *pCoeffs;                  /**< points to the coefficient array. The array is of length numTaps.*/
    float32_t *pState;                   /**< points to the state variable array. The array is of length numTaps+blockSize-1. */

  } arm_fir_decimate_instance_f32;



  /**
   * @brief Processing function for the floating-point FIR decimator.
   * @param[in] *S points to an instance of the floating-point FIR decimator structure.
   * @param[in] *pSrc points to the block of input data.
   * @param[out] *pDst points to the block of output data
   * @param[in] blockSize number of input samples to process per call.
   * @return none
   */

  void arm_fir_decimate_f32(
  const arm_fir_decimate_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  /**
   * @brief  Initialization function for the floating-point FIR decimator.
   * @param[in,out] *S points to an instance of the floating-point FIR decimator structure.
   * @param[in] numTaps  number of coefficients in the filter.
   * @param[in] M  decimation factor.
   * @param[in] *pCoeffs points to the filter coefficients.
   * @param[in] *pState points to the state buffer.
   * @param[in] blockSize number of input samples to process per call.
   * @return    The function returns ARM_MATH_SUCCESS if initialization is successful or ARM_MATH_LENGTH_ERROR if
   * <code>blockSize</code> is not a multiple of <code>M</code>.
   */

  arm_status arm_fir_decimate_init_f32(
  arm_fir_decimate_instance_f32 * S,
  uint16_t numTaps,
  uint8_t M,
  float32_t * pCoeffs,
  float32_t * pState,
  uint32_t blockSize);

  /**
   * @brief Processing function for the Q15 FIR decimator.
   * @param[in] *S points to an instance of the Q15 FIR decimator structure.
   * @param[in] *pSrc points to the block of input data.
   * @param[out] *pDst points to the block of output data
   * @param[in] blockSize number of input samples to process per call.
   * @return none
   */

  void arm_fir_decimate_q15(
  const arm_fir_decimate_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Processing function for the Q15 FIR decimator (fast variant) for Cortex-M3 and Cortex-M4.
   * @param[in] *S points to an instance of the Q15 FIR decimator structure.
   * @param[in] *pSrc points to the block of input data.
   * @param[out] *pDst points to the block of output data
   * @param[in] blockSize number of input samples to process per call.
   * @return none
   */

  void arm_fir_decimate_fast_q15(
  const arm_fir_decimate_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);



  /**
   * @brief  Initialization function for the Q15 FIR decimator.
   * @param[in,out] *S points to an instance of the Q15 FIR decimator structure.
   * @param[in] numTaps  number of coefficients in the filter.
   * @param[in] M  decimation factor.
   * @param[in] *pCoeffs points to the filter coefficients.
   * @param[in] *pState points to the state buffer.
   * @param[in] blockSize number of input samples to process per call.
   * @return    The function returns ARM_MATH_SUCCESS if initialization is successful or ARM_MATH_LENGTH_ERROR if
   * <code>blockSize</code> is not a multiple of <code>M</code>.
   */

  arm_status arm_fir_decimate_init_q15(
  arm_fir_decimate_instance_q15 * S,
  uint16_t numTaps,
  uint8_t M,
  q15_t * pCoeffs,
  q15_t * pState,
  uint32_t blockSize);

  /**
   * @brief Processing function for the Q31 FIR decimator.
   * @param[in] *S points to an instance of the Q31 FIR decimator structure.
   * @param[in] *pSrc points to the block of input data.
   * @param[out] *pDst points to the block of output data
   * @param[in] blockSize number of input samples to process per call.
   * @return none
   */

  void arm_fir_decimate_q31(
  const arm_fir_decimate_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Processing function for the Q31 FIR decimator (fast variant) for Cortex-M3 and Cortex-M4.
   * @param[in] *S points to an instance of the Q31 FIR decimator structure.
   * @param[in] *pSrc points to the block of input data.
   * @param[out] *pDst points to the block of output data
   * @param[in] blockSize number of input samples to process per call.
   * @return none
   */

  void arm_fir_decimate_fast_q31(
  arm_fir_decimate_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  /**
   * @brief  Initialization function for the Q31 FIR decimator.
   * @param[in,out] *S points to an instance of the Q31 FIR decimator structure.
   * @param[in] numTaps  number of coefficients in the filter.
   * @param[in] M  decimation factor.
   * @param[in] *pCoeffs points to the filter coefficients.
   * @param[in] *pState points to the state buffer.
   * @param[in] blockSize number of input samples to process per call.
   * @return    The function returns ARM_MATH_SUCCESS if initialization is successful or ARM_MATH_LENGTH_ERROR if
   * <code>blockSize</code> is not a multiple of <code>M</code>.
   */

  arm_status arm_fir_decimate_init_q31(
  arm_fir_decimate_instance_q31 * S,
  uint16_t numTaps,
  uint8_t M,
  q31_t * pCoeffs,
  q31_t * pState,
  uint32_t blockSize);



  /**
   * @brief Instance structure for the Q15 FIR interpolator.
   */

  typedef struct
  {
    uint8_t L;                      /**< upsample factor. */
    uint16_t phaseLength;           /**< length of each polyphase filter component. */
    q15_t *pCoeffs;                 /**< points to the coefficient array. The array is of length L*phaseLength. */
    q15_t *pState;                  /**< points to the state variable array. The array is of length blockSize+phaseLength-1. */
  } arm_fir_interpolate_instance_q15;

  /**
   * @brief Instance structure for the Q31 FIR interpolator.
   */

  typedef struct
  {
    uint8_t L;                      /**< upsample factor. */
    uint16_t phaseLength;           /**< length of each polyphase filter component. */
    q31_t *pCoeffs;                  /**< points to the coefficient array. The array is of length L*phaseLength. */
    q31_t *pState;                   /**< points to the state variable array. The array is of length blockSize+phaseLength-1. */
  } arm_fir_interpolate_instance_q31;

  /**
   * @brief Instance structure for the floating-point FIR interpolator.
   */

  typedef struct
  {
    uint8_t L;                     /**< upsample factor. */
    uint16_t phaseLength;          /**< length of each polyphase filter component. */
    float32_t *pCoeffs;             /**< points to the coefficient array. The array is of length L*phaseLength. */
    float32_t *pState;              /**< points to the state variable array. The array is of length phaseLength+numTaps-1. */
  } arm_fir_interpolate_instance_f32;


  /**
   * @brief Processing function for the Q15 FIR interpolator.
   * @param[in] *S        points to an instance of the Q15 FIR interpolator structure.
   * @param[in] *pSrc     points to the block of input data.
   * @param[out] *pDst    points to the block of output data.
   * @param[in] blockSize number of input samples to process per call.
   * @return none.
   */

  void arm_fir_interpolate_q15(
  const arm_fir_interpolate_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);


  /**
   * @brief  Initialization function for the Q15 FIR interpolator.
   * @param[in,out] *S        points to an instance of the Q15 FIR interpolator structure.
   * @param[in]     L         upsample factor.
   * @param[in]     numTaps   number of filter coefficients in the filter.
   * @param[in]     *pCoeffs  points to the filter coefficient buffer.
   * @param[in]     *pState   points to the state buffer.
   * @param[in]     blockSize number of input samples to process per call.
   * @return        The function returns ARM_MATH_SUCCESS if initialization is successful or ARM_MATH_LENGTH_ERROR if
   * the filter length <code>numTaps</code> is not a multiple of the interpolation factor <code>L</code>.
   */

  arm_status arm_fir_interpolate_init_q15(
  arm_fir_interpolate_instance_q15 * S,
  uint8_t L,
  uint16_t numTaps,
  q15_t * pCoeffs,
  q15_t * pState,
  uint32_t blockSize);

  /**
   * @brief Processing function for the Q31 FIR interpolator.
   * @param[in] *S        points to an instance of the Q15 FIR interpolator structure.
   * @param[in] *pSrc     points to the block of input data.
   * @param[out] *pDst    points to the block of output data.
   * @param[in] blockSize number of input samples to process per call.
   * @return none.
   */

  void arm_fir_interpolate_q31(
  const arm_fir_interpolate_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  /**
   * @brief  Initialization function for the Q31 FIR interpolator.
   * @param[in,out] *S        points to an instance of the Q31 FIR interpolator structure.
   * @param[in]     L         upsample factor.
   * @param[in]     numTaps   number of filter coefficients in the filter.
   * @param[in]     *pCoeffs  points to the filter coefficient buffer.
   * @param[in]     *pState   points to the state buffer.
   * @param[in]     blockSize number of input samples to process per call.
   * @return        The function returns ARM_MATH_SUCCESS if initialization is successful or ARM_MATH_LENGTH_ERROR if
   * the filter length <code>numTaps</code> is not a multiple of the interpolation factor <code>L</code>.
   */

  arm_status arm_fir_interpolate_init_q31(
  arm_fir_interpolate_instance_q31 * S,
  uint8_t L,
  uint16_t numTaps,
  q31_t * pCoeffs,
  q31_t * pState,
  uint32_t blockSize);


  /**
   * @brief Processing function for the floating-point FIR interpolator.
   * @param[in] *S        points to an instance of the floating-point FIR interpolator structure.
   * @param[in] *pSrc     points to the block of input data.
   * @param[out] *pDst    points to the block of output data.
   * @param[in] blockSize number of input samples to process per call.
   * @return none.
   */

  void arm_fir_interpolate_f32(
  const arm_fir_interpolate_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  /**
   * @brief  Initialization function for the floating-point FIR interpolator.
   * @param[in,out] *S        points to an instance of the floating-point FIR interpolator structure.
   * @param[in]     L         upsample factor.
   * @param[in]     numTaps   number of filter coefficients in the filter.
   * @param[in]     *pCoeffs  points to the filter coefficient buffer.
   * @param[in]     *pState   points to the state buffer.
   * @param[in]     blockSize number of input samples to process per call.
   * @return        The function returns ARM_MATH_SUCCESS if initialization is successful or ARM_MATH_LENGTH_ERROR if
   * the filter length <code>numTaps</code> is not a multiple of the interpolation factor <code>L</code>.
   */

  arm_status arm_fir_interpolate_init_f32(
  arm_fir_interpolate_instance_f32 * S,
  uint8_t L,
  uint16_t numTaps,
  float32_t * pCoeffs,
  float32_t * pState,
  uint32_t blockSize);

  /**
   * @brief Instance structure for the high precision Q31 Biquad cascade filter.
   */

  typedef struct
  {
    uint8_t numStages;       /**< number of 2nd order stages in the filter.  Overall order is 2*numStages. */
    q63_t *pState;           /**< points to the array of state coefficients.  The array is of length 4*numStages. */
    q31_t *pCoeffs;          /**< points to the array of coefficients.  The array is of length 5*numStages. */
    uint8_t postShift;       /**< additional shift, in bits, applied to each output sample. */

  } arm_biquad_cas_df1_32x64_ins_q31;


  /**
   * @param[in]  *S        points to an instance of the high precision Q31 Biquad cascade filter structure.
   * @param[in]  *pSrc     points to the block of input data.
   * @param[out] *pDst     points to the block of output data
   * @param[in]  blockSize number of samples to process.
   * @return none.
   */

  void arm_biquad_cas_df1_32x64_q31(
  const arm_biquad_cas_df1_32x64_ins_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  /**
   * @param[in,out] *S           points to an instance of the high precision Q31 Biquad cascade filter structure.
   * @param[in]     numStages    number of 2nd order stages in the filter.
   * @param[in]     *pCoeffs     points to the filter coefficients.
   * @param[in]     *pState      points to the state buffer.
   * @param[in]     postShift    shift to be applied to the output. Varies according to the coefficients format
   * @return        none
   */

  void arm_biquad_cas_df1_32x64_init_q31(
  arm_biquad_cas_df1_32x64_ins_q31 * S,
  uint8_t numStages,
  q31_t * pCoeffs,
  q63_t * pState,
  uint8_t postShift);



  /**
   * @brief Instance structure for the floating-point transposed direct form II Biquad cascade filter.
   */

  typedef struct
  {
    uint8_t numStages;         /**< number of 2nd order stages in the filter.  Overall order is 2*numStages. */
    float32_t *pState;         /**< points to the array of state coefficients.  The array is of length 2*numStages. */
    float32_t *pCoeffs;        /**< points to the array of coefficients.  The array is of length 5*numStages. */
  } arm_biquad_cascade_df2T_instance_f32;


  /**
   * @brief Processing function for the floating-point transposed direct form II Biquad cascade filter.
   * @param[in]  *S        points to an instance of the filter data structure.
   * @param[in]  *pSrc     points to the block of input data.
   * @param[out] *pDst     points to the block of output data
   * @param[in]  blockSize number of samples to process.
   * @return none.
   */

  void arm_biquad_cascade_df2T_f32(
  const arm_biquad_cascade_df2T_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  /**
   * @brief  Initialization function for the floating-point transposed direct form II Biquad cascade filter.
   * @param[in,out] *S           points to an instance of the filter data structure.
   * @param[in]     numStages    number of 2nd order stages in the filter.
   * @param[in]     *pCoeffs     points to the filter coefficients.
   * @param[in]     *pState      points to the state buffer.
   * @return        none
   */

  void arm_biquad_cascade_df2T_init_f32(
  arm_biquad_cascade_df2T_instance_f32 * S,
  uint8_t numStages,
  float32_t * pCoeffs,
  float32_t * pState);



  /**
   * @brief Instance structure for the Q15 FIR lattice filter.
   */

  typedef struct
  {
    uint16_t numStages;                          /**< number of filter stages. */
    q15_t *pState;                               /**< points to the state variable array. The array is of length numStages. */
    q15_t *pCoeffs;                              /**< points to the coefficient array. The array is of length numStages. */
  } arm_fir_lattice_instance_q15;

  /**
   * @brief Instance structure for the Q31 FIR lattice filter.
   */

  typedef struct
  {
    uint16_t numStages;                          /**< number of filter stages. */
    q31_t *pState;                               /**< points to the state variable array. The array is of length numStages. */
    q31_t *pCoeffs;                              /**< points to the coefficient array. The array is of length numStages. */
  } arm_fir_lattice_instance_q31;

  /**
   * @brief Instance structure for the floating-point FIR lattice filter.
   */

  typedef struct
  {
    uint16_t numStages;                  /**< number of filter stages. */
    float32_t *pState;                   /**< points to the state variable array. The array is of length numStages. */
    float32_t *pCoeffs;                  /**< points to the coefficient array. The array is of length numStages. */
  } arm_fir_lattice_instance_f32;

  /**
   * @brief Initialization function for the Q15 FIR lattice filter.
   * @param[in] *S points to an instance of the Q15 FIR lattice structure.
   * @param[in] numStages  number of filter stages.
   * @param[in] *pCoeffs points to the coefficient buffer.  The array is of length numStages.
   * @param[in] *pState points to the state buffer.  The array is of length numStages.
   * @return none.
   */

  void arm_fir_lattice_init_q15(
  arm_fir_lattice_instance_q15 * S,
  uint16_t numStages,
  q15_t * pCoeffs,
  q15_t * pState);


  /**
   * @brief Processing function for the Q15 FIR lattice filter.
   * @param[in] *S points to an instance of the Q15 FIR lattice structure.
   * @param[in] *pSrc points to the block of input data.
   * @param[out] *pDst points to the block of output data.
   * @param[in] blockSize number of samples to process.
   * @return none.
   */
  void arm_fir_lattice_q15(
  const arm_fir_lattice_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Initialization function for the Q31 FIR lattice filter.
   * @param[in] *S points to an instance of the Q31 FIR lattice structure.
   * @param[in] numStages  number of filter stages.
   * @param[in] *pCoeffs points to the coefficient buffer.  The array is of length numStages.
   * @param[in] *pState points to the state buffer.   The array is of length numStages.
   * @return none.
   */

  void arm_fir_lattice_init_q31(
  arm_fir_lattice_instance_q31 * S,
  uint16_t numStages,
  q31_t * pCoeffs,
  q31_t * pState);


  /**
   * @brief Processing function for the Q31 FIR lattice filter.
   * @param[in]  *S        points to an instance of the Q31 FIR lattice structure.
   * @param[in]  *pSrc     points to the block of input data.
   * @param[out] *pDst     points to the block of output data
   * @param[in]  blockSize number of samples to process.
   * @return none.
   */

  void arm_fir_lattice_q31(
  const arm_fir_lattice_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

/**
 * @brief Initialization function for the floating-point FIR lattice filter.
 * @param[in] *S points to an instance of the floating-point FIR lattice structure.
 * @param[in] numStages  number of filter stages.
 * @param[in] *pCoeffs points to the coefficient buffer.  The array is of length numStages.
 * @param[in] *pState points to the state buffer.  The array is of length numStages.
 * @return none.
 */

  void arm_fir_lattice_init_f32(
  arm_fir_lattice_instance_f32 * S,
  uint16_t numStages,
  float32_t * pCoeffs,
  float32_t * pState);

  /**
   * @brief Processing function for the floating-point FIR lattice filter.
   * @param[in]  *S        points to an instance of the floating-point FIR lattice structure.
   * @param[in]  *pSrc     points to the block of input data.
   * @param[out] *pDst     points to the block of output data
   * @param[in]  blockSize number of samples to process.
   * @return none.
   */

  void arm_fir_lattice_f32(
  const arm_fir_lattice_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Instance structure for the Q15 IIR lattice filter.
   */
  typedef struct
  {
    uint16_t numStages;                         /**< number of stages in the filter. */
    q15_t *pState;                              /**< points to the state variable array. The array is of length numStages+blockSize. */
    q15_t *pkCoeffs;                            /**< points to the reflection coefficient array. The array is of length numStages. */
    q15_t *pvCoeffs;                            /**< points to the ladder coefficient array. The array is of length numStages+1. */
  } arm_iir_lattice_instance_q15;

  /**
   * @brief Instance structure for the Q31 IIR lattice filter.
   */
  typedef struct
  {
    uint16_t numStages;                         /**< number of stages in the filter. */
    q31_t *pState;                              /**< points to the state variable array. The array is of length numStages+blockSize. */
    q31_t *pkCoeffs;                            /**< points to the reflection coefficient array. The array is of length numStages. */
    q31_t *pvCoeffs;                            /**< points to the ladder coefficient array. The array is of length numStages+1. */
  } arm_iir_lattice_instance_q31;

  /**
   * @brief Instance structure for the floating-point IIR lattice filter.
   */
  typedef struct
  {
    uint16_t numStages;                         /**< number of stages in the filter. */
    float32_t *pState;                          /**< points to the state variable array. The array is of length numStages+blockSize. */
    float32_t *pkCoeffs;                        /**< points to the reflection coefficient array. The array is of length numStages. */
    float32_t *pvCoeffs;                        /**< points to the ladder coefficient array. The array is of length numStages+1. */
  } arm_iir_lattice_instance_f32;

  /**
   * @brief Processing function for the floating-point IIR lattice filter.
   * @param[in] *S points to an instance of the floating-point IIR lattice structure.
   * @param[in] *pSrc points to the block of input data.
   * @param[out] *pDst points to the block of output data.
   * @param[in] blockSize number of samples to process.
   * @return none.
   */

  void arm_iir_lattice_f32(
  const arm_iir_lattice_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Initialization function for the floating-point IIR lattice filter.
   * @param[in] *S points to an instance of the floating-point IIR lattice structure.
   * @param[in] numStages number of stages in the filter.
   * @param[in] *pkCoeffs points to the reflection coefficient buffer.  The array is of length numStages.
   * @param[in] *pvCoeffs points to the ladder coefficient buffer.  The array is of length numStages+1.
   * @param[in] *pState points to the state buffer.  The array is of length numStages+blockSize-1.
   * @param[in] blockSize number of samples to process.
   * @return none.
   */

  void arm_iir_lattice_init_f32(
  arm_iir_lattice_instance_f32 * S,
  uint16_t numStages,
  float32_t * pkCoeffs,
  float32_t * pvCoeffs,
  float32_t * pState,
  uint32_t blockSize);


  /**
   * @brief Processing function for the Q31 IIR lattice filter.
   * @param[in] *S points to an instance of the Q31 IIR lattice structure.
   * @param[in] *pSrc points to the block of input data.
   * @param[out] *pDst points to the block of output data.
   * @param[in] blockSize number of samples to process.
   * @return none.
   */

  void arm_iir_lattice_q31(
  const arm_iir_lattice_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  /**
   * @brief Initialization function for the Q31 IIR lattice filter.
   * @param[in] *S points to an instance of the Q31 IIR lattice structure.
   * @param[in] numStages number of stages in the filter.
   * @param[in] *pkCoeffs points to the reflection coefficient buffer.  The array is of length numStages.
   * @param[in] *pvCoeffs points to the ladder coefficient buffer.  The array is of length numStages+1.
   * @param[in] *pState points to the state buffer.  The array is of length numStages+blockSize.
   * @param[in] blockSize number of samples to process.
   * @return none.
   */

  void arm_iir_lattice_init_q31(
  arm_iir_lattice_instance_q31 * S,
  uint16_t numStages,
  q31_t * pkCoeffs,
  q31_t * pvCoeffs,
  q31_t * pState,
  uint32_t blockSize);


  /**
   * @brief Processing function for the Q15 IIR lattice filter.
   * @param[in] *S points to an instance of the Q15 IIR lattice structure.
   * @param[in] *pSrc points to the block of input data.
   * @param[out] *pDst points to the block of output data.
   * @param[in] blockSize number of samples to process.
   * @return none.
   */

  void arm_iir_lattice_q15(
  const arm_iir_lattice_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);


/**
 * @brief Initialization function for the Q15 IIR lattice filter.
 * @param[in] *S points to an instance of the fixed-point Q15 IIR lattice structure.
 * @param[in] numStages  number of stages in the filter.
 * @param[in] *pkCoeffs points to reflection coefficient buffer.  The array is of length numStages.
 * @param[in] *pvCoeffs points to ladder coefficient buffer.  The array is of length numStages+1.
 * @param[in] *pState points to state buffer.  The array is of length numStages+blockSize.
 * @param[in] blockSize number of samples to process per call.
 * @return none.
 */

  void arm_iir_lattice_init_q15(
  arm_iir_lattice_instance_q15 * S,
  uint16_t numStages,
  q15_t * pkCoeffs,
  q15_t * pvCoeffs,
  q15_t * pState,
  uint32_t blockSize);

  /**
   * @brief Instance structure for the floating-point LMS filter.
   */

  typedef struct
  {
    uint16_t numTaps;    /**< number of coefficients in the filter. */
    float32_t *pState;   /**< points to the state variable array. The array is of length numTaps+blockSize-1. */
    float32_t *pCoeffs;  /**< points to the coefficient array. The array is of length numTaps. */
    float32_t mu;        /**< step size that controls filter coefficient updates. */
  } arm_lms_instance_f32;

  /**
   * @brief Processing function for floating-point LMS filter.
   * @param[in]  *S points to an instance of the floating-point LMS filter structure.
   * @param[in]  *pSrc points to the block of input data.
   * @param[in]  *pRef points to the block of reference data.
   * @param[out] *pOut points to the block of output data.
   * @param[out] *pErr points to the block of error data.
   * @param[in]  blockSize number of samples to process.
   * @return     none.
   */

  void arm_lms_f32(
  const arm_lms_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pRef,
  float32_t * pOut,
  float32_t * pErr,
  uint32_t blockSize);

  /**
   * @brief Initialization function for floating-point LMS filter.
   * @param[in] *S points to an instance of the floating-point LMS filter structure.
   * @param[in] numTaps  number of filter coefficients.
   * @param[in] *pCoeffs points to the coefficient buffer.
   * @param[in] *pState points to state buffer.
   * @param[in] mu step size that controls filter coefficient updates.
   * @param[in] blockSize number of samples to process.
   * @return none.
   */

  void arm_lms_init_f32(
  arm_lms_instance_f32 * S,
  uint16_t numTaps,
  float32_t * pCoeffs,
  float32_t * pState,
  float32_t mu,
  uint32_t blockSize);

  /**
   * @brief Instance structure for the Q15 LMS filter.
   */

  typedef struct
  {
    uint16_t numTaps;    /**< number of coefficients in the filter. */
    q15_t *pState;       /**< points to the state variable array. The array is of length numTaps+blockSize-1. */
    q15_t *pCoeffs;      /**< points to the coefficient array. The array is of length numTaps. */
    q15_t mu;            /**< step size that controls filter coefficient updates. */
    uint32_t postShift;  /**< bit shift applied to coefficients. */
  } arm_lms_instance_q15;


  /**
   * @brief Initialization function for the Q15 LMS filter.
   * @param[in] *S points to an instance of the Q15 LMS filter structure.
   * @param[in] numTaps  number of filter coefficients.
   * @param[in] *pCoeffs points to the coefficient buffer.
   * @param[in] *pState points to the state buffer.
   * @param[in] mu step size that controls filter coefficient updates.
   * @param[in] blockSize number of samples to process.
   * @param[in] postShift bit shift applied to coefficients.
   * @return    none.
   */

  void arm_lms_init_q15(
  arm_lms_instance_q15 * S,
  uint16_t numTaps,
  q15_t * pCoeffs,
  q15_t * pState,
  q15_t mu,
  uint32_t blockSize,
  uint32_t postShift);

  /**
   * @brief Processing function for Q15 LMS filter.
   * @param[in] *S points to an instance of the Q15 LMS filter structure.
   * @param[in] *pSrc points to the block of input data.
   * @param[in] *pRef points to the block of reference data.
   * @param[out] *pOut points to the block of output data.
   * @param[out] *pErr points to the block of error data.
   * @param[in] blockSize number of samples to process.
   * @return none.
   */

  void arm_lms_q15(
  const arm_lms_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pRef,
  q15_t * pOut,
  q15_t * pErr,
  uint32_t blockSize);


  /**
   * @brief Instance structure for the Q31 LMS filter.
   */

  typedef struct
  {
    uint16_t numTaps;    /**< number of coefficients in the filter. */
    q31_t *pState;       /**< points to the state variable array. The array is of length numTaps+blockSize-1. */
    q31_t *pCoeffs;      /**< points to the coefficient array. The array is of length numTaps. */
    q31_t mu;            /**< step size that controls filter coefficient updates. */
    uint32_t postShift;  /**< bit shift applied to coefficients. */

  } arm_lms_instance_q31;

  /**
   * @brief Processing function for Q31 LMS filter.
   * @param[in]  *S points to an instance of the Q15 LMS filter structure.
   * @param[in]  *pSrc points to the block of input data.
   * @param[in]  *pRef points to the block of reference data.
   * @param[out] *pOut points to the block of output data.
   * @param[out] *pErr points to the block of error data.
   * @param[in]  blockSize number of samples to process.
   * @return     none.
   */

  void arm_lms_q31(
  const arm_lms_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pRef,
  q31_t * pOut,
  q31_t * pErr,
  uint32_t blockSize);

  /**
   * @brief Initialization function for Q31 LMS filter.
   * @param[in] *S points to an instance of the Q31 LMS filter structure.
   * @param[in] numTaps  number of filter coefficients.
   * @param[in] *pCoeffs points to coefficient buffer.
   * @param[in] *pState points to state buffer.
   * @param[in] mu step size that controls filter coefficient updates.
   * @param[in] blockSize number of samples to process.
   * @param[in] postShift bit shift applied to coefficients.
   * @return none.
   */

  void arm_lms_init_q31(
  arm_lms_instance_q31 * S,
  uint16_t numTaps,
  q31_t * pCoeffs,
  q31_t * pState,
  q31_t mu,
  uint32_t blockSize,
  uint32_t postShift);

  /**
   * @brief Instance structure for the floating-point normalized LMS filter.
   */

  typedef struct
  {
    uint16_t numTaps;     /**< number of coefficients in the filter. */
    float32_t *pState;    /**< points to the state variable array. The array is of length numTaps+blockSize-1. */
    float32_t *pCoeffs;   /**< points to the coefficient array. The array is of length numTaps. */
    float32_t mu;        /**< step size that control filter coefficient updates. */
    float32_t energy;    /**< saves previous frame energy. */
    float32_t x0;        /**< saves previous input sample. */
  } arm_lms_norm_instance_f32;

  /**
   * @brief Processing function for floating-point normalized LMS filter.
   * @param[in] *S points to an instance of the floating-point normalized LMS filter structure.
   * @param[in] *pSrc points to the block of input data.
   * @param[in] *pRef points to the block of reference data.
   * @param[out] *pOut points to the block of output data.
   * @param[out] *pErr points to the block of error data.
   * @param[in] blockSize number of samples to process.
   * @return none.
   */

  void arm_lms_norm_f32(
  arm_lms_norm_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pRef,
  float32_t * pOut,
  float32_t * pErr,
  uint32_t blockSize);

  /**
   * @brief Initialization function for floating-point normalized LMS filter.
   * @param[in] *S points to an instance of the floating-point LMS filter structure.
   * @param[in] numTaps  number of filter coefficients.
   * @param[in] *pCoeffs points to coefficient buffer.
   * @param[in] *pState points to state buffer.
   * @param[in] mu step size that controls filter coefficient updates.
   * @param[in] blockSize number of samples to process.
   * @return none.
   */

  void arm_lms_norm_init_f32(
  arm_lms_norm_instance_f32 * S,
  uint16_t numTaps,
  float32_t * pCoeffs,
  float32_t * pState,
  float32_t mu,
  uint32_t blockSize);


  /**
   * @brief Instance structure for the Q31 normalized LMS filter.
   */
  typedef struct
  {
    uint16_t numTaps;     /**< number of coefficients in the filter. */
    q31_t *pState;        /**< points to the state variable array. The array is of length numTaps+blockSize-1. */
    q31_t *pCoeffs;       /**< points to the coefficient array. The array is of length numTaps. */
    q31_t mu;             /**< step size that controls filter coefficient updates. */
    uint8_t postShift;    /**< bit shift applied to coefficients. */
    q31_t *recipTable;    /**< points to the reciprocal initial value table. */
    q31_t energy;         /**< saves previous frame energy. */
    q31_t x0;             /**< saves previous input sample. */
  } arm_lms_norm_instance_q31;

  /**
   * @brief Processing function for Q31 normalized LMS filter.
   * @param[in] *S points to an instance of the Q31 normalized LMS filter structure.
   * @param[in] *pSrc points to the block of input data.
   * @param[in] *pRef points to the block of reference data.
   * @param[out] *pOut points to the block of output data.
   * @param[out] *pErr points to the block of error data.
   * @param[in] blockSize number of samples to process.
   * @return none.
   */

  void arm_lms_norm_q31(
  arm_lms_norm_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pRef,
  q31_t * pOut,
  q31_t * pErr,
  uint32_t blockSize);

  /**
   * @brief Initialization function for Q31 normalized LMS filter.
   * @param[in] *S points to an instance of the Q31 normalized LMS filter structure.
   * @param[in] numTaps  number of filter coefficients.
   * @param[in] *pCoeffs points to coefficient buffer.
   * @param[in] *pState points to state buffer.
   * @param[in] mu step size that controls filter coefficient updates.
   * @param[in] blockSize number of samples to process.
   * @param[in] postShift bit shift applied to coefficients.
   * @return none.
   */

  void arm_lms_norm_init_q31(
  arm_lms_norm_instance_q31 * S,
  uint16_t numTaps,
  q31_t * pCoeffs,
  q31_t * pState,
  q31_t mu,
  uint32_t blockSize,
  uint8_t postShift);

  /**
   * @brief Instance structure for the Q15 normalized LMS filter.
   */

  typedef struct
  {
    uint16_t numTaps;    /**< Number of coefficients in the filter. */
    q15_t *pState;        /**< points to the state variable array. The array is of length numTaps+blockSize-1. */
    q15_t *pCoeffs;       /**< points to the coefficient array. The array is of length numTaps. */
    q15_t mu;            /**< step size that controls filter coefficient updates. */
    uint8_t postShift;   /**< bit shift applied to coefficients. */
    q15_t *recipTable;   /**< Points to the reciprocal initial value table. */
    q15_t energy;        /**< saves previous frame energy. */
    q15_t x0;            /**< saves previous input sample. */
  } arm_lms_norm_instance_q15;

  /**
   * @brief Processing function for Q15 normalized LMS filter.
   * @param[in] *S points to an instance of the Q15 normalized LMS filter structure.
   * @param[in] *pSrc points to the block of input data.
   * @param[in] *pRef points to the block of reference data.
   * @param[out] *pOut points to the block of output data.
   * @param[out] *pErr points to the block of error data.
   * @param[in] blockSize number of samples to process.
   * @return none.
   */

  void arm_lms_norm_q15(
  arm_lms_norm_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pRef,
  q15_t * pOut,
  q15_t * pErr,
  uint32_t blockSize);


  /**
   * @brief Initialization function for Q15 normalized LMS filter.
   * @param[in] *S points to an instance of the Q15 normalized LMS filter structure.
   * @param[in] numTaps  number of filter coefficients.
   * @param[in] *pCoeffs points to coefficient buffer.
   * @param[in] *pState points to state buffer.
   * @param[in] mu step size that controls filter coefficient updates.
   * @param[in] blockSize number of samples to process.
   * @param[in] postShift bit shift applied to coefficients.
   * @return none.
   */

  void arm_lms_norm_init_q15(
  arm_lms_norm_instance_q15 * S,
  uint16_t numTaps,
  q15_t * pCoeffs,
  q15_t * pState,
  q15_t mu,
  uint32_t blockSize,
  uint8_t postShift);

  /**
   * @brief Correlation of floating-point sequences.
   * @param[in] *pSrcA points to the first input sequence.
   * @param[in] srcALen length of the first input sequence.
   * @param[in] *pSrcB points to the second input sequence.
   * @param[in] srcBLen length of the second input sequence.
   * @param[out] *pDst points to the block of output data  Length 2 * max(srcALen, srcBLen) - 1.
   * @return none.
   */

  void arm_correlate_f32(
  float32_t * pSrcA,
  uint32_t srcALen,
  float32_t * pSrcB,
  uint32_t srcBLen,
  float32_t * pDst);


   /**
   * @brief Correlation of Q15 sequences
   * @param[in] *pSrcA points to the first input sequence.
   * @param[in] srcALen length of the first input sequence.
   * @param[in] *pSrcB points to the second input sequence.
   * @param[in] srcBLen length of the second input sequence.
   * @param[out] *pDst points to the block of output data  Length 2 * max(srcALen, srcBLen) - 1.
   * @param[in]  *pScratch points to scratch buffer of size max(srcALen, srcBLen) + 2*min(srcALen, srcBLen) - 2.
   * @return none.
   */
  void arm_correlate_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  q15_t * pScratch);


  /**
   * @brief Correlation of Q15 sequences.
   * @param[in] *pSrcA points to the first input sequence.
   * @param[in] srcALen length of the first input sequence.
   * @param[in] *pSrcB points to the second input sequence.
   * @param[in] srcBLen length of the second input sequence.
   * @param[out] *pDst points to the block of output data  Length 2 * max(srcALen, srcBLen) - 1.
   * @return none.
   */

  void arm_correlate_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst);

  /**
   * @brief Correlation of Q15 sequences (fast version) for Cortex-M3 and Cortex-M4.
   * @param[in] *pSrcA points to the first input sequence.
   * @param[in] srcALen length of the first input sequence.
   * @param[in] *pSrcB points to the second input sequence.
   * @param[in] srcBLen length of the second input sequence.
   * @param[out] *pDst points to the block of output data  Length 2 * max(srcALen, srcBLen) - 1.
   * @return none.
   */

  void arm_correlate_fast_q15(
			       q15_t * pSrcA,
			      uint32_t srcALen,
			       q15_t * pSrcB,
			      uint32_t srcBLen,
			      q15_t * pDst);



  /**
   * @brief Correlation of Q15 sequences (fast version) for Cortex-M3 and Cortex-M4.
   * @param[in] *pSrcA points to the first input sequence.
   * @param[in] srcALen length of the first input sequence.
   * @param[in] *pSrcB points to the second input sequence.
   * @param[in] srcBLen length of the second input sequence.
   * @param[out] *pDst points to the block of output data  Length 2 * max(srcALen, srcBLen) - 1.
   * @param[in]  *pScratch points to scratch buffer of size max(srcALen, srcBLen) + 2*min(srcALen, srcBLen) - 2.
   * @return none.
   */

  void arm_correlate_fast_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  q15_t * pScratch);

  /**
   * @brief Correlation of Q31 sequences.
   * @param[in] *pSrcA points to the first input sequence.
   * @param[in] srcALen length of the first input sequence.
   * @param[in] *pSrcB points to the second input sequence.
   * @param[in] srcBLen length of the second input sequence.
   * @param[out] *pDst points to the block of output data  Length 2 * max(srcALen, srcBLen) - 1.
   * @return none.
   */

  void arm_correlate_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst);

  /**
   * @brief Correlation of Q31 sequences (fast version) for Cortex-M3 and Cortex-M4
   * @param[in] *pSrcA points to the first input sequence.
   * @param[in] srcALen length of the first input sequence.
   * @param[in] *pSrcB points to the second input sequence.
   * @param[in] srcBLen length of the second input sequence.
   * @param[out] *pDst points to the block of output data  Length 2 * max(srcALen, srcBLen) - 1.
   * @return none.
   */

  void arm_correlate_fast_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst);



 /**
   * @brief Correlation of Q7 sequences.
   * @param[in] *pSrcA points to the first input sequence.
   * @param[in] srcALen length of the first input sequence.
   * @param[in] *pSrcB points to the second input sequence.
   * @param[in] srcBLen length of the second input sequence.
   * @param[out] *pDst points to the block of output data  Length 2 * max(srcALen, srcBLen) - 1.
   * @param[in]  *pScratch1 points to scratch buffer(of type q15_t) of size max(srcALen, srcBLen) + 2*min(srcALen, srcBLen) - 2.
   * @param[in]  *pScratch2 points to scratch buffer (of type q15_t) of size min(srcALen, srcBLen).
   * @return none.
   */

  void arm_correlate_opt_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst,
  q15_t * pScratch1,
  q15_t * pScratch2);


  /**
   * @brief Correlation of Q7 sequences.
   * @param[in] *pSrcA points to the first input sequence.
   * @param[in] srcALen length of the first input sequence.
   * @param[in] *pSrcB points to the second input sequence.
   * @param[in] srcBLen length of the second input sequence.
   * @param[out] *pDst points to the block of output data  Length 2 * max(srcALen, srcBLen) - 1.
   * @return none.
   */

  void arm_correlate_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst);


  /**
   * @brief Instance structure for the floating-point sparse FIR filter.
   */
  typedef struct
  {
    uint16_t numTaps;             /**< number of coefficients in the filter. */
    uint16_t stateIndex;          /**< state buffer index.  Points to the oldest sample in the state buffer. */
    float32_t *pState;            /**< points to the state buffer array. The array is of length maxDelay+blockSize-1. */
    float32_t *pCoeffs;           /**< points to the coefficient array. The array is of length numTaps.*/
    uint16_t maxDelay;            /**< maximum offset specified by the pTapDelay array. */
    int32_t *pTapDelay;           /**< points to the array of delay values.  The array is of length numTaps. */
  } arm_fir_sparse_instance_f32;

  /**
   * @brief Instance structure for the Q31 sparse FIR filter.
   */

  typedef struct
  {
    uint16_t numTaps;             /**< number of coefficients in the filter. */
    uint16_t stateIndex;          /**< state buffer index.  Points to the oldest sample in the state buffer. */
    q31_t *pState;                /**< points to the state buffer array. The array is of length maxDelay+blockSize-1. */
    q31_t *pCoeffs;               /**< points to the coefficient array. The array is of length numTaps.*/
    uint16_t maxDelay;            /**< maximum offset specified by the pTapDelay array. */
    int32_t *pTapDelay;           /**< points to the array of delay values.  The array is of length numTaps. */
  } arm_fir_sparse_instance_q31;

  /**
   * @brief Instance structure for the Q15 sparse FIR filter.
   */

  typedef struct
  {
    uint16_t numTaps;             /**< number of coefficients in the filter. */
    uint16_t stateIndex;          /**< state buffer index.  Points to the oldest sample in the state buffer. */
    q15_t *pState;                /**< points to the state buffer array. The array is of length maxDelay+blockSize-1. */
    q15_t *pCoeffs;               /**< points to the coefficient array. The array is of length numTaps.*/
    uint16_t maxDelay;            /**< maximum offset specified by the pTapDelay array. */
    int32_t *pTapDelay;           /**< points to the array of delay values.  The array is of length numTaps. */
  } arm_fir_sparse_instance_q15;

  /**
   * @brief Instance structure for the Q7 sparse FIR filter.
   */

  typedef struct
  {
    uint16_t numTaps;             /**< number of coefficients in the filter. */
    uint16_t stateIndex;          /**< state buffer index.  Points to the oldest sample in the state buffer. */
    q7_t *pState;                 /**< points to the state buffer array. The array is of length maxDelay+blockSize-1. */
    q7_t *pCoeffs;                /**< points to the coefficient array. The array is of length numTaps.*/
    uint16_t maxDelay;            /**< maximum offset specified by the pTapDelay array. */
    int32_t *pTapDelay;           /**< points to the array of delay values.  The array is of length numTaps. */
  } arm_fir_sparse_instance_q7;

  /**
   * @brief Processing function for the floating-point sparse FIR filter.
   * @param[in]  *S          points to an instance of the floating-point sparse FIR structure.
   * @param[in]  *pSrc       points to the block of input data.
   * @param[out] *pDst       points to the block of output data
   * @param[in]  *pScratchIn points to a temporary buffer of size blockSize.
   * @param[in]  blockSize   number of input samples to process per call.
   * @return none.
   */

  void arm_fir_sparse_f32(
  arm_fir_sparse_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  float32_t * pScratchIn,
  uint32_t blockSize);

  /**
   * @brief  Initialization function for the floating-point sparse FIR filter.
   * @param[in,out] *S         points to an instance of the floating-point sparse FIR structure.
   * @param[in]     numTaps    number of nonzero coefficients in the filter.
   * @param[in]     *pCoeffs   points to the array of filter coefficients.
   * @param[in]     *pState    points to the state buffer.
   * @param[in]     *pTapDelay points to the array of offset times.
   * @param[in]     maxDelay   maximum offset time supported.
   * @param[in]     blockSize  number of samples that will be processed per block.
   * @return none
   */

  void arm_fir_sparse_init_f32(
  arm_fir_sparse_instance_f32 * S,
  uint16_t numTaps,
  float32_t * pCoeffs,
  float32_t * pState,
  int32_t * pTapDelay,
  uint16_t maxDelay,
  uint32_t blockSize);

  /**
   * @brief Processing function for the Q31 sparse FIR filter.
   * @param[in]  *S          points to an instance of the Q31 sparse FIR structure.
   * @param[in]  *pSrc       points to the block of input data.
   * @param[out] *pDst       points to the block of output data
   * @param[in]  *pScratchIn points to a temporary buffer of size blockSize.
   * @param[in]  blockSize   number of input samples to process per call.
   * @return none.
   */

  void arm_fir_sparse_q31(
  arm_fir_sparse_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  q31_t * pScratchIn,
  uint32_t blockSize);

  /**
   * @brief  Initialization function for the Q31 sparse FIR filter.
   * @param[in,out] *S         points to an instance of the Q31 sparse FIR structure.
   * @param[in]     numTaps    number of nonzero coefficients in the filter.
   * @param[in]     *pCoeffs   points to the array of filter coefficients.
   * @param[in]     *pState    points to the state buffer.
   * @param[in]     *pTapDelay points to the array of offset times.
   * @param[in]     maxDelay   maximum offset time supported.
   * @param[in]     blockSize  number of samples that will be processed per block.
   * @return none
   */

  void arm_fir_sparse_init_q31(
  arm_fir_sparse_instance_q31 * S,
  uint16_t numTaps,
  q31_t * pCoeffs,
  q31_t * pState,
  int32_t * pTapDelay,
  uint16_t maxDelay,
  uint32_t blockSize);

  /**
   * @brief Processing function for the Q15 sparse FIR filter.
   * @param[in]  *S           points to an instance of the Q15 sparse FIR structure.
   * @param[in]  *pSrc        points to the block of input data.
   * @param[out] *pDst        points to the block of output data
   * @param[in]  *pScratchIn  points to a temporary buffer of size blockSize.
   * @param[in]  *pScratchOut points to a temporary buffer of size blockSize.
   * @param[in]  blockSize    number of input samples to process per call.
   * @return none.
   */

  void arm_fir_sparse_q15(
  arm_fir_sparse_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  q15_t * pScratchIn,
  q31_t * pScratchOut,
  uint32_t blockSize);


  /**
   * @brief  Initialization function for the Q15 sparse FIR filter.
   * @param[in,out] *S         points to an instance of the Q15 sparse FIR structure.
   * @param[in]     numTaps    number of nonzero coefficients in the filter.
   * @param[in]     *pCoeffs   points to the array of filter coefficients.
   * @param[in]     *pState    points to the state buffer.
   * @param[in]     *pTapDelay points to the array of offset times.
   * @param[in]     maxDelay   maximum offset time supported.
   * @param[in]     blockSize  number of samples that will be processed per block.
   * @return none
   */

  void arm_fir_sparse_init_q15(
  arm_fir_sparse_instance_q15 * S,
  uint16_t numTaps,
  q15_t * pCoeffs,
  q15_t * pState,
  int32_t * pTapDelay,
  uint16_t maxDelay,
  uint32_t blockSize);

  /**
   * @brief Processing function for the Q7 sparse FIR filter.
   * @param[in]  *S           points to an instance of the Q7 sparse FIR structure.
   * @param[in]  *pSrc        points to the block of input data.
   * @param[out] *pDst        points to the block of output data
   * @param[in]  *pScratchIn  points to a temporary buffer of size blockSize.
   * @param[in]  *pScratchOut points to a temporary buffer of size blockSize.
   * @param[in]  blockSize    number of input samples to process per call.
   * @return none.
   */

  void arm_fir_sparse_q7(
  arm_fir_sparse_instance_q7 * S,
  q7_t * pSrc,
  q7_t * pDst,
  q7_t * pScratchIn,
  q31_t * pScratchOut,
  uint32_t blockSize);

  /**
   * @brief  Initialization function for the Q7 sparse FIR filter.
   * @param[in,out] *S         points to an instance of the Q7 sparse FIR structure.
   * @param[in]     numTaps    number of nonzero coefficients in the filter.
   * @param[in]     *pCoeffs   points to the array of filter coefficients.
   * @param[in]     *pState    points to the state buffer.
   * @param[in]     *pTapDelay points to the array of offset times.
   * @param[in]     maxDelay   maximum offset time supported.
   * @param[in]     blockSize  number of samples that will be processed per block.
   * @return none
   */

  void arm_fir_sparse_init_q7(
  arm_fir_sparse_instance_q7 * S,
  uint16_t numTaps,
  q7_t * pCoeffs,
  q7_t * pState,
  int32_t * pTapDelay,
  uint16_t maxDelay,
  uint32_t blockSize);


  /*
   * @brief  Floating-point sin_cos function.
   * @param[in]  theta    input value in degrees
   * @param[out] *pSinVal points to the processed sine output.
   * @param[out] *pCosVal points to the processed cos output.
   * @return none.
   */

  void arm_sin_cos_f32(
  float32_t theta,
  float32_t * pSinVal,
  float32_t * pCcosVal);

  /*
   * @brief  Q31 sin_cos function.
   * @param[in]  theta    scaled input value in degrees
   * @param[out] *pSinVal points to the processed sine output.
   * @param[out] *pCosVal points to the processed cosine output.
   * @return none.
   */

  void arm_sin_cos_q31(
  q31_t theta,
  q31_t * pSinVal,
  q31_t * pCosVal);


  /**
   * @brief  Floating-point complex conjugate.
   * @param[in]  *pSrc points to the input vector
   * @param[out]  *pDst points to the output vector
   * @param[in]  numSamples number of complex samples in each vector
   * @return none.
   */

  void arm_cmplx_conj_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t numSamples);

  /**
   * @brief  Q31 complex conjugate.
   * @param[in]  *pSrc points to the input vector
   * @param[out]  *pDst points to the output vector
   * @param[in]  numSamples number of complex samples in each vector
   * @return none.
   */

  void arm_cmplx_conj_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t numSamples);

  /**
   * @brief  Q15 complex conjugate.
   * @param[in]  *pSrc points to the input vector
   * @param[out]  *pDst points to the output vector
   * @param[in]  numSamples number of complex samples in each vector
   * @return none.
   */

  void arm_cmplx_conj_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t numSamples);



  /**
   * @brief  Floating-point complex magnitude squared
   * @param[in]  *pSrc points to the complex input vector
   * @param[out]  *pDst points to the real output vector
   * @param[in]  numSamples number of complex samples in the input vector
   * @return none.
   */

  void arm_cmplx_mag_squared_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t numSamples);

  /**
   * @brief  Q31 complex magnitude squared
   * @param[in]  *pSrc points to the complex input vector
   * @param[out]  *pDst points to the real output vector
   * @param[in]  numSamples number of complex samples in the input vector
   * @return none.
   */

  void arm_cmplx_mag_squared_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t numSamples);

  /**
   * @brief  Q15 complex magnitude squared
   * @param[in]  *pSrc points to the complex input vector
   * @param[out]  *pDst points to the real output vector
   * @param[in]  numSamples number of complex samples in the input vector
   * @return none.
   */

  void arm_cmplx_mag_squared_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t numSamples);


 /**
   * @ingroup groupController
   */

  /**
   * @defgroup PID PID Motor Control
   *
   * A Proportional Integral Derivative (PID) controller is a generic feedback control
   * loop mechanism widely used in industrial control systems.
   * A PID controller is the most commonly used type of feedback controller.
   *
   * This set of functions implements (PID) controllers
   * for Q15, Q31, and floating-point data types.  The functions operate on a single sample
   * of data and each call to the function returns a single processed value.
   * <code>S</code> points to an instance of the PID control data structure.  <code>in</code>
   * is the input sample value. The functions return the output value.
   *
   * \par Algorithm:
   * <pre>
   *    y[n] = y[n-1] + A0 * x[n] + A1 * x[n-1] + A2 * x[n-2]
   *    A0 = Kp + Ki + Kd
   *    A1 = (-Kp ) - (2 * Kd )
   *    A2 = Kd  </pre>
   *
   * \par
   * where \c Kp is proportional constant, \c Ki is Integral constant and \c Kd is Derivative constant
   *
   * \par
   * \image html PID.gif "Proportional Integral Derivative Controller"
   *
   * \par
   * The PID controller calculates an "error" value as the difference between
   * the measured output and the reference input.
   * The controller attempts to minimize the error by adjusting the process control inputs.
   * The proportional value determines the reaction to the current error,
   * the integral value determines the reaction based on the sum of recent errors,
   * and the derivative value determines the reaction based on the rate at which the error has been changing.
   *
   * \par Instance Structure
   * The Gains A0, A1, A2 and state variables for a PID controller are stored together in an instance data structure.
   * A separate instance structure must be defined for each PID Controller.
   * There are separate instance structure declarations for each of the 3 supported data types.
   *
   * \par Reset Functions
   * There is also an associated reset function for each data type which clears the state array.
   *
   * \par Initialization Functions
   * There is also an associated initialization function for each data type.
   * The initialization function performs the following operations:
   * - Initializes the Gains A0, A1, A2 from Kp,Ki, Kd gains.
   * - Zeros out the values in the state buffer.
   *
   * \par
   * Instance structure cannot be placed into a const data section and it is recommended to use the initialization function.
   *
   * \par Fixed-Point Behavior
   * Care must be taken when using the fixed-point versions of the PID Controller functions.
   * In particular, the overflow and saturation behavior of the accumulator used in each function must be considered.
   * Refer to the function specific documentation below for usage guidelines.
   */

  /**
   * @addtogroup PID
   * @{
   */

  /**
   * @brief  Process function for the floating-point PID Control.
   * @param[in,out] *S is an instance of the floating-point PID Control structure
   * @param[in] in input sample to process
   * @return out processed output sample.
   */


  static inline float32_t arm_pid_f32(
  arm_pid_instance_f32 * S,
  float32_t in)
  {
    float32_t out;

    /* y[n] = y[n-1] + A0 * x[n] + A1 * x[n-1] + A2 * x[n-2]  */
    out = (S->A0 * in) +
      (S->A1 * S->state[0]) + (S->A2 * S->state[1]) + (S->state[2]);

    /* Update state */
    S->state[1] = S->state[0];
    S->state[0] = in;
    S->state[2] = out;

    /* return to application */
    return (out);

  }

  /**
   * @brief  Process function for the Q31 PID Control.
   * @param[in,out] *S points to an instance of the Q31 PID Control structure
   * @param[in] in input sample to process
   * @return out processed output sample.
   *
   * <b>Scaling and Overflow Behavior:</b>
   * \par
   * The function is implemented using an internal 64-bit accumulator.
   * The accumulator has a 2.62 format and maintains full precision of the intermediate multiplication results but provides only a single guard bit.
   * Thus, if the accumulator result overflows it wraps around rather than clip.
   * In order to avoid overflows completely the input signal must be scaled down by 2 bits as there are four additions.
   * After all multiply-accumulates are performed, the 2.62 accumulator is truncated to 1.32 format and then saturated to 1.31 format.
   */

  static inline q31_t arm_pid_q31(
  arm_pid_instance_q31 * S,
  q31_t in)
  {
    q63_t acc;
    q31_t out;

    /* acc = A0 * x[n]  */
    acc = (q63_t) S->A0 * in;

    /* acc += A1 * x[n-1] */
    acc += (q63_t) S->A1 * S->state[0];

    /* acc += A2 * x[n-2]  */
    acc += (q63_t) S->A2 * S->state[1];

    /* convert output to 1.31 format to add y[n-1] */
    out = (q31_t) (acc >> 31u);

    /* out += y[n-1] */
    out += S->state[2];

    /* Update state */
    S->state[1] = S->state[0];
    S->state[0] = in;
    S->state[2] = out;

    /* return to application */
    return (out);

  }

  /**
   * @brief  Process function for the Q15 PID Control.
   * @param[in,out] *S points to an instance of the Q15 PID Control structure
   * @param[in] in input sample to process
   * @return out processed output sample.
   *
   * <b>Scaling and Overflow Behavior:</b>
   * \par
   * The function is implemented using a 64-bit internal accumulator.
   * Both Gains and state variables are represented in 1.15 format and multiplications yield a 2.30 result.
   * The 2.30 intermediate results are accumulated in a 64-bit accumulator in 34.30 format.
   * There is no risk of internal overflow with this approach and the full precision of intermediate multiplications is preserved.
   * After all additions have been performed, the accumulator is truncated to 34.15 format by discarding low 15 bits.
   * Lastly, the accumulator is saturated to yield a result in 1.15 format.
   */

  static inline q15_t arm_pid_q15(
  arm_pid_instance_q15 * S,
  q15_t in)
  {
    q63_t acc;
    q15_t out;


    int32_t __packed *vstate;

    /* Implementation of PID controller */

    /* acc = A0 * x[n]  */
    acc = (q31_t) __SMUAD(S->A0, in);

    /* acc += A1 * x[n-1] + A2 * x[n-2]  */
    vstate = ((int32_t __packed *)(S->state));
    acc = __SMLALD(S->A1, (q31_t) *vstate, acc);

#line 5057 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\arm_math.h"

    /* acc += y[n-1] */
    acc += (q31_t) S->state[2] << 15;

    /* saturate the output */
    out = (q15_t) (__SSAT((acc >> 15), 16));

    /* Update state */
    S->state[1] = S->state[0];
    S->state[0] = in;
    S->state[2] = out;

    /* return to application */
    return (out);

  }

  /**
   * @} end of PID group
   */


  /**
   * @brief Floating-point matrix inverse.
   * @param[in]  *src points to the instance of the input floating-point matrix structure.
   * @param[out] *dst points to the instance of the output floating-point matrix structure.
   * @return The function returns ARM_MATH_SIZE_MISMATCH, if the dimensions do not match.
   * If the input matrix is singular (does not have an inverse), then the algorithm terminates and returns error status ARM_MATH_SINGULAR.
   */

  arm_status arm_mat_inverse_f32(
  const arm_matrix_instance_f32 * src,
  arm_matrix_instance_f32 * dst);



  /**
   * @ingroup groupController
   */


  /**
   * @defgroup clarke Vector Clarke Transform
   * Forward Clarke transform converts the instantaneous stator phases into a two-coordinate time invariant vector.
   * Generally the Clarke transform uses three-phase currents <code>Ia, Ib and Ic</code> to calculate currents
   * in the two-phase orthogonal stator axis <code>Ialpha</code> and <code>Ibeta</code>.
   * When <code>Ialpha</code> is superposed with <code>Ia</code> as shown in the figure below
   * \image html clarke.gif Stator current space vector and its components in (a,b).
   * and <code>Ia + Ib + Ic = 0</code>, in this condition <code>Ialpha</code> and <code>Ibeta</code>
   * can be calculated using only <code>Ia</code> and <code>Ib</code>.
   *
   * The function operates on a single sample of data and each call to the function returns the processed output.
   * The library provides separate functions for Q31 and floating-point data types.
   * \par Algorithm
   * \image html clarkeFormula.gif
   * where <code>Ia</code> and <code>Ib</code> are the instantaneous stator phases and
   * <code>pIalpha</code> and <code>pIbeta</code> are the two coordinates of time invariant vector.
   * \par Fixed-Point Behavior
   * Care must be taken when using the Q31 version of the Clarke transform.
   * In particular, the overflow and saturation behavior of the accumulator used must be considered.
   * Refer to the function specific documentation below for usage guidelines.
   */

  /**
   * @addtogroup clarke
   * @{
   */

  /**
   *
   * @brief  Floating-point Clarke transform
   * @param[in]       Ia       input three-phase coordinate <code>a</code>
   * @param[in]       Ib       input three-phase coordinate <code>b</code>
   * @param[out]      *pIalpha points to output two-phase orthogonal vector axis alpha
   * @param[out]      *pIbeta  points to output two-phase orthogonal vector axis beta
   * @return none.
   */

  static inline void arm_clarke_f32(
  float32_t Ia,
  float32_t Ib,
  float32_t * pIalpha,
  float32_t * pIbeta)
  {
    /* Calculate pIalpha using the equation, pIalpha = Ia */
    *pIalpha = Ia;

    /* Calculate pIbeta using the equation, pIbeta = (1/sqrt(3)) * Ia + (2/sqrt(3)) * Ib */
    *pIbeta =
      ((float32_t) 0.57735026919 * Ia + (float32_t) 1.15470053838 * Ib);

  }

  /**
   * @brief  Clarke transform for Q31 version
   * @param[in]       Ia       input three-phase coordinate <code>a</code>
   * @param[in]       Ib       input three-phase coordinate <code>b</code>
   * @param[out]      *pIalpha points to output two-phase orthogonal vector axis alpha
   * @param[out]      *pIbeta  points to output two-phase orthogonal vector axis beta
   * @return none.
   *
   * <b>Scaling and Overflow Behavior:</b>
   * \par
   * The function is implemented using an internal 32-bit accumulator.
   * The accumulator maintains 1.31 format by truncating lower 31 bits of the intermediate multiplication in 2.62 format.
   * There is saturation on the addition, hence there is no risk of overflow.
   */

  static inline void arm_clarke_q31(
  q31_t Ia,
  q31_t Ib,
  q31_t * pIalpha,
  q31_t * pIbeta)
  {
    q31_t product1, product2;                    /* Temporary variables used to store intermediate results */

    /* Calculating pIalpha from Ia by equation pIalpha = Ia */
    *pIalpha = Ia;

    /* Intermediate product is calculated by (1/(sqrt(3)) * Ia) */
    product1 = (q31_t) (((q63_t) Ia * 0x24F34E8B) >> 30);

    /* Intermediate product is calculated by (2/sqrt(3) * Ib) */
    product2 = (q31_t) (((q63_t) Ib * 0x49E69D16) >> 30);

    /* pIbeta is calculated by adding the intermediate products */
    *pIbeta = __QADD(product1, product2);
  }

  /**
   * @} end of clarke group
   */

  /**
   * @brief  Converts the elements of the Q7 vector to Q31 vector.
   * @param[in]  *pSrc     input pointer
   * @param[out]  *pDst    output pointer
   * @param[in]  blockSize number of samples to process
   * @return none.
   */
  void arm_q7_to_q31(
  q7_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);




  /**
   * @ingroup groupController
   */

  /**
   * @defgroup inv_clarke Vector Inverse Clarke Transform
   * Inverse Clarke transform converts the two-coordinate time invariant vector into instantaneous stator phases.
   *
   * The function operates on a single sample of data and each call to the function returns the processed output.
   * The library provides separate functions for Q31 and floating-point data types.
   * \par Algorithm
   * \image html clarkeInvFormula.gif
   * where <code>pIa</code> and <code>pIb</code> are the instantaneous stator phases and
   * <code>Ialpha</code> and <code>Ibeta</code> are the two coordinates of time invariant vector.
   * \par Fixed-Point Behavior
   * Care must be taken when using the Q31 version of the Clarke transform.
   * In particular, the overflow and saturation behavior of the accumulator used must be considered.
   * Refer to the function specific documentation below for usage guidelines.
   */

  /**
   * @addtogroup inv_clarke
   * @{
   */

   /**
   * @brief  Floating-point Inverse Clarke transform
   * @param[in]       Ialpha  input two-phase orthogonal vector axis alpha
   * @param[in]       Ibeta   input two-phase orthogonal vector axis beta
   * @param[out]      *pIa    points to output three-phase coordinate <code>a</code>
   * @param[out]      *pIb    points to output three-phase coordinate <code>b</code>
   * @return none.
   */


  static inline void arm_inv_clarke_f32(
  float32_t Ialpha,
  float32_t Ibeta,
  float32_t * pIa,
  float32_t * pIb)
  {
    /* Calculating pIa from Ialpha by equation pIa = Ialpha */
    *pIa = Ialpha;

    /* Calculating pIb from Ialpha and Ibeta by equation pIb = -(1/2) * Ialpha + (sqrt(3)/2) * Ibeta */
    *pIb = -0.5 * Ialpha + (float32_t) 0.8660254039 *Ibeta;

  }

  /**
   * @brief  Inverse Clarke transform for Q31 version
   * @param[in]       Ialpha  input two-phase orthogonal vector axis alpha
   * @param[in]       Ibeta   input two-phase orthogonal vector axis beta
   * @param[out]      *pIa    points to output three-phase coordinate <code>a</code>
   * @param[out]      *pIb    points to output three-phase coordinate <code>b</code>
   * @return none.
   *
   * <b>Scaling and Overflow Behavior:</b>
   * \par
   * The function is implemented using an internal 32-bit accumulator.
   * The accumulator maintains 1.31 format by truncating lower 31 bits of the intermediate multiplication in 2.62 format.
   * There is saturation on the subtraction, hence there is no risk of overflow.
   */

  static inline void arm_inv_clarke_q31(
  q31_t Ialpha,
  q31_t Ibeta,
  q31_t * pIa,
  q31_t * pIb)
  {
    q31_t product1, product2;                    /* Temporary variables used to store intermediate results */

    /* Calculating pIa from Ialpha by equation pIa = Ialpha */
    *pIa = Ialpha;

    /* Intermediate product is calculated by (1/(2*sqrt(3)) * Ia) */
    product1 = (q31_t) (((q63_t) (Ialpha) * (0x40000000)) >> 31);

    /* Intermediate product is calculated by (1/sqrt(3) * pIb) */
    product2 = (q31_t) (((q63_t) (Ibeta) * (0x6ED9EBA1)) >> 31);

    /* pIb is calculated by subtracting the products */
    *pIb = __QSUB(product2, product1);

  }

  /**
   * @} end of inv_clarke group
   */

  /**
   * @brief  Converts the elements of the Q7 vector to Q15 vector.
   * @param[in]  *pSrc     input pointer
   * @param[out] *pDst     output pointer
   * @param[in]  blockSize number of samples to process
   * @return none.
   */
  void arm_q7_to_q15(
  q7_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);



  /**
   * @ingroup groupController
   */

  /**
   * @defgroup park Vector Park Transform
   *
   * Forward Park transform converts the input two-coordinate vector to flux and torque components.
   * The Park transform can be used to realize the transformation of the <code>Ialpha</code> and the <code>Ibeta</code> currents
   * from the stationary to the moving reference frame and control the spatial relationship between
   * the stator vector current and rotor flux vector.
   * If we consider the d axis aligned with the rotor flux, the diagram below shows the
   * current vector and the relationship from the two reference frames:
   * \image html park.gif "Stator current space vector and its component in (a,b) and in the d,q rotating reference frame"
   *
   * The function operates on a single sample of data and each call to the function returns the processed output.
   * The library provides separate functions for Q31 and floating-point data types.
   * \par Algorithm
   * \image html parkFormula.gif
   * where <code>Ialpha</code> and <code>Ibeta</code> are the stator vector components,
   * <code>pId</code> and <code>pIq</code> are rotor vector components and <code>cosVal</code> and <code>sinVal</code> are the
   * cosine and sine values of theta (rotor flux position).
   * \par Fixed-Point Behavior
   * Care must be taken when using the Q31 version of the Park transform.
   * In particular, the overflow and saturation behavior of the accumulator used must be considered.
   * Refer to the function specific documentation below for usage guidelines.
   */

  /**
   * @addtogroup park
   * @{
   */

  /**
   * @brief Floating-point Park transform
   * @param[in]       Ialpha input two-phase vector coordinate alpha
   * @param[in]       Ibeta  input two-phase vector coordinate beta
   * @param[out]      *pId   points to output	rotor reference frame d
   * @param[out]      *pIq   points to output	rotor reference frame q
   * @param[in]       sinVal sine value of rotation angle theta
   * @param[in]       cosVal cosine value of rotation angle theta
   * @return none.
   *
   * The function implements the forward Park transform.
   *
   */

  static inline void arm_park_f32(
  float32_t Ialpha,
  float32_t Ibeta,
  float32_t * pId,
  float32_t * pIq,
  float32_t sinVal,
  float32_t cosVal)
  {
    /* Calculate pId using the equation, pId = Ialpha * cosVal + Ibeta * sinVal */
    *pId = Ialpha * cosVal + Ibeta * sinVal;

    /* Calculate pIq using the equation, pIq = - Ialpha * sinVal + Ibeta * cosVal */
    *pIq = -Ialpha * sinVal + Ibeta * cosVal;

  }

  /**
   * @brief  Park transform for Q31 version
   * @param[in]       Ialpha input two-phase vector coordinate alpha
   * @param[in]       Ibeta  input two-phase vector coordinate beta
   * @param[out]      *pId   points to output rotor reference frame d
   * @param[out]      *pIq   points to output rotor reference frame q
   * @param[in]       sinVal sine value of rotation angle theta
   * @param[in]       cosVal cosine value of rotation angle theta
   * @return none.
   *
   * <b>Scaling and Overflow Behavior:</b>
   * \par
   * The function is implemented using an internal 32-bit accumulator.
   * The accumulator maintains 1.31 format by truncating lower 31 bits of the intermediate multiplication in 2.62 format.
   * There is saturation on the addition and subtraction, hence there is no risk of overflow.
   */


  static inline void arm_park_q31(
  q31_t Ialpha,
  q31_t Ibeta,
  q31_t * pId,
  q31_t * pIq,
  q31_t sinVal,
  q31_t cosVal)
  {
    q31_t product1, product2;                    /* Temporary variables used to store intermediate results */
    q31_t product3, product4;                    /* Temporary variables used to store intermediate results */

    /* Intermediate product is calculated by (Ialpha * cosVal) */
    product1 = (q31_t) (((q63_t) (Ialpha) * (cosVal)) >> 31);

    /* Intermediate product is calculated by (Ibeta * sinVal) */
    product2 = (q31_t) (((q63_t) (Ibeta) * (sinVal)) >> 31);


    /* Intermediate product is calculated by (Ialpha * sinVal) */
    product3 = (q31_t) (((q63_t) (Ialpha) * (sinVal)) >> 31);

    /* Intermediate product is calculated by (Ibeta * cosVal) */
    product4 = (q31_t) (((q63_t) (Ibeta) * (cosVal)) >> 31);

    /* Calculate pId by adding the two intermediate products 1 and 2 */
    *pId = __QADD(product1, product2);

    /* Calculate pIq by subtracting the two intermediate products 3 from 4 */
    *pIq = __QSUB(product4, product3);
  }

  /**
   * @} end of park group
   */

  /**
   * @brief  Converts the elements of the Q7 vector to floating-point vector.
   * @param[in]  *pSrc is input pointer
   * @param[out]  *pDst is output pointer
   * @param[in]  blockSize is the number of samples to process
   * @return none.
   */
  void arm_q7_to_float(
  q7_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  /**
   * @ingroup groupController
   */

  /**
   * @defgroup inv_park Vector Inverse Park transform
   * Inverse Park transform converts the input flux and torque components to two-coordinate vector.
   *
   * The function operates on a single sample of data and each call to the function returns the processed output.
   * The library provides separate functions for Q31 and floating-point data types.
   * \par Algorithm
   * \image html parkInvFormula.gif
   * where <code>pIalpha</code> and <code>pIbeta</code> are the stator vector components,
   * <code>Id</code> and <code>Iq</code> are rotor vector components and <code>cosVal</code> and <code>sinVal</code> are the
   * cosine and sine values of theta (rotor flux position).
   * \par Fixed-Point Behavior
   * Care must be taken when using the Q31 version of the Park transform.
   * In particular, the overflow and saturation behavior of the accumulator used must be considered.
   * Refer to the function specific documentation below for usage guidelines.
   */

  /**
   * @addtogroup inv_park
   * @{
   */

   /**
   * @brief  Floating-point Inverse Park transform
   * @param[in]       Id        input coordinate of rotor reference frame d
   * @param[in]       Iq        input coordinate of rotor reference frame q
   * @param[out]      *pIalpha  points to output two-phase orthogonal vector axis alpha
   * @param[out]      *pIbeta   points to output two-phase orthogonal vector axis beta
   * @param[in]       sinVal    sine value of rotation angle theta
   * @param[in]       cosVal    cosine value of rotation angle theta
   * @return none.
   */

  static inline void arm_inv_park_f32(
  float32_t Id,
  float32_t Iq,
  float32_t * pIalpha,
  float32_t * pIbeta,
  float32_t sinVal,
  float32_t cosVal)
  {
    /* Calculate pIalpha using the equation, pIalpha = Id * cosVal - Iq * sinVal */
    *pIalpha = Id * cosVal - Iq * sinVal;

    /* Calculate pIbeta using the equation, pIbeta = Id * sinVal + Iq * cosVal */
    *pIbeta = Id * sinVal + Iq * cosVal;

  }


  /**
   * @brief  Inverse Park transform for	Q31 version
   * @param[in]       Id        input coordinate of rotor reference frame d
   * @param[in]       Iq        input coordinate of rotor reference frame q
   * @param[out]      *pIalpha  points to output two-phase orthogonal vector axis alpha
   * @param[out]      *pIbeta   points to output two-phase orthogonal vector axis beta
   * @param[in]       sinVal    sine value of rotation angle theta
   * @param[in]       cosVal    cosine value of rotation angle theta
   * @return none.
   *
   * <b>Scaling and Overflow Behavior:</b>
   * \par
   * The function is implemented using an internal 32-bit accumulator.
   * The accumulator maintains 1.31 format by truncating lower 31 bits of the intermediate multiplication in 2.62 format.
   * There is saturation on the addition, hence there is no risk of overflow.
   */


  static inline void arm_inv_park_q31(
  q31_t Id,
  q31_t Iq,
  q31_t * pIalpha,
  q31_t * pIbeta,
  q31_t sinVal,
  q31_t cosVal)
  {
    q31_t product1, product2;                    /* Temporary variables used to store intermediate results */
    q31_t product3, product4;                    /* Temporary variables used to store intermediate results */

    /* Intermediate product is calculated by (Id * cosVal) */
    product1 = (q31_t) (((q63_t) (Id) * (cosVal)) >> 31);

    /* Intermediate product is calculated by (Iq * sinVal) */
    product2 = (q31_t) (((q63_t) (Iq) * (sinVal)) >> 31);


    /* Intermediate product is calculated by (Id * sinVal) */
    product3 = (q31_t) (((q63_t) (Id) * (sinVal)) >> 31);

    /* Intermediate product is calculated by (Iq * cosVal) */
    product4 = (q31_t) (((q63_t) (Iq) * (cosVal)) >> 31);

    /* Calculate pIalpha by using the two intermediate products 1 and 2 */
    *pIalpha = __QSUB(product1, product2);

    /* Calculate pIbeta by using the two intermediate products 3 and 4 */
    *pIbeta = __QADD(product4, product3);

  }

  /**
   * @} end of Inverse park group
   */


  /**
   * @brief  Converts the elements of the Q31 vector to floating-point vector.
   * @param[in]  *pSrc is input pointer
   * @param[out]  *pDst is output pointer
   * @param[in]  blockSize is the number of samples to process
   * @return none.
   */
  void arm_q31_to_float(
  q31_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  /**
   * @ingroup groupInterpolation
   */

  /**
   * @defgroup LinearInterpolate Linear Interpolation
   *
   * Linear interpolation is a method of curve fitting using linear polynomials.
   * Linear interpolation works by effectively drawing a straight line between two neighboring samples and returning the appropriate point along that line
   *
   * \par
   * \image html LinearInterp.gif "Linear interpolation"
   *
   * \par
   * A  Linear Interpolate function calculates an output value(y), for the input(x)
   * using linear interpolation of the input values x0, x1( nearest input values) and the output values y0 and y1(nearest output values)
   *
   * \par Algorithm:
   * <pre>
   *       y = y0 + (x - x0) * ((y1 - y0)/(x1-x0))
   *       where x0, x1 are nearest values of input x
   *             y0, y1 are nearest values to output y
   * </pre>
   *
   * \par
   * This set of functions implements Linear interpolation process
   * for Q7, Q15, Q31, and floating-point data types.  The functions operate on a single
   * sample of data and each call to the function returns a single processed value.
   * <code>S</code> points to an instance of the Linear Interpolate function data structure.
   * <code>x</code> is the input sample value. The functions returns the output value.
   *
   * \par
   * if x is outside of the table boundary, Linear interpolation returns first value of the table
   * if x is below input range and returns last value of table if x is above range.
   */

  /**
   * @addtogroup LinearInterpolate
   * @{
   */

  /**
   * @brief  Process function for the floating-point Linear Interpolation Function.
   * @param[in,out] *S is an instance of the floating-point Linear Interpolation structure
   * @param[in] x input sample to process
   * @return y processed output sample.
   *
   */

  static inline float32_t arm_linear_interp_f32(
  arm_linear_interp_instance_f32 * S,
  float32_t x)
  {

    float32_t y;
    float32_t x0, x1;                            /* Nearest input values */
    float32_t y0, y1;                            /* Nearest output values */
    float32_t xSpacing = S->xSpacing;            /* spacing between input values */
    int32_t i;                                   /* Index variable */
    float32_t *pYData = S->pYData;               /* pointer to output table */

    /* Calculation of index */
    i = (int32_t) ((x - S->x1) / xSpacing);

    if(i < 0)
    {
      /* Iniatilize output for below specified range as least output value of table */
      y = pYData[0];
    }
    else if((uint32_t)i >= S->nValues)
    {
      /* Iniatilize output for above specified range as last output value of table */
      y = pYData[S->nValues - 1];
    }
    else
    {
      /* Calculation of nearest input values */
      x0 = S->x1 + i * xSpacing;
      x1 = S->x1 + (i + 1) * xSpacing;

      /* Read of nearest output values */
      y0 = pYData[i];
      y1 = pYData[i + 1];

      /* Calculation of output */
      y = y0 + (x - x0) * ((y1 - y0) / (x1 - x0));

    }

    /* returns output value */
    return (y);
  }

   /**
   *
   * @brief  Process function for the Q31 Linear Interpolation Function.
   * @param[in] *pYData  pointer to Q31 Linear Interpolation table
   * @param[in] x input sample to process
   * @param[in] nValues number of table values
   * @return y processed output sample.
   *
   * \par
   * Input sample <code>x</code> is in 12.20 format which contains 12 bits for table index and 20 bits for fractional part.
   * This function can support maximum of table size 2^12.
   *
   */


  static inline q31_t arm_linear_interp_q31(
  q31_t * pYData,
  q31_t x,
  uint32_t nValues)
  {
    q31_t y;                                     /* output */
    q31_t y0, y1;                                /* Nearest output values */
    q31_t fract;                                 /* fractional part */
    int32_t index;                               /* Index to read nearest output values */

    /* Input is in 12.20 format */
    /* 12 bits for the table index */
    /* Index value calculation */
    index = ((x & 0xFFF00000) >> 20);

    if(index >= (int32_t)(nValues - 1))
    {
      return (pYData[nValues - 1]);
    }
    else if(index < 0)
    {
      return (pYData[0]);
    }
    else
    {

      /* 20 bits for the fractional part */
      /* shift left by 11 to keep fract in 1.31 format */
      fract = (x & 0x000FFFFF) << 11;

      /* Read two nearest output values from the index in 1.31(q31) format */
      y0 = pYData[index];
      y1 = pYData[index + 1u];

      /* Calculation of y0 * (1-fract) and y is in 2.30 format */
      y = ((q31_t) ((q63_t) y0 * (0x7FFFFFFF - fract) >> 32));

      /* Calculation of y0 * (1-fract) + y1 *fract and y is in 2.30 format */
      y += ((q31_t) (((q63_t) y1 * fract) >> 32));

      /* Convert y to 1.31 format */
      return (y << 1u);

    }

  }

  /**
   *
   * @brief  Process function for the Q15 Linear Interpolation Function.
   * @param[in] *pYData  pointer to Q15 Linear Interpolation table
   * @param[in] x input sample to process
   * @param[in] nValues number of table values
   * @return y processed output sample.
   *
   * \par
   * Input sample <code>x</code> is in 12.20 format which contains 12 bits for table index and 20 bits for fractional part.
   * This function can support maximum of table size 2^12.
   *
   */


  static inline q15_t arm_linear_interp_q15(
  q15_t * pYData,
  q31_t x,
  uint32_t nValues)
  {
    q63_t y;                                     /* output */
    q15_t y0, y1;                                /* Nearest output values */
    q31_t fract;                                 /* fractional part */
    int32_t index;                               /* Index to read nearest output values */

    /* Input is in 12.20 format */
    /* 12 bits for the table index */
    /* Index value calculation */
    index = ((x & 0xFFF00000) >> 20u);

    if(index >= (int32_t)(nValues - 1))
    {
      return (pYData[nValues - 1]);
    }
    else if(index < 0)
    {
      return (pYData[0]);
    }
    else
    {
      /* 20 bits for the fractional part */
      /* fract is in 12.20 format */
      fract = (x & 0x000FFFFF);

      /* Read two nearest output values from the index */
      y0 = pYData[index];
      y1 = pYData[index + 1u];

      /* Calculation of y0 * (1-fract) and y is in 13.35 format */
      y = ((q63_t) y0 * (0xFFFFF - fract));

      /* Calculation of (y0 * (1-fract) + y1 * fract) and y is in 13.35 format */
      y += ((q63_t) y1 * (fract));

      /* convert y to 1.15 format */
      return (y >> 20);
    }


  }

  /**
   *
   * @brief  Process function for the Q7 Linear Interpolation Function.
   * @param[in] *pYData  pointer to Q7 Linear Interpolation table
   * @param[in] x input sample to process
   * @param[in] nValues number of table values
   * @return y processed output sample.
   *
   * \par
   * Input sample <code>x</code> is in 12.20 format which contains 12 bits for table index and 20 bits for fractional part.
   * This function can support maximum of table size 2^12.
   */


  static inline q7_t arm_linear_interp_q7(
  q7_t * pYData,
  q31_t x,
  uint32_t nValues)
  {
    q31_t y;                                     /* output */
    q7_t y0, y1;                                 /* Nearest output values */
    q31_t fract;                                 /* fractional part */
    uint32_t index;                              /* Index to read nearest output values */

    /* Input is in 12.20 format */
    /* 12 bits for the table index */
    /* Index value calculation */
    if (x < 0)
    {
      return (pYData[0]);
    }
    index = (x >> 20) & 0xfff;


    if(index >= (nValues - 1))
    {
      return (pYData[nValues - 1]);
    }
    else
    {

      /* 20 bits for the fractional part */
      /* fract is in 12.20 format */
      fract = (x & 0x000FFFFF);

      /* Read two nearest output values from the index and are in 1.7(q7) format */
      y0 = pYData[index];
      y1 = pYData[index + 1u];

      /* Calculation of y0 * (1-fract ) and y is in 13.27(q27) format */
      y = ((y0 * (0xFFFFF - fract)));

      /* Calculation of y1 * fract + y0 * (1-fract) and y is in 13.27(q27) format */
      y += (y1 * fract);

      /* convert y to 1.7(q7) format */
      return (y >> 20u);

    }

  }
  /**
   * @} end of LinearInterpolate group
   */

  /**
   * @brief  Fast approximation to the trigonometric sine function for floating-point data.
   * @param[in] x input value in radians.
   * @return  sin(x).
   */

  float32_t arm_sin_f32(
  float32_t x);

  /**
   * @brief  Fast approximation to the trigonometric sine function for Q31 data.
   * @param[in] x Scaled input value in radians.
   * @return  sin(x).
   */

  q31_t arm_sin_q31(
  q31_t x);

  /**
   * @brief  Fast approximation to the trigonometric sine function for Q15 data.
   * @param[in] x Scaled input value in radians.
   * @return  sin(x).
   */

  q15_t arm_sin_q15(
  q15_t x);

  /**
   * @brief  Fast approximation to the trigonometric cosine function for floating-point data.
   * @param[in] x input value in radians.
   * @return  cos(x).
   */

  float32_t arm_cos_f32(
  float32_t x);

  /**
   * @brief Fast approximation to the trigonometric cosine function for Q31 data.
   * @param[in] x Scaled input value in radians.
   * @return  cos(x).
   */

  q31_t arm_cos_q31(
  q31_t x);

  /**
   * @brief  Fast approximation to the trigonometric cosine function for Q15 data.
   * @param[in] x Scaled input value in radians.
   * @return  cos(x).
   */

  q15_t arm_cos_q15(
  q15_t x);


  /**
   * @ingroup groupFastMath
   */


  /**
   * @defgroup SQRT Square Root
   *
   * Computes the square root of a number.
   * There are separate functions for Q15, Q31, and floating-point data types.
   * The square root function is computed using the Newton-Raphson algorithm.
   * This is an iterative algorithm of the form:
   * <pre>
   *      x1 = x0 - f(x0)/f'(x0)
   * </pre>
   * where <code>x1</code> is the current estimate,
   * <code>x0</code> is the previous estimate, and
   * <code>f'(x0)</code> is the derivative of <code>f()</code> evaluated at <code>x0</code>.
   * For the square root function, the algorithm reduces to:
   * <pre>
   *     x0 = in/2                         [initial guess]
   *     x1 = 1/2 * ( x0 + in / x0)        [each iteration]
   * </pre>
   */


  /**
   * @addtogroup SQRT
   * @{
   */

  /**
   * @brief  Floating-point square root function.
   * @param[in]  in     input value.
   * @param[out] *pOut  square root of input value.
   * @return The function returns ARM_MATH_SUCCESS if input value is positive value or ARM_MATH_ARGUMENT_ERROR if
   * <code>in</code> is negative value and returns zero output for negative values.
   */

  static inline arm_status arm_sqrt_f32(
  float32_t in,
  float32_t * pOut)
  {
    if(in > 0)
    {

//      #if __FPU_USED



      *pOut = sqrtf(in);


      return (ARM_MATH_SUCCESS);
    }
    else
    {
      *pOut = 0.0f;
      return (ARM_MATH_ARGUMENT_ERROR);
    }

  }


  /**
   * @brief Q31 square root function.
   * @param[in]   in    input value.  The range of the input value is [0 +1) or 0x00000000 to 0x7FFFFFFF.
   * @param[out]  *pOut square root of input value.
   * @return The function returns ARM_MATH_SUCCESS if input value is positive value or ARM_MATH_ARGUMENT_ERROR if
   * <code>in</code> is negative value and returns zero output for negative values.
   */
  arm_status arm_sqrt_q31(
  q31_t in,
  q31_t * pOut);

  /**
   * @brief  Q15 square root function.
   * @param[in]   in     input value.  The range of the input value is [0 +1) or 0x0000 to 0x7FFF.
   * @param[out]  *pOut  square root of input value.
   * @return The function returns ARM_MATH_SUCCESS if input value is positive value or ARM_MATH_ARGUMENT_ERROR if
   * <code>in</code> is negative value and returns zero output for negative values.
   */
  arm_status arm_sqrt_q15(
  q15_t in,
  q15_t * pOut);

  /**
   * @} end of SQRT group
   */






  /**
   * @brief floating-point Circular write function.
   */

  static inline void arm_circularWrite_f32(
  int32_t * circBuffer,
  int32_t L,
  uint16_t * writeOffset,
  int32_t bufferInc,
  const int32_t * src,
  int32_t srcInc,
  uint32_t blockSize)
  {
    uint32_t i = 0u;
    int32_t wOffset;

    /* Copy the value of Index pointer that points
     * to the current location where the input samples to be copied */
    wOffset = *writeOffset;

    /* Loop over the blockSize */
    i = blockSize;

    while(i > 0u)
    {
      /* copy the input sample to the circular buffer */
      circBuffer[wOffset] = *src;

      /* Update the input pointer */
      src += srcInc;

      /* Circularly update wOffset.  Watch out for positive and negative value */
      wOffset += bufferInc;
      if(wOffset >= L)
        wOffset -= L;

      /* Decrement the loop counter */
      i--;
    }

    /* Update the index pointer */
    *writeOffset = wOffset;
  }



  /**
   * @brief floating-point Circular Read function.
   */
  static inline void arm_circularRead_f32(
  int32_t * circBuffer,
  int32_t L,
  int32_t * readOffset,
  int32_t bufferInc,
  int32_t * dst,
  int32_t * dst_base,
  int32_t dst_length,
  int32_t dstInc,
  uint32_t blockSize)
  {
    uint32_t i = 0u;
    int32_t rOffset, dst_end;

    /* Copy the value of Index pointer that points
     * to the current location from where the input samples to be read */
    rOffset = *readOffset;
    dst_end = (int32_t) (dst_base + dst_length);

    /* Loop over the blockSize */
    i = blockSize;

    while(i > 0u)
    {
      /* copy the sample from the circular buffer to the destination buffer */
      *dst = circBuffer[rOffset];

      /* Update the input pointer */
      dst += dstInc;

      if(dst == (int32_t *) dst_end)
      {
        dst = dst_base;
      }

      /* Circularly update rOffset.  Watch out for positive and negative value  */
      rOffset += bufferInc;

      if(rOffset >= L)
      {
        rOffset -= L;
      }

      /* Decrement the loop counter */
      i--;
    }

    /* Update the index pointer */
    *readOffset = rOffset;
  }

  /**
   * @brief Q15 Circular write function.
   */

  static inline void arm_circularWrite_q15(
  q15_t * circBuffer,
  int32_t L,
  uint16_t * writeOffset,
  int32_t bufferInc,
  const q15_t * src,
  int32_t srcInc,
  uint32_t blockSize)
  {
    uint32_t i = 0u;
    int32_t wOffset;

    /* Copy the value of Index pointer that points
     * to the current location where the input samples to be copied */
    wOffset = *writeOffset;

    /* Loop over the blockSize */
    i = blockSize;

    while(i > 0u)
    {
      /* copy the input sample to the circular buffer */
      circBuffer[wOffset] = *src;

      /* Update the input pointer */
      src += srcInc;

      /* Circularly update wOffset.  Watch out for positive and negative value */
      wOffset += bufferInc;
      if(wOffset >= L)
        wOffset -= L;

      /* Decrement the loop counter */
      i--;
    }

    /* Update the index pointer */
    *writeOffset = wOffset;
  }



  /**
   * @brief Q15 Circular Read function.
   */
  static inline void arm_circularRead_q15(
  q15_t * circBuffer,
  int32_t L,
  int32_t * readOffset,
  int32_t bufferInc,
  q15_t * dst,
  q15_t * dst_base,
  int32_t dst_length,
  int32_t dstInc,
  uint32_t blockSize)
  {
    uint32_t i = 0;
    int32_t rOffset, dst_end;

    /* Copy the value of Index pointer that points
     * to the current location from where the input samples to be read */
    rOffset = *readOffset;

    dst_end = (int32_t) (dst_base + dst_length);

    /* Loop over the blockSize */
    i = blockSize;

    while(i > 0u)
    {
      /* copy the sample from the circular buffer to the destination buffer */
      *dst = circBuffer[rOffset];

      /* Update the input pointer */
      dst += dstInc;

      if(dst == (q15_t *) dst_end)
      {
        dst = dst_base;
      }

      /* Circularly update wOffset.  Watch out for positive and negative value */
      rOffset += bufferInc;

      if(rOffset >= L)
      {
        rOffset -= L;
      }

      /* Decrement the loop counter */
      i--;
    }

    /* Update the index pointer */
    *readOffset = rOffset;
  }


  /**
   * @brief Q7 Circular write function.
   */

  static inline void arm_circularWrite_q7(
  q7_t * circBuffer,
  int32_t L,
  uint16_t * writeOffset,
  int32_t bufferInc,
  const q7_t * src,
  int32_t srcInc,
  uint32_t blockSize)
  {
    uint32_t i = 0u;
    int32_t wOffset;

    /* Copy the value of Index pointer that points
     * to the current location where the input samples to be copied */
    wOffset = *writeOffset;

    /* Loop over the blockSize */
    i = blockSize;

    while(i > 0u)
    {
      /* copy the input sample to the circular buffer */
      circBuffer[wOffset] = *src;

      /* Update the input pointer */
      src += srcInc;

      /* Circularly update wOffset.  Watch out for positive and negative value */
      wOffset += bufferInc;
      if(wOffset >= L)
        wOffset -= L;

      /* Decrement the loop counter */
      i--;
    }

    /* Update the index pointer */
    *writeOffset = wOffset;
  }



  /**
   * @brief Q7 Circular Read function.
   */
  static inline void arm_circularRead_q7(
  q7_t * circBuffer,
  int32_t L,
  int32_t * readOffset,
  int32_t bufferInc,
  q7_t * dst,
  q7_t * dst_base,
  int32_t dst_length,
  int32_t dstInc,
  uint32_t blockSize)
  {
    uint32_t i = 0;
    int32_t rOffset, dst_end;

    /* Copy the value of Index pointer that points
     * to the current location from where the input samples to be read */
    rOffset = *readOffset;

    dst_end = (int32_t) (dst_base + dst_length);

    /* Loop over the blockSize */
    i = blockSize;

    while(i > 0u)
    {
      /* copy the sample from the circular buffer to the destination buffer */
      *dst = circBuffer[rOffset];

      /* Update the input pointer */
      dst += dstInc;

      if(dst == (q7_t *) dst_end)
      {
        dst = dst_base;
      }

      /* Circularly update rOffset.  Watch out for positive and negative value */
      rOffset += bufferInc;

      if(rOffset >= L)
      {
        rOffset -= L;
      }

      /* Decrement the loop counter */
      i--;
    }

    /* Update the index pointer */
    *readOffset = rOffset;
  }


  /**
   * @brief  Sum of the squares of the elements of a Q31 vector.
   * @param[in]  *pSrc is input pointer
   * @param[in]  blockSize is the number of samples to process
   * @param[out]  *pResult is output value.
   * @return none.
   */

  void arm_power_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q63_t * pResult);

  /**
   * @brief  Sum of the squares of the elements of a floating-point vector.
   * @param[in]  *pSrc is input pointer
   * @param[in]  blockSize is the number of samples to process
   * @param[out]  *pResult is output value.
   * @return none.
   */

  void arm_power_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult);

  /**
   * @brief  Sum of the squares of the elements of a Q15 vector.
   * @param[in]  *pSrc is input pointer
   * @param[in]  blockSize is the number of samples to process
   * @param[out]  *pResult is output value.
   * @return none.
   */

  void arm_power_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q63_t * pResult);

  /**
   * @brief  Sum of the squares of the elements of a Q7 vector.
   * @param[in]  *pSrc is input pointer
   * @param[in]  blockSize is the number of samples to process
   * @param[out]  *pResult is output value.
   * @return none.
   */

  void arm_power_q7(
  q7_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult);

  /**
   * @brief  Mean value of a Q7 vector.
   * @param[in]  *pSrc is input pointer
   * @param[in]  blockSize is the number of samples to process
   * @param[out]  *pResult is output value.
   * @return none.
   */

  void arm_mean_q7(
  q7_t * pSrc,
  uint32_t blockSize,
  q7_t * pResult);

  /**
   * @brief  Mean value of a Q15 vector.
   * @param[in]  *pSrc is input pointer
   * @param[in]  blockSize is the number of samples to process
   * @param[out]  *pResult is output value.
   * @return none.
   */
  void arm_mean_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult);

  /**
   * @brief  Mean value of a Q31 vector.
   * @param[in]  *pSrc is input pointer
   * @param[in]  blockSize is the number of samples to process
   * @param[out]  *pResult is output value.
   * @return none.
   */
  void arm_mean_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult);

  /**
   * @brief  Mean value of a floating-point vector.
   * @param[in]  *pSrc is input pointer
   * @param[in]  blockSize is the number of samples to process
   * @param[out]  *pResult is output value.
   * @return none.
   */
  void arm_mean_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult);

  /**
   * @brief  Variance of the elements of a floating-point vector.
   * @param[in]  *pSrc is input pointer
   * @param[in]  blockSize is the number of samples to process
   * @param[out]  *pResult is output value.
   * @return none.
   */

  void arm_var_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult);

  /**
   * @brief  Variance of the elements of a Q31 vector.
   * @param[in]  *pSrc is input pointer
   * @param[in]  blockSize is the number of samples to process
   * @param[out]  *pResult is output value.
   * @return none.
   */

  void arm_var_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult);

  /**
   * @brief  Variance of the elements of a Q15 vector.
   * @param[in]  *pSrc is input pointer
   * @param[in]  blockSize is the number of samples to process
   * @param[out]  *pResult is output value.
   * @return none.
   */

  void arm_var_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult);

  /**
   * @brief  Root Mean Square of the elements of a floating-point vector.
   * @param[in]  *pSrc is input pointer
   * @param[in]  blockSize is the number of samples to process
   * @param[out]  *pResult is output value.
   * @return none.
   */

  void arm_rms_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult);

  /**
   * @brief  Root Mean Square of the elements of a Q31 vector.
   * @param[in]  *pSrc is input pointer
   * @param[in]  blockSize is the number of samples to process
   * @param[out]  *pResult is output value.
   * @return none.
   */

  void arm_rms_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult);

  /**
   * @brief  Root Mean Square of the elements of a Q15 vector.
   * @param[in]  *pSrc is input pointer
   * @param[in]  blockSize is the number of samples to process
   * @param[out]  *pResult is output value.
   * @return none.
   */

  void arm_rms_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult);

  /**
   * @brief  Standard deviation of the elements of a floating-point vector.
   * @param[in]  *pSrc is input pointer
   * @param[in]  blockSize is the number of samples to process
   * @param[out]  *pResult is output value.
   * @return none.
   */

  void arm_std_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult);

  /**
   * @brief  Standard deviation of the elements of a Q31 vector.
   * @param[in]  *pSrc is input pointer
   * @param[in]  blockSize is the number of samples to process
   * @param[out]  *pResult is output value.
   * @return none.
   */

  void arm_std_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult);

  /**
   * @brief  Standard deviation of the elements of a Q15 vector.
   * @param[in]  *pSrc is input pointer
   * @param[in]  blockSize is the number of samples to process
   * @param[out]  *pResult is output value.
   * @return none.
   */

  void arm_std_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult);

  /**
   * @brief  Floating-point complex magnitude
   * @param[in]  *pSrc points to the complex input vector
   * @param[out]  *pDst points to the real output vector
   * @param[in]  numSamples number of complex samples in the input vector
   * @return none.
   */

  void arm_cmplx_mag_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t numSamples);

  /**
   * @brief  Q31 complex magnitude
   * @param[in]  *pSrc points to the complex input vector
   * @param[out]  *pDst points to the real output vector
   * @param[in]  numSamples number of complex samples in the input vector
   * @return none.
   */

  void arm_cmplx_mag_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t numSamples);

  /**
   * @brief  Q15 complex magnitude
   * @param[in]  *pSrc points to the complex input vector
   * @param[out]  *pDst points to the real output vector
   * @param[in]  numSamples number of complex samples in the input vector
   * @return none.
   */

  void arm_cmplx_mag_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t numSamples);

  /**
   * @brief  Q15 complex dot product
   * @param[in]  *pSrcA points to the first input vector
   * @param[in]  *pSrcB points to the second input vector
   * @param[in]  numSamples number of complex samples in each vector
   * @param[out]  *realResult real part of the result returned here
   * @param[out]  *imagResult imaginary part of the result returned here
   * @return none.
   */

  void arm_cmplx_dot_prod_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  uint32_t numSamples,
  q31_t * realResult,
  q31_t * imagResult);

  /**
   * @brief  Q31 complex dot product
   * @param[in]  *pSrcA points to the first input vector
   * @param[in]  *pSrcB points to the second input vector
   * @param[in]  numSamples number of complex samples in each vector
   * @param[out]  *realResult real part of the result returned here
   * @param[out]  *imagResult imaginary part of the result returned here
   * @return none.
   */

  void arm_cmplx_dot_prod_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  uint32_t numSamples,
  q63_t * realResult,
  q63_t * imagResult);

  /**
   * @brief  Floating-point complex dot product
   * @param[in]  *pSrcA points to the first input vector
   * @param[in]  *pSrcB points to the second input vector
   * @param[in]  numSamples number of complex samples in each vector
   * @param[out]  *realResult real part of the result returned here
   * @param[out]  *imagResult imaginary part of the result returned here
   * @return none.
   */

  void arm_cmplx_dot_prod_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  uint32_t numSamples,
  float32_t * realResult,
  float32_t * imagResult);

  /**
   * @brief  Q15 complex-by-real multiplication
   * @param[in]  *pSrcCmplx points to the complex input vector
   * @param[in]  *pSrcReal points to the real input vector
   * @param[out]  *pCmplxDst points to the complex output vector
   * @param[in]  numSamples number of samples in each vector
   * @return none.
   */

  void arm_cmplx_mult_real_q15(
  q15_t * pSrcCmplx,
  q15_t * pSrcReal,
  q15_t * pCmplxDst,
  uint32_t numSamples);

  /**
   * @brief  Q31 complex-by-real multiplication
   * @param[in]  *pSrcCmplx points to the complex input vector
   * @param[in]  *pSrcReal points to the real input vector
   * @param[out]  *pCmplxDst points to the complex output vector
   * @param[in]  numSamples number of samples in each vector
   * @return none.
   */

  void arm_cmplx_mult_real_q31(
  q31_t * pSrcCmplx,
  q31_t * pSrcReal,
  q31_t * pCmplxDst,
  uint32_t numSamples);

  /**
   * @brief  Floating-point complex-by-real multiplication
   * @param[in]  *pSrcCmplx points to the complex input vector
   * @param[in]  *pSrcReal points to the real input vector
   * @param[out]  *pCmplxDst points to the complex output vector
   * @param[in]  numSamples number of samples in each vector
   * @return none.
   */

  void arm_cmplx_mult_real_f32(
  float32_t * pSrcCmplx,
  float32_t * pSrcReal,
  float32_t * pCmplxDst,
  uint32_t numSamples);

  /**
   * @brief  Minimum value of a Q7 vector.
   * @param[in]  *pSrc is input pointer
   * @param[in]  blockSize is the number of samples to process
   * @param[out]  *result is output pointer
   * @param[in]  index is the array index of the minimum value in the input buffer.
   * @return none.
   */

  void arm_min_q7(
  q7_t * pSrc,
  uint32_t blockSize,
  q7_t * result,
  uint32_t * index);

  /**
   * @brief  Minimum value of a Q15 vector.
   * @param[in]  *pSrc is input pointer
   * @param[in]  blockSize is the number of samples to process
   * @param[out]  *pResult is output pointer
   * @param[in]  *pIndex is the array index of the minimum value in the input buffer.
   * @return none.
   */

  void arm_min_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult,
  uint32_t * pIndex);

  /**
   * @brief  Minimum value of a Q31 vector.
   * @param[in]  *pSrc is input pointer
   * @param[in]  blockSize is the number of samples to process
   * @param[out]  *pResult is output pointer
   * @param[out]  *pIndex is the array index of the minimum value in the input buffer.
   * @return none.
   */
  void arm_min_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult,
  uint32_t * pIndex);

  /**
   * @brief  Minimum value of a floating-point vector.
   * @param[in]  *pSrc is input pointer
   * @param[in]  blockSize is the number of samples to process
   * @param[out]  *pResult is output pointer
   * @param[out]  *pIndex is the array index of the minimum value in the input buffer.
   * @return none.
   */

  void arm_min_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult,
  uint32_t * pIndex);

/**
 * @brief Maximum value of a Q7 vector.
 * @param[in]       *pSrc points to the input buffer
 * @param[in]       blockSize length of the input vector
 * @param[out]      *pResult maximum value returned here
 * @param[out]      *pIndex index of maximum value returned here
 * @return none.
 */

  void arm_max_q7(
  q7_t * pSrc,
  uint32_t blockSize,
  q7_t * pResult,
  uint32_t * pIndex);

/**
 * @brief Maximum value of a Q15 vector.
 * @param[in]       *pSrc points to the input buffer
 * @param[in]       blockSize length of the input vector
 * @param[out]      *pResult maximum value returned here
 * @param[out]      *pIndex index of maximum value returned here
 * @return none.
 */

  void arm_max_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult,
  uint32_t * pIndex);

/**
 * @brief Maximum value of a Q31 vector.
 * @param[in]       *pSrc points to the input buffer
 * @param[in]       blockSize length of the input vector
 * @param[out]      *pResult maximum value returned here
 * @param[out]      *pIndex index of maximum value returned here
 * @return none.
 */

  void arm_max_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult,
  uint32_t * pIndex);

/**
 * @brief Maximum value of a floating-point vector.
 * @param[in]       *pSrc points to the input buffer
 * @param[in]       blockSize length of the input vector
 * @param[out]      *pResult maximum value returned here
 * @param[out]      *pIndex index of maximum value returned here
 * @return none.
 */

  void arm_max_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult,
  uint32_t * pIndex);

  /**
   * @brief  Q15 complex-by-complex multiplication
   * @param[in]  *pSrcA points to the first input vector
   * @param[in]  *pSrcB points to the second input vector
   * @param[out]  *pDst  points to the output vector
   * @param[in]  numSamples number of complex samples in each vector
   * @return none.
   */

  void arm_cmplx_mult_cmplx_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  q15_t * pDst,
  uint32_t numSamples);

  /**
   * @brief  Q31 complex-by-complex multiplication
   * @param[in]  *pSrcA points to the first input vector
   * @param[in]  *pSrcB points to the second input vector
   * @param[out]  *pDst  points to the output vector
   * @param[in]  numSamples number of complex samples in each vector
   * @return none.
   */

  void arm_cmplx_mult_cmplx_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  q31_t * pDst,
  uint32_t numSamples);

  /**
   * @brief  Floating-point complex-by-complex multiplication
   * @param[in]  *pSrcA points to the first input vector
   * @param[in]  *pSrcB points to the second input vector
   * @param[out]  *pDst  points to the output vector
   * @param[in]  numSamples number of complex samples in each vector
   * @return none.
   */

  void arm_cmplx_mult_cmplx_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  float32_t * pDst,
  uint32_t numSamples);

  /**
   * @brief Converts the elements of the floating-point vector to Q31 vector.
   * @param[in]       *pSrc points to the floating-point input vector
   * @param[out]      *pDst points to the Q31 output vector
   * @param[in]       blockSize length of the input vector
   * @return none.
   */
  void arm_float_to_q31(
  float32_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Converts the elements of the floating-point vector to Q15 vector.
   * @param[in]       *pSrc points to the floating-point input vector
   * @param[out]      *pDst points to the Q15 output vector
   * @param[in]       blockSize length of the input vector
   * @return          none
   */
  void arm_float_to_q15(
  float32_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  /**
   * @brief Converts the elements of the floating-point vector to Q7 vector.
   * @param[in]       *pSrc points to the floating-point input vector
   * @param[out]      *pDst points to the Q7 output vector
   * @param[in]       blockSize length of the input vector
   * @return          none
   */
  void arm_float_to_q7(
  float32_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);


  /**
   * @brief  Converts the elements of the Q31 vector to Q15 vector.
   * @param[in]  *pSrc is input pointer
   * @param[out]  *pDst is output pointer
   * @param[in]  blockSize is the number of samples to process
   * @return none.
   */
  void arm_q31_to_q15(
  q31_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  /**
   * @brief  Converts the elements of the Q31 vector to Q7 vector.
   * @param[in]  *pSrc is input pointer
   * @param[out]  *pDst is output pointer
   * @param[in]  blockSize is the number of samples to process
   * @return none.
   */
  void arm_q31_to_q7(
  q31_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);

  /**
   * @brief  Converts the elements of the Q15 vector to floating-point vector.
   * @param[in]  *pSrc is input pointer
   * @param[out]  *pDst is output pointer
   * @param[in]  blockSize is the number of samples to process
   * @return none.
   */
  void arm_q15_to_float(
  q15_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  /**
   * @brief  Converts the elements of the Q15 vector to Q31 vector.
   * @param[in]  *pSrc is input pointer
   * @param[out]  *pDst is output pointer
   * @param[in]  blockSize is the number of samples to process
   * @return none.
   */
  void arm_q15_to_q31(
  q15_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  /**
   * @brief  Converts the elements of the Q15 vector to Q7 vector.
   * @param[in]  *pSrc is input pointer
   * @param[out]  *pDst is output pointer
   * @param[in]  blockSize is the number of samples to process
   * @return none.
   */
  void arm_q15_to_q7(
  q15_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);


  /**
   * @ingroup groupInterpolation
   */

  /**
   * @defgroup BilinearInterpolate Bilinear Interpolation
   *
   * Bilinear interpolation is an extension of linear interpolation applied to a two dimensional grid.
   * The underlying function <code>f(x, y)</code> is sampled on a regular grid and the interpolation process
   * determines values between the grid points.
   * Bilinear interpolation is equivalent to two step linear interpolation, first in the x-dimension and then in the y-dimension.
   * Bilinear interpolation is often used in image processing to rescale images.
   * The CMSIS DSP library provides bilinear interpolation functions for Q7, Q15, Q31, and floating-point data types.
   *
   * <b>Algorithm</b>
   * \par
   * The instance structure used by the bilinear interpolation functions describes a two dimensional data table.
   * For floating-point, the instance structure is defined as:
   * <pre>
   *   typedef struct
   *   {
   *     uint16_t numRows;
   *     uint16_t numCols;
   *     float32_t *pData;
   * } arm_bilinear_interp_instance_f32;
   * </pre>
   *
   * \par
   * where <code>numRows</code> specifies the number of rows in the table;
   * <code>numCols</code> specifies the number of columns in the table;
   * and <code>pData</code> points to an array of size <code>numRows*numCols</code> values.
   * The data table <code>pTable</code> is organized in row order and the supplied data values fall on integer indexes.
   * That is, table element (x,y) is located at <code>pTable[x + y*numCols]</code> where x and y are integers.
   *
   * \par
   * Let <code>(x, y)</code> specify the desired interpolation point.  Then define:
   * <pre>
   *     XF = floor(x)
   *     YF = floor(y)
   * </pre>
   * \par
   * The interpolated output point is computed as:
   * <pre>
   *  f(x, y) = f(XF, YF) * (1-(x-XF)) * (1-(y-YF))
   *           + f(XF+1, YF) * (x-XF)*(1-(y-YF))
   *           + f(XF, YF+1) * (1-(x-XF))*(y-YF)
   *           + f(XF+1, YF+1) * (x-XF)*(y-YF)
   * </pre>
   * Note that the coordinates (x, y) contain integer and fractional components.
   * The integer components specify which portion of the table to use while the
   * fractional components control the interpolation processor.
   *
   * \par
   * if (x,y) are outside of the table boundary, Bilinear interpolation returns zero output.
   */

  /**
   * @addtogroup BilinearInterpolate
   * @{
   */

  /**
  *
  * @brief  Floating-point bilinear interpolation.
  * @param[in,out] *S points to an instance of the interpolation structure.
  * @param[in] X interpolation coordinate.
  * @param[in] Y interpolation coordinate.
  * @return out interpolated value.
  */


  static inline float32_t arm_bilinear_interp_f32(
  const arm_bilinear_interp_instance_f32 * S,
  float32_t X,
  float32_t Y)
  {
    float32_t out;
    float32_t f00, f01, f10, f11;
    float32_t *pData = S->pData;
    int32_t xIndex, yIndex, index;
    float32_t xdiff, ydiff;
    float32_t b1, b2, b3, b4;

    xIndex = (int32_t) X;
    yIndex = (int32_t) Y;

    /* Care taken for table outside boundary */
    /* Returns zero output when values are outside table boundary */
    if(xIndex < 0 || xIndex > (S->numRows - 1) || yIndex < 0
       || yIndex > (S->numCols - 1))
    {
      return (0);
    }

    /* Calculation of index for two nearest points in X-direction */
    index = (xIndex - 1) + (yIndex - 1) * S->numCols;


    /* Read two nearest points in X-direction */
    f00 = pData[index];
    f01 = pData[index + 1];

    /* Calculation of index for two nearest points in Y-direction */
    index = (xIndex - 1) + (yIndex) * S->numCols;


    /* Read two nearest points in Y-direction */
    f10 = pData[index];
    f11 = pData[index + 1];

    /* Calculation of intermediate values */
    b1 = f00;
    b2 = f01 - f00;
    b3 = f10 - f00;
    b4 = f00 - f01 - f10 + f11;

    /* Calculation of fractional part in X */
    xdiff = X - xIndex;

    /* Calculation of fractional part in Y */
    ydiff = Y - yIndex;

    /* Calculation of bi-linear interpolated output */
    out = b1 + b2 * xdiff + b3 * ydiff + b4 * xdiff * ydiff;

    /* return to application */
    return (out);

  }

  /**
  *
  * @brief  Q31 bilinear interpolation.
  * @param[in,out] *S points to an instance of the interpolation structure.
  * @param[in] X interpolation coordinate in 12.20 format.
  * @param[in] Y interpolation coordinate in 12.20 format.
  * @return out interpolated value.
  */

  static inline q31_t arm_bilinear_interp_q31(
  arm_bilinear_interp_instance_q31 * S,
  q31_t X,
  q31_t Y)
  {
    q31_t out;                                   /* Temporary output */
    q31_t acc = 0;                               /* output */
    q31_t xfract, yfract;                        /* X, Y fractional parts */
    q31_t x1, x2, y1, y2;                        /* Nearest output values */
    int32_t rI, cI;                              /* Row and column indices */
    q31_t *pYData = S->pData;                    /* pointer to output table values */
    uint32_t nCols = S->numCols;                 /* num of rows */


    /* Input is in 12.20 format */
    /* 12 bits for the table index */
    /* Index value calculation */
    rI = ((X & 0xFFF00000) >> 20u);

    /* Input is in 12.20 format */
    /* 12 bits for the table index */
    /* Index value calculation */
    cI = ((Y & 0xFFF00000) >> 20u);

    /* Care taken for table outside boundary */
    /* Returns zero output when values are outside table boundary */
    if(rI < 0 || rI > (S->numRows - 1) || cI < 0 || cI > (S->numCols - 1))
    {
      return (0);
    }

    /* 20 bits for the fractional part */
    /* shift left xfract by 11 to keep 1.31 format */
    xfract = (X & 0x000FFFFF) << 11u;

    /* Read two nearest output values from the index */
    x1 = pYData[(rI) + nCols * (cI)];
    x2 = pYData[(rI) + nCols * (cI) + 1u];

    /* 20 bits for the fractional part */
    /* shift left yfract by 11 to keep 1.31 format */
    yfract = (Y & 0x000FFFFF) << 11u;

    /* Read two nearest output values from the index */
    y1 = pYData[(rI) + nCols * (cI + 1)];
    y2 = pYData[(rI) + nCols * (cI + 1) + 1u];

    /* Calculation of x1 * (1-xfract ) * (1-yfract) and acc is in 3.29(q29) format */
    out = ((q31_t) (((q63_t) x1 * (0x7FFFFFFF - xfract)) >> 32));
    acc = ((q31_t) (((q63_t) out * (0x7FFFFFFF - yfract)) >> 32));

    /* x2 * (xfract) * (1-yfract)  in 3.29(q29) and adding to acc */
    out = ((q31_t) ((q63_t) x2 * (0x7FFFFFFF - yfract) >> 32));
    acc += ((q31_t) ((q63_t) out * (xfract) >> 32));

    /* y1 * (1 - xfract) * (yfract)  in 3.29(q29) and adding to acc */
    out = ((q31_t) ((q63_t) y1 * (0x7FFFFFFF - xfract) >> 32));
    acc += ((q31_t) ((q63_t) out * (yfract) >> 32));

    /* y2 * (xfract) * (yfract)  in 3.29(q29) and adding to acc */
    out = ((q31_t) ((q63_t) y2 * (xfract) >> 32));
    acc += ((q31_t) ((q63_t) out * (yfract) >> 32));

    /* Convert acc to 1.31(q31) format */
    return (acc << 2u);

  }

  /**
  * @brief  Q15 bilinear interpolation.
  * @param[in,out] *S points to an instance of the interpolation structure.
  * @param[in] X interpolation coordinate in 12.20 format.
  * @param[in] Y interpolation coordinate in 12.20 format.
  * @return out interpolated value.
  */

  static inline q15_t arm_bilinear_interp_q15(
  arm_bilinear_interp_instance_q15 * S,
  q31_t X,
  q31_t Y)
  {
    q63_t acc = 0;                               /* output */
    q31_t out;                                   /* Temporary output */
    q15_t x1, x2, y1, y2;                        /* Nearest output values */
    q31_t xfract, yfract;                        /* X, Y fractional parts */
    int32_t rI, cI;                              /* Row and column indices */
    q15_t *pYData = S->pData;                    /* pointer to output table values */
    uint32_t nCols = S->numCols;                 /* num of rows */

    /* Input is in 12.20 format */
    /* 12 bits for the table index */
    /* Index value calculation */
    rI = ((X & 0xFFF00000) >> 20);

    /* Input is in 12.20 format */
    /* 12 bits for the table index */
    /* Index value calculation */
    cI = ((Y & 0xFFF00000) >> 20);

    /* Care taken for table outside boundary */
    /* Returns zero output when values are outside table boundary */
    if(rI < 0 || rI > (S->numRows - 1) || cI < 0 || cI > (S->numCols - 1))
    {
      return (0);
    }

    /* 20 bits for the fractional part */
    /* xfract should be in 12.20 format */
    xfract = (X & 0x000FFFFF);

    /* Read two nearest output values from the index */
    x1 = pYData[(rI) + nCols * (cI)];
    x2 = pYData[(rI) + nCols * (cI) + 1u];


    /* 20 bits for the fractional part */
    /* yfract should be in 12.20 format */
    yfract = (Y & 0x000FFFFF);

    /* Read two nearest output values from the index */
    y1 = pYData[(rI) + nCols * (cI + 1)];
    y2 = pYData[(rI) + nCols * (cI + 1) + 1u];

    /* Calculation of x1 * (1-xfract ) * (1-yfract) and acc is in 13.51 format */

    /* x1 is in 1.15(q15), xfract in 12.20 format and out is in 13.35 format */
    /* convert 13.35 to 13.31 by right shifting  and out is in 1.31 */
    out = (q31_t) (((q63_t) x1 * (0xFFFFF - xfract)) >> 4u);
    acc = ((q63_t) out * (0xFFFFF - yfract));

    /* x2 * (xfract) * (1-yfract)  in 1.51 and adding to acc */
    out = (q31_t) (((q63_t) x2 * (0xFFFFF - yfract)) >> 4u);
    acc += ((q63_t) out * (xfract));

    /* y1 * (1 - xfract) * (yfract)  in 1.51 and adding to acc */
    out = (q31_t) (((q63_t) y1 * (0xFFFFF - xfract)) >> 4u);
    acc += ((q63_t) out * (yfract));

    /* y2 * (xfract) * (yfract)  in 1.51 and adding to acc */
    out = (q31_t) (((q63_t) y2 * (xfract)) >> 4u);
    acc += ((q63_t) out * (yfract));

    /* acc is in 13.51 format and down shift acc by 36 times */
    /* Convert out to 1.15 format */
    return (acc >> 36);

  }

  /**
  * @brief  Q7 bilinear interpolation.
  * @param[in,out] *S points to an instance of the interpolation structure.
  * @param[in] X interpolation coordinate in 12.20 format.
  * @param[in] Y interpolation coordinate in 12.20 format.
  * @return out interpolated value.
  */

  static inline q7_t arm_bilinear_interp_q7(
  arm_bilinear_interp_instance_q7 * S,
  q31_t X,
  q31_t Y)
  {
    q63_t acc = 0;                               /* output */
    q31_t out;                                   /* Temporary output */
    q31_t xfract, yfract;                        /* X, Y fractional parts */
    q7_t x1, x2, y1, y2;                         /* Nearest output values */
    int32_t rI, cI;                              /* Row and column indices */
    q7_t *pYData = S->pData;                     /* pointer to output table values */
    uint32_t nCols = S->numCols;                 /* num of rows */

    /* Input is in 12.20 format */
    /* 12 bits for the table index */
    /* Index value calculation */
    rI = ((X & 0xFFF00000) >> 20);

    /* Input is in 12.20 format */
    /* 12 bits for the table index */
    /* Index value calculation */
    cI = ((Y & 0xFFF00000) >> 20);

    /* Care taken for table outside boundary */
    /* Returns zero output when values are outside table boundary */
    if(rI < 0 || rI > (S->numRows - 1) || cI < 0 || cI > (S->numCols - 1))
    {
      return (0);
    }

    /* 20 bits for the fractional part */
    /* xfract should be in 12.20 format */
    xfract = (X & 0x000FFFFF);

    /* Read two nearest output values from the index */
    x1 = pYData[(rI) + nCols * (cI)];
    x2 = pYData[(rI) + nCols * (cI) + 1u];


    /* 20 bits for the fractional part */
    /* yfract should be in 12.20 format */
    yfract = (Y & 0x000FFFFF);

    /* Read two nearest output values from the index */
    y1 = pYData[(rI) + nCols * (cI + 1)];
    y2 = pYData[(rI) + nCols * (cI + 1) + 1u];

    /* Calculation of x1 * (1-xfract ) * (1-yfract) and acc is in 16.47 format */
    out = ((x1 * (0xFFFFF - xfract)));
    acc = (((q63_t) out * (0xFFFFF - yfract)));

    /* x2 * (xfract) * (1-yfract)  in 2.22 and adding to acc */
    out = ((x2 * (0xFFFFF - yfract)));
    acc += (((q63_t) out * (xfract)));

    /* y1 * (1 - xfract) * (yfract)  in 2.22 and adding to acc */
    out = ((y1 * (0xFFFFF - xfract)));
    acc += (((q63_t) out * (yfract)));

    /* y2 * (xfract) * (yfract)  in 2.22 and adding to acc */
    out = ((y2 * (yfract)));
    acc += (((q63_t) out * (xfract)));

    /* acc in 16.47 format and down shift by 40 to convert to 1.7 format */
    return (acc >> 40);

  }

  /**
   * @} end of BilinearInterpolate group
   */


#line 7308 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\arm_math.h"
 //SMMLA



 //SMMLS



//SMMUL



//Enter low optimization region - place directly above function definition



//Exit low optimization region - place directly after end of function definition


//Enter low optimization region - place directly above function definition



//Exit low optimization region - place directly after end of function definition


#line 7374 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\arm_math.h"













/**
 *
 * End of file.
 */
#line 47 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\arm_const_structs.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\arm_common_tables.h"
/* ----------------------------------------------------------------------
* Copyright (C) 2010-2014 ARM Limited. All rights reserved.
*
* $Date:        12. March 2014
* $Revision: 	V1.4.3
*
* Project: 	    CMSIS DSP Library
* Title:	    arm_common_tables.h
*
* Description:	This file has extern declaration for common tables like Bitreverse, reciprocal etc which are used across different functions
*
* Target Processor: Cortex-M4/Cortex-M3
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions
* are met:
*   - Redistributions of source code must retain the above copyright
*     notice, this list of conditions and the following disclaimer.
*   - Redistributions in binary form must reproduce the above copyright
*     notice, this list of conditions and the following disclaimer in
*     the documentation and/or other materials provided with the
*     distribution.
*   - Neither the name of ARM LIMITED nor the names of its contributors
*     may be used to endorse or promote products derived from this
*     software without specific prior written permission.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
* "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
* LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
* FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
* COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
* INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
* BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
* LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
* CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
* LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
* ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
* POSSIBILITY OF SUCH DAMAGE.
* -------------------------------------------------------------------- */






extern const uint16_t armBitRevTable[1024];
extern const q15_t armRecipTableQ15[64];
extern const q31_t armRecipTableQ31[64];
extern const q31_t realCoefAQ31[1024];
extern const q31_t realCoefBQ31[1024];
extern const float32_t twiddleCoef_16[32];
extern const float32_t twiddleCoef_32[64];
extern const float32_t twiddleCoef_64[128];
extern const float32_t twiddleCoef_128[256];
extern const float32_t twiddleCoef_256[512];
extern const float32_t twiddleCoef_512[1024];
extern const float32_t twiddleCoef_1024[2048];
extern const float32_t twiddleCoef_2048[4096];
extern const float32_t twiddleCoef_4096[8192];

extern const q31_t twiddleCoefQ31[6144];
extern const q15_t twiddleCoefQ15[6144];
extern const float32_t twiddleCoef_rfft_32[32];
extern const float32_t twiddleCoef_rfft_64[64];
extern const float32_t twiddleCoef_rfft_128[128];
extern const float32_t twiddleCoef_rfft_256[256];
extern const float32_t twiddleCoef_rfft_512[512];
extern const float32_t twiddleCoef_rfft_1024[1024];
extern const float32_t twiddleCoef_rfft_2048[2048];
extern const float32_t twiddleCoef_rfft_4096[4096];


#line 82 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\arm_common_tables.h"

extern const uint16_t armBitRevIndexTable16[((uint16_t)20 )];
extern const uint16_t armBitRevIndexTable32[((uint16_t)48 )];
extern const uint16_t armBitRevIndexTable64[((uint16_t)56 )];
extern const uint16_t armBitRevIndexTable128[((uint16_t)208 )];
extern const uint16_t armBitRevIndexTable256[((uint16_t)440 )];
extern const uint16_t armBitRevIndexTable512[((uint16_t)448 )];
extern const uint16_t armBitRevIndexTable1024[((uint16_t)1800)];
extern const uint16_t armBitRevIndexTable2048[((uint16_t)3808)];
extern const uint16_t armBitRevIndexTable4096[((uint16_t)4032)];

/* Tables for Fast Math Sine and Cosine */
extern const float32_t sinTable_f32[512 + 1];
extern const q31_t sinTable_q31[512 + 1];
extern const q15_t sinTable_q15[512 + 1];

#line 48 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\arm_const_structs.h"

   extern const arm_cfft_instance_f32 arm_cfft_sR_f32_len16;
   extern const arm_cfft_instance_f32 arm_cfft_sR_f32_len32;
   extern const arm_cfft_instance_f32 arm_cfft_sR_f32_len64;
   extern const arm_cfft_instance_f32 arm_cfft_sR_f32_len128;
   extern const arm_cfft_instance_f32 arm_cfft_sR_f32_len256;
   extern const arm_cfft_instance_f32 arm_cfft_sR_f32_len512;
   extern const arm_cfft_instance_f32 arm_cfft_sR_f32_len1024;
   extern const arm_cfft_instance_f32 arm_cfft_sR_f32_len2048;
   extern const arm_cfft_instance_f32 arm_cfft_sR_f32_len4096;

#line 48 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\chlib_k.h"










#line 17 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\App\\Module_CAN\\Module_Can.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\App\\Module_Protocol\\Module_Protocol.h"
/**
  ******************************************************************************
  * @file    Module_Protocol.h
  * @author  Donatello
  * @version V1.0
  * @date    2015.9.16
  * @brief
  ******************************************************************************
  */
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\App\\Module_CAN\\Module_Can.h"
/**
  ******************************************************************************
  * @file    Module_Can.h
  * @author  Donatello
  * @version V1.0
  * @date    2015.9.15
  * @brief
  ******************************************************************************
  */
#line 16 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\App\\Module_Protocol\\Module_Protocol.h"



/* Exported valable -------------------------------------------------------- */

typedef struct
{
	uint8_t		address;//桩号
	uint8_t		pile_state;//桩状态
	uint16_t    pile_price;//电价
	long long int	user_id;//用户id
	uint8_t		pay_amount;//消费金额
	uint8_t		pay_power;//消费电量
	uint32_t	ID_card_balance;//卡内金额

}PROTOCOL, *PPROTOCOL;


struct VOL {
    uint8_t Balance_Flag;//平衡
    uint8_t Over_voltage_Flag;//过压
	uint8_t under_voltage_Flag;//欠压
    uint16_t Voltage;
};

struct CUR {
    uint16_t Currents;//上传大于30000为放电，小于30000为充电，30000是静止状态
};

struct SOC {
    uint16_t SOC;
};

struct CAP {
    uint16_t Capacity;
};

struct TEM {
	uint8_t O_under_TEMP;//放欠温
	uint8_t O_Over_TEMP;//放过温
	uint8_t I_under_TEMP;//充欠温
	uint8_t I_Over_TEMP;//充过温
    uint16_t Temperature;
};
/*
Data0:
BIT0: (保留)
BIT1: (保留)
BIT2: (保留)
BIT3: (保留)
BIT4: (保留)
BIT5: 充MOS损坏
BIT6: 放MOS损坏
BIT7: 电压采样元件损坏
Data1:
BIT0: 温度传感器断线
BIT1: 电流采样元件损坏
BIT2: 充电器反接
BIT3: (保留)
BIT4: (保留)
BIT5: (保留)
BIT6: (保留)
BIT7: (保留)
Data2:
Bit0: 放电过温保护
Bit1: 放电欠温保护
Bit2: (保留)
Bit3: (保留)
Bit4: (保留)
Bit5: (保留)
Bit6: (保留)
Bit7: (保留)
Data3:
Bit0: 充电状态
Bit1: 放电状态
Bit2: 短路保护
Bit3: 过流保护返回值
Bit4: 过压保护
Bit5: 欠压保护
Bit6: 充电过温保护
Bit7: 充电欠温保护
Data4…Data7：(保留)
Data8:
Bit0: 环境过温告警
Bit1: 环境欠温告警
Bit2: PCB过温告警
Bit3: 容量过低告警
Bit4: 压差过大告警
Bit5: 保留
Bit6: 保留
Bit7: 保留
Data9:
Bit0: 单体过压告警
Bit1: 单体欠压告警
Bit2: 总体过压告警
Bit3: 总体欠压告警
Bit4: 充过流告警
Bit5: 放过流告警
Bit6: 电池过温告警
Bit7: 电池欠温告警
*/
struct WAR {
	/* Data0 */
	uint8_t I_mos;                  // 5 充MOS损坏
	uint8_t O_mos;                  // 6 放MOS损坏
	uint8_t Voltage_sensor;         // 7 电压采样元件损坏

	/* Data1 */
	uint8_t TEMP_Sen;               // 0 温度传感器断线
	uint8_t current_Sen;            // 1 电流采样元件损坏
	uint8_t charger_reverse;        // 2 充电器反接
	
	/* Data2 */
	uint8_t O_over_TEMP_PTT;        // 0 放电过温保护
	uint8_t O_under_TEMP_PTT;         // 1 放电欠温保护
	
	/* Data3 */
	uint8_t charge_state;           // 0 充电状态
	uint8_t discharge_state;        // 1 放电状态
	uint8_t short_circuit_PTT;      // 2 短路保护protection->ptt
	uint8_t overcurrent_PTT_return; // 3 过流保护返回值
	uint8_t over_voltage_PTT;       // 4 过压保护
	uint8_t under_voltage_PTT;        // 5 欠压保护
	uint8_t I_over_TEMP_PTT;        // 6 充电过温保护
	uint8_t I_under_TEMP_PTT;         // 7 充电欠温保护

	/* Data8 */
	uint8_t ENV_over_TEMP_ALM;      // 0 环境过温告警
	uint8_t ENV_under_TEMP_ALM;		// 1 环境欠温告警
	uint8_t PCB_over_TEMP_ALM;      // 2 PCB过温告警
	uint8_t capacity_too_under_ALM;   // 3 容量过低告警
	uint8_t differential_pressure;  // 4 压差过大告警

	/* Data9 */
	uint8_t one_over_voltage_ALM;   // 0 单体过压告警
	uint8_t one_under_voltage_ALM;    // 1 单体欠压告警
	uint8_t all_over_voltage_ALM;   // 2 总体过压告警
	uint8_t all_under_voltage_ALM;    // 3 总体欠压告警
	uint8_t I_over_current_ALM;     // 4 充过流告警
	uint8_t O_over_current_ALM;     // 5 放过流告警
	uint8_t Bat_over_TEMP_ALM;      // 6 电池过温告警
	uint8_t Bat_under_TEMP_ALM;       // 7 电池欠温告警
	uint16_t Warning;
};

#pragma pack(1)
struct BMS {
    struct VOL Voltage[16];         //电压
    uint16_t Voltage_All;
    struct CUR Currents;            //电流
    struct SOC Soc;
    struct CAP Capacity;            //容量
    struct TEM Temperature[10];     //温度
	uint16_t TEMP;
	struct WAR Warning;             //警告
};


/* Public functions ---------------------------------------------------------*/

void UART_TX_ISR(uint16_t * byteToSend);

void UART_RX_ISR(uint16_t byteReceived);

void CheckPack_True_win(void);

void CheckPack_Ding_Chong(void);

void CheckPack_Bms(void);

void UardDmaFlow(void);

void CheckPack_Tccharger(void);



/* private functions---------------------------------------------------------*/


#line 18 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\App\\Module_CAN\\Module_Can.h"


/* Exported valable -------------------------------------------------------- */
//#define CAN_TX_ID  0x02


//��׮ͨѶ�Ĺ�����
typedef enum
{
    CTRL_pile_open      = 0x01,//��׮
	CTRL_pile_close     = 0x02,//�ر�׮
    READ_pile_info      = 0x03,//׮��Ϣ
	READ_card_info      = 0x04,//����Ϣ
	READ_consume_info   = 0x05,//������Ϣ
	READ_balance_info   = 0x06,//�����Ϣ
    READ_time           = 0x07,//ʱ����Ϣ
	READ_VC				= 0x08,//Voltage_Currents
	READ_Capacity_TEMP	= 0x09,//����_�¶�
	READ_BATcore_state	= 0x0A,//��о״̬
    WRITE_pile_info     = 0x11,
    WRITE_price_info    = 0x12,
    WRITE_time          = 0x13
}Pile_Function_Type;

struct Tccharger{
    uint8_t Max_voltage_H;
    uint8_t Max_voltage_L;
    uint8_t Max_currents_H;
    uint8_t Max_currents_L;
    uint8_t open_control;
}; 
/* Public functions ---------------------------------------------------------*/
void CAN_ISR(void);

void Pile_Send(uint32_t pile_addr, uint8_t send_type);

void Init_Timer_Cnt(void);

void Pcak_Pile_State(void);

void Pcak_Pile_State_All(void);
/* private functions---------------------------------------------------------*/


#line 11 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\App\\Module_CAN\\Module_Can.c"



extern _Bool		Pile_State_Open;
extern _Bool		Pile_State_Close;
extern _Bool		Pile_State_Wait_Flag;
extern _Bool		Pile_State_Open_Flag;
extern _Bool		Pile_State_Close_Flag;
extern uint16_t	Pile_State_Flag;
extern uint8_t		Can1_Buf[8];
extern uint8_t		Can1_Buf_Flag[2];
extern uint8_t		Pcak_Pile_State_All_Flag;
extern _Bool		Can1_Rev_Flag;
extern	uint8_t		Only_ID[12];


extern	uint16_t	Stitic_Time_Cnt;

extern OS_EVENT *key;																	//事件控制块 指针
extern OS_EVENT * msg_test;                                                            //按键邮箱事件块指针
extern OS_EVENT * sem_test;                                                            //蜂鸣器信号量指针

extern PROTOCOL pile_info[5];
USART_CtrolBlock uart = {0};

/*******************************************************************************
  * @函数名称		CAN_ISR
  * @函数说明		CAN通信测试,
                    使用CAN1模块的3号邮箱采用中断的方式接收来自0x56的数据
                    使用2号邮箱向0x10地址的设备发生数据，时间间隔是500毫秒
                    CAN通信 中断回调函数，在中断中处理接收到的数据
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void CAN_ISR(void)
{
//#if OS_CRITICAL_METHOD == 3
//	OS_CPU_SR cpu_sr;
//#endif
	//OS_ENTER_CRITICAL();
	uint8_t len;
	uint32_t id;
	if(CAN_ReadData((0x01U), 3, &id, Can1_Buf, &len) == 0)
	{

		static uint32_t cnt;
		printf("DataReceived:%d   ", cnt++);
		while(len--)
		{
			printf("0x%02X ", Can1_Buf[(7-len)]);
		}
		printf("\r\n");

	}
	Can1_Rev_Flag = 1;
	CheckPack_Ding_Chong();
	Pcak_Pile_State();
	//OS_EXIT_CRITICAL();
}

/*******************************************************************************
  * @函数名称		Pcak_Pile_State_All
  * @函数说明		检查桩的所有的状态：功能码04、05、06
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void Pcak_Pile_State_All(void)
{
	Pile_Send(0x01,READ_pile_info);
	OSTimeDlyHMSM(0, 0, 0, 220);

	Pile_Send(0x01,READ_card_info);
	OSTimeDlyHMSM(0, 0, 0, 220);

	Pile_Send(0x01,READ_consume_info);
	OSTimeDlyHMSM(0, 0, 0, 220);

	Pile_Send(0x01,READ_balance_info);
	OSTimeDlyHMSM(0, 0, 0, 220);

	//static uint8_t String[] = "全部查询结束\r\n";
	//UART_DMASendByte(DMA_SEND_CH, String, sizeof(String));
}

/*******************************************************************************
  * @函数名称		Pile_Send
  * @函数说明		桩查询,
                    使用2号邮箱向0x01地址的设备发生数据，时间间隔是500毫秒
                    CAN通信 中断回调函数，在中断中处理接收到的数据
  * @输入参数		pile_addr:桩地址、send_type:发送类型
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void Pile_Send(uint32_t pile_addr, uint8_t send_type)
{

	uint8_t send_buf[8];
	switch(send_type)
	{
		case CTRL_pile_open:
			{
				uint8_t pile_open[8]	= {0x01, 0x02, 0x00, 0x00, 0x00, 0xff, 0x00, 0xFC};/* 打开桩 */
				pile_open[0] = pile_addr;
				pile_open[7] = crcCheck(7,pile_open);
				memcpy(send_buf,pile_open,8);
				break;
			}
		case CTRL_pile_close:
			{
				uint8_t pile_close[8]	= {0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0xff, 0xFC};/* 关闭桩 */
				pile_close[0] = pile_addr;
				pile_close[7] = crcCheck(7,pile_close);
				memcpy(send_buf,pile_close,8);
				break;
			}
		case READ_pile_info:
			{
				uint8_t pile_info[8]	= {0x01, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02};/* 桩信息 */
				pile_info[0] = pile_addr;
				pile_info[7] = crcCheck(7,pile_info);
				memcpy(send_buf,pile_info,8);
				break;
			}
		case READ_card_info:
			{
				uint8_t card_info[8] 	= {0x01, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05};/* 卡信息 */
				card_info[0] = pile_addr;
				card_info[7] = crcCheck(7,card_info);
				memcpy(send_buf,card_info,8);
				break;
			}
		case READ_consume_info:
			{
				uint8_t consume_info[8] = {0x01, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04};/* 消费信息 */
				consume_info[0] = pile_addr;
				consume_info[7] = crcCheck(7,consume_info);
				memcpy(send_buf,consume_info,8);
				break;
			}
		case READ_balance_info:
			{
				uint8_t balance_info[8]	= {0x01, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07};/* 余额信息 */
				balance_info[0] = pile_addr;
				balance_info[7] = crcCheck(7,balance_info);
				memcpy(send_buf,balance_info,8);
				break;
			}
		case READ_time:
			{
				uint8_t time_info[8]	= {0x01, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07};/* 时间信息 */
				time_info[0] = pile_addr;
				time_info[7] = crcCheck(7,time_info);
				memcpy(send_buf,time_info,8);
				break;
			}
		case WRITE_pile_info:
			{
				break;
			}
		case WRITE_price_info:
			{
				break;
			}
		case WRITE_time:
			{
				break;
			}
	};

	CAN_WriteData((0x01U), 2, pile_addr, send_buf, 8);
	//DelayMs(500);
}

/*******************************************************************************
  * @函数名称		Pile_Send_Tcchager
  * @函数说明		Tccharger
  * @输入参数		pile_addr:桩地址、Max_voltage:最大电压、Max_currents:最大电流、flag:0开启输出、1关闭输出
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void Pile_Send_Tcchager(uint32_t pile_addr, uint16_t Max_voltage, uint16_t Max_currents, uint8_t flag)
{
    struct Tccharger Tc = {0};
    
    Tc.Max_voltage_H    = ((Max_voltage>>8)&0xff);
    Tc.Max_voltage_L    = (Max_voltage&0xff);
    Tc.Max_currents_H   = ((Max_currents>>8)&0xff);
    Tc.Max_currents_L   = (Max_currents&0xff);
    Tc.open_control     = flag;
    
	uint8_t send_buf[8] = {0};
    /* 把要发送的数据对应到发送缓存区上 */
    send_buf[0] = Tc.Max_voltage_H;
    send_buf[1] = Tc.Max_voltage_L;
    send_buf[2] = Tc.Max_currents_H;
    send_buf[3] = Tc.Max_currents_L;
    send_buf[4] = Tc.open_control;


    CAN_WriteData((0x01U), 2, pile_addr, send_buf, 8);
    //DelayMs(500);
}


/*******************************************************************************
 * @函数名称		Pcak_Pile_State
 * @函数说明		检查桩的开关状态
 * @输入参数		无
 * @输出参数		无
 * @返回参数		无
 *******************************************************************************/
void Pcak_Pile_State(void)
{

	OS_CPU_SR cpu_sr;

	{cpu_sr = OS_CPU_SR_Save();};
	static uint8_t String[50] = {0};
	static uint8_t ID_Num[12] = {0};
	if(Pile_State_Open)
	{
		if(pile_info[0].user_id|pile_info[1].user_id|pile_info[2].user_id|pile_info[3].user_id)
		{
			if(Pile_State_Open_Flag)
			{
				//static uint8_t String[] = "开始充电\r\n";
				//2A 2A 54 57 00 01 00 0C 00 14
				//31 33 38 31 32 33 34 31 32 33 34 00 00 00 00 00 00 00 00 00
				//0D 00 2D
				uint8_t For_temp = 0;
				uint16_t For_temp_1 = 0;
				uint16_t ID_Num_Len = 0;
				uint16_t Zero_Fill_Len;

				uint8_t *ptr = String;
				*ptr++ = 0x2A;
				*ptr++ = 0x2A;
				*ptr++ = 0x54;
				*ptr++ = 0x57;
				/* 唯一ID */
				for(For_temp=0 ;For_temp<12;For_temp++)
				{
					*ptr++ = Only_ID[For_temp];
				}
				*ptr++ = 0x00;
				for(For_temp=0; For_temp<5;For_temp++)
				{
					if(pile_info[For_temp].pile_state == 0x01)
					{
						*ptr++ = pile_info[For_temp].address;
						*ptr++ = 0x00;
						*ptr++ = 0x0C;
						*ptr++ = 0x00;
						*ptr++ = 0x14;
						for(For_temp=0;For_temp_1<11;For_temp_1++)
						{
							if((pile_info[For_temp].user_id % 10)>=0)
							{
								ID_Num[For_temp_1] = pile_info[For_temp].user_id%10+0x30;
								ID_Num_Len++;
							}

							if((pile_info[For_temp].user_id /= 10)<=0)
							{
								break;
							}
						}
						Zero_Fill_Len = 11 - ID_Num_Len;
						//补ASCII零
						for(For_temp_1=0;For_temp_1<Zero_Fill_Len;For_temp_1++)
						{
							*ptr++ = 0x30;
						}
						//ID的顺序位正序
						for(;ID_Num_Len>0;ID_Num_Len--)
						{
							*ptr++ = ID_Num[ID_Num_Len-1];
						}
						//补零
						Zero_Fill_Len = 9;
						for(For_temp_1=0;For_temp_1<Zero_Fill_Len;For_temp_1++)
						{
							*ptr++ = 0x00;
						}
						*ptr++ = 0x0D;//包尾
						*ptr++ = 0x00;//包尾
						*ptr++ = crcCheck(45-1, String);
						uart.TxdPackLength = 45;
						UART_DMASendByte((0x00), String, uart.TxdPackLength);
					}
				}
				Pile_State_Wait_Flag = 1;
				Pile_State_Open_Flag = 0;
			}
		}
	}

	if(Pile_State_Close)
	{
		if(pile_info[0].user_id|pile_info[1].user_id|pile_info[2].user_id|pile_info[3].user_id)
		{
			if(Pile_State_Close_Flag)
			{
				if(Pile_State_Flag==2)
				{
					static uint8_t String1[] = "待机中！！！\r\n";
					UART_DMASendByte((0x00), String, sizeof(String));
				}
				else
				{
					//static uint8_t String[] = "结束充电\r\n";

					uint16_t For_temp = 0;
					uint16_t For_temp_1 = 0;
					uint16_t ID_Num_Len = 0;
					uint16_t Zero_Fill_Len;

					uint8_t *ptr = String;
					*ptr++ = 0x2A;
					*ptr++ = 0x2A;
					*ptr++ = 0x54;
					*ptr++ = 0x57;
					/* 唯一ID */
					for(For_temp=0; For_temp<12;For_temp++)
					{
						*ptr++ = Only_ID[For_temp];
					}
					*ptr++ = 0x00;
					for(For_temp=0;For_temp<5;For_temp++)
					{
						if(pile_info[For_temp].user_id)
						{
							*ptr++ = pile_info[For_temp].address;
							*ptr++ = 0x00;
							*ptr++ = 0x0D;
							*ptr++ = 0x00;
							*ptr++ = 0x14;
							for(;For_temp_1<11;For_temp_1++)
							{
								if((pile_info[For_temp].user_id % 10)>=0)
								{
									ID_Num[For_temp_1] = pile_info[For_temp].user_id%10+0x30;
									ID_Num_Len++;
								}

								if((pile_info[For_temp].user_id /= 10)<=0)
								{
									break;
								}
							}
							Zero_Fill_Len = 11 - ID_Num_Len;
							//补ASCII零
							for(For_temp_1=0;For_temp_1<Zero_Fill_Len;For_temp_1++)
							{
								*ptr++ = 0x30;
							}
							//ID的顺序位正序
							for(;ID_Num_Len>0;ID_Num_Len--)
							{
								*ptr++ = ID_Num[ID_Num_Len-1];
							}
							//补零
							Zero_Fill_Len = 9;
							for(For_temp_1=0;For_temp_1<Zero_Fill_Len;For_temp_1++)
							{
								*ptr++ = 0x00;
							}
							String[22] = pile_info[For_temp].pay_power;
							*ptr++ = 0x0D;//包尾
							*ptr++ = 0x00;//包尾
							*ptr++ = crcCheck(45-1, String);
							memset(&pile_info[For_temp],0,(sizeof(PROTOCOL)));
						}
					}
					uart.TxdPackLength = 45;
					UART_DMASendByte((0x00), String, uart.TxdPackLength);
					Pile_State_Wait_Flag = 1;
				}
				Pile_State_Close_Flag = 0;
			}
		}
	}
	{OS_CPU_SR_Restore(cpu_sr);};
}





