#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\App\\Module_IAP\\Module_Updata.c"
/**
  ******************************************************************************
  * @file    Module_Updata.c
  * @author  Donatello
  * @version V1.0
  * @date    2015.10.16
  * @brief
  ******************************************************************************
  */
/*
*********************************************************************************************************
*                                             INCLUDE FILES
*********************************************************************************************************
*/
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\App\\Module_IAP\\Module_Updata.h"



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












#line 5 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\App\\Module_IAP\\Module_Updata.h"

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





#line 15 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\inc\\rtc.h"

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

#line 7 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\App\\Module_IAP\\Module_Updata.h"

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




#line 9 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\App\\Module_IAP\\Module_Updata.h"

/*********************************************************/


/*********************************************************/












/*********************************************************/
typedef struct
{
  uint32_t	IAP_ProgAddr;
  uint32_t	IAP_ProgAddrEnd;
  uint32_t	NextProgAddr;
  uint32_t	NewProgData;
  uint16_t	CurFramID;
  uint16_t	LastFramID;															//��һ��֡��֡��
  uint8_t	UpdataStep;
}UpdataProgCtrlBlock;

/*********************************************************/
typedef struct
{
  uint8_t	DeviceId[6];														//6�ֽڲ�Ʒ����,��121010250001,Ӳ���汾1.2,��������10��10��25��,������������0001
  uint8_t	CPU_ID[12];															//96λCPU��ID,���Ե�MAC��ַʹ��,��0x1FFFF7E8��ʼ��IDһ��
  uint8_t	CRY_Code[6];														//���ȱ���
}Str_DEVICE_ID;
//
///*********************************************************/
//typedef struct
//{
//  uint8_t	PackHead[3];															//��ͷ
//  uint8_t	GPRS_ID[6];																//ID
//  uint8_t	Command;																//������
//  uint16_t	DataLen;															//���ݳ���
//  uint8_t	DataFile;																//������
//	//...
//}_STR_GPRS_PROTOCOL_HEAD;
//
///*********************************************************/
//uint16_t	DealUpdataCode_Data(uint8_t *buf, uint8_t *ack_buf, uint16_t len);
//void    InitUpdataParam(void);
//


///*********************************************************/

/* Exported valable -------------------------------------------------------- */

/* Public functions ---------------------------------------------------------*/

void InitUpdataParam(void);

/* private functions---------------------------------------------------------*/

#line 16 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\App\\Module_IAP\\Module_Updata.c"

uint8_t PM_Ver[20] = {0};

uint16_t	pack_id, fram_flag,  fram_type, fram_len;

uint8_t	*AckBuf;

uint16_t	SendDataLen;

UpdataProgCtrlBlock	UpdataProg = {0};

Str_DEVICE_ID	Product_ID = {0};
/*********************************************************/
uint8_t	*Memory_Copy(uint8_t *load_pt, uint8_t *stor_pt, uint16_t len)
{
	uint16_t	i;
	for (i=0; i<len; i++)
	{
		*(stor_pt++) = *(load_pt++);
	}
	return ((uint8_t *)stor_pt);
}
/*********************************************************/
uint8_t *SearchChar(uint8_t *string,  uint8_t get_char, uint16_t len)
{
	while (len != 0)
	{
		if (*string == get_char) return(string);
		string++;
		len--;
	}
	return (0);
}
/*********************************************************/
uint8_t	GetAddSum(uint8_t *buf, int16_t len)
{
	uint8_t	sum=0;
	for ( ; len!=0; len--)
	{
		sum += *(buf++);
	}
	return (sum);
}
/*******************************************************************************
  * @函数名称		InitUpdataParam
  * @函数说明		引导最新的应用程序
  * @输入参数		NVIC_SetVectorTable(NVIC_VectTab_FLASH, 0x8000);
                    SCB->VTOR =  = PROG_BASE_ADDR_1;//为了配合Bootlaoder程序，更改中断向量表起始地址
  * @输出参数		无
  * @返回参数		是否成功
*******************************************************************************/
void InitUpdataParam(void)
{
	uint8_t *uchar_pt;

    uint8_t i;
	//Product_ID.DeviceId[5] = LED_TS_ModbusData.RS485_Addr;
#line 89 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\App\\Module_IAP\\Module_Updata.c"
    *(int32_t*)0xE000ED08 = 0x00000000;
	UpdataProg.IAP_ProgAddr = 0x00000000;
	uchar_pt = (uint8_t *)(0x00000000+7*4);// 烧写文件的版本信息
	uchar_pt += 3;


	for (i=0; i<4; i++)
	{
		PM_Ver[i] = *uchar_pt;
		uchar_pt--;
	}
	uchar_pt += 8;
	for (i=4; i<8; i++)
	{
		PM_Ver[i] = *uchar_pt;
		uchar_pt--;
	}
}






























/*********************************************************/
uint8_t *MakeFramHead(uint8_t *buf)
{
	*(buf++) = '#';	//
	*(buf++) = 'T';
	*(buf++) = 'D';
	Memory_Copy((uint8_t *)(&Product_ID.DeviceId[0]), buf, 6);
	return (buf+6);
}
/*********************************************************/
void AckFramToServer(uint8_t cmd)
{
	uint8_t	*buf;
	buf = MakeFramHead(AckBuf);
	*(buf++) = cmd ;
	*(buf++) = 0x00;
	*(buf++) = 0x05;
	*(buf++) = (uint8_t)(pack_id>>8);
	*(buf++) = (uint8_t)(pack_id>>0);
	*(buf++) = PM_Ver[0];
	*(buf++) = (uint8_t)(fram_flag>>8);
	*(buf++) = (uint8_t)(fram_flag>>0);
	*(buf++) = GetAddSum(AckBuf+3, 9+5);
	*(buf++) = 0x0D;
	SendDataLen = (uint16_t)(buf - AckBuf);
}
/*********************************************************/
void	GetGPRS_PhyID(void)
{
	uint8_t	*buf;
	uint32_t	id[3];
	buf = MakeFramHead(AckBuf);
	*(buf++) = 0x01;
	*(buf++) = 0x00;
	*(buf++) = 0x14;
	buf = Memory_Copy((uint8_t *)(&PM_Ver), buf, 8);
	CPUIDY_GetUID((uint32_t *)(&id));
	buf = Memory_Copy((uint8_t *)(&id), buf, 12);
	*(buf++) = GetAddSum(AckBuf+3, 29);
	*(buf++) = 0x0D;
	SendDataLen = (uint16_t)(buf - AckBuf);
}
/*********************************************************/
void	UpdataProgInit(void)
{
	uint8_t	*buf;
	uint32_t	erase_addr, run_addr;
	if ((uint32_t)(&UpdataProgInit) < 0x00020000UL)	//现在是在第1块，则要擦除第2块
	{
		UpdataProg.IAP_ProgAddr = 0x00020000UL;
		run_addr = 0x00010000UL;
	}
	else
	{
		UpdataProg.IAP_ProgAddr = 0x00010000UL;
		run_addr = 0x00020000UL;
	}
	erase_addr = UpdataProg.IAP_ProgAddr;
	UpdataProg.IAP_ProgAddrEnd = erase_addr + (0x00020000UL - 0x00010000UL);

	while (erase_addr< UpdataProg.IAP_ProgAddrEnd)
	{
		FlashErasePage(erase_addr);
		erase_addr += 1024;	//stm32f103
	}
	UpdataProg.CurFramID = 0;
	UpdataProg.LastFramID = 0;
	UpdataProg.UpdataStep = 1;

	buf = MakeFramHead(AckBuf);
	*(buf++) = 0x02;
	*(buf++) = 0x00;
	*(buf++) = 0x04;
	*(buf++) = (uint8_t)(run_addr>>24);
	*(buf++) = (uint8_t)(run_addr>>16);
	*(buf++) = (uint8_t)(run_addr>>8);
	*(buf++) = (uint8_t)(run_addr>>0);
	*(buf++) = GetAddSum(AckBuf+3, 13);
	*(buf++) = 0x0D;

	SendDataLen = (uint16_t)(buf - AckBuf);
}
/*********************************************************/
void	AckServerPackErr(uint8_t err_tpye)		//应答服务器数据包错误
{
	uint8_t	*buf;
	buf = MakeFramHead(AckBuf);
	*(buf++) = 0x83;
	*(buf++) = 0x00;
	*(buf++) = 0x06;
	*(buf++) = (uint8_t)(pack_id>>8);
	*(buf++) = (uint8_t)(pack_id>>0);
	*(buf++) = PM_Ver[0];
	*(buf++) = (uint8_t)(fram_flag>>8);
	*(buf++) = (uint8_t)(fram_flag>>0);
	*(buf++) = err_tpye;
	*(buf++) = GetAddSum(AckBuf+3, 9+6);
	*(buf++) = 0x0D;

	SendDataLen = (uint16_t)(buf - AckBuf);
}
/*********************************************************/
void ResetCPU(void)
{
	uint8_t	*buf;
	uint16_t cunt = 30000;
	buf = MakeFramHead(AckBuf);
	*(buf++) = 0x04;
	*(buf++) = 0x00;
	*(buf++) = 0x00;
	*(buf++) = GetAddSum(AckBuf+3, 9);
	*(buf++) = 0x0D;
	SendDataLen = (uint16_t)(buf - AckBuf);
	//STM_USARTCB.TxdPackLength = SendDataLen;
	//DMA_UartTxd();
	while(cunt--);
	NVIC_SystemReset();
}
/*********************************************************/
void SetUpdataProgFlag(void)
{
	uint32_t	updata_cnt, new_cnt_addr, cur_cnt_addr;
	//标志有效1到FFFFFFFE
	if (UpdataProg.IAP_ProgAddr == 0x00010000UL)
	{
		new_cnt_addr = (0x00010000UL+7*4) + 12;
		cur_cnt_addr = (0x00020000UL+7*4) + 12;
	}
	else
	{
		new_cnt_addr = (0x00020000UL+7*4) + 12;
		cur_cnt_addr = (0x00010000UL+7*4) + 12;
	}

	updata_cnt = *(uint32_t *)(cur_cnt_addr);
	if (updata_cnt==0xFFFFFFFE)	//最大了
	{
		updata_cnt = 1;
	}
	else
	{
		updata_cnt++;
	}
	IAP_Flash_Char(new_cnt_addr, (uint8_t *)(&updata_cnt), 4);
	if (updata_cnt==1)
	{
		updata_cnt = 0;
		IAP_Flash_Char(cur_cnt_addr, (uint8_t *)(&updata_cnt), 4);
	}
}
/*********************************************************/
uint16_t	DealUpdataCode_Data(uint8_t *buf, uint8_t *ack_buf, uint16_t len)
{
	uint8_t	sum, hard_ver;
	//	uchar	ret;
	uint8_t	*tp, *buf_bak=(uint8_t *)buf;
	uint16_t	len_bak=len;
	uint32_t	new_soft_ver, new_hard_ver, new_ver_sum;
	static uint32_t	flash_addr;

GET_PACK_HEAD:
	if (len>1536)	return(0);
	if (len<10)					return(0);
	buf = SearchChar(buf, '#', len);
	len = len_bak - ((uint32_t)buf - (uint32_t)buf_bak);	//剩余包的长度
	if (buf==0)
	{
		return (0);	//没找到，结束
	}
	if (*(buf+1) != 'T')	//不是#*
	{
		buf += 1;
		len -= 1;
		goto	GET_PACK_HEAD;
	}
	if (*(buf+2) != 'D')	//不是#*+
	{
		buf += 2;
		len -= 2;
		goto	GET_PACK_HEAD;
	}
	len = len_bak - ((uint32_t)buf - (uint32_t)buf_bak);	//剩余包的长度
	buf_bak = (uint8_t *)buf;
	if (*(buf_bak+len-1) != 0x0D)
	//if (buf_bak[len-1] != TW_PACK_END)
	{
		return (0);
	}
	AckBuf = ack_buf;
	SendDataLen = 0;

	//	ret = CompString((uchar *)(&Product_ID.DeviceId[0]), buf+3, 6);
	//	ret |= CompString((uchar *)(&BroadcastPhyID), buf+3, 6);
	//	if (ret==0)	return (0);		//ID不匹配，也不是广播ID
	if (buf_bak[3+5] != Product_ID.DeviceId[5]) return (0);
	sum = GetAddSum(buf+3, len-5);
	if (sum != *(buf_bak+len-2))
	{
		AckServerPackErr(0x01);
		return (SendDataLen);
	}
	switch (*(buf_bak+9))
	{
	case 0x01:	GetGPRS_PhyID();		break;
	case 0x02:	UpdataProgInit();		break;
	case 0x03:	goto DealServerData;											//服务器发送数据 升级
	case 0x04:	ResetCPU();				break;
	default:							break;
	}
	return (SendDataLen);
DealServerData:
	fram_len = *(buf_bak+10);
	fram_len = fram_len<<8;
	fram_len += *(buf_bak+11);
	fram_len -= 5;

	pack_id = *(buf_bak+12);
	pack_id = pack_id<<8;
	pack_id += *(buf_bak+13);

	hard_ver = *(buf_bak+14);
	if (hard_ver != PM_Ver[0])
	{
		AckServerPackErr(0x03);	//包无法处理，
		return (1);
	}

	fram_flag = *(buf_bak+15);
	fram_flag = fram_flag<<8;
	fram_flag += *(buf_bak+16);

	fram_type = (fram_flag>>14)&0x03;

	UpdataProg.LastFramID = UpdataProg.CurFramID;
	UpdataProg.CurFramID   = fram_flag & 0x3FFF;		//帧号

	switch (fram_type)
	{
	case 0x00: 	//单帧包，
		AckServerPackErr(0x03);	//包无法处理，
		break;
	case 0x01: 	//多帧包起始
		if ((UpdataProg.UpdataStep != 1) && (UpdataProg.UpdataStep != 2))   //第一步没有
		{
			AckServerPackErr(0x03);	//包无法处理，
			break;
		}
		tp = buf_bak+7*4+17;
		new_hard_ver =  (uint32_t)(*(tp++))<<0;
		new_hard_ver +=  (uint32_t)(*(tp++))<<8;
		new_hard_ver +=  (uint32_t)(*(tp++))<<16;
		hard_ver = *(tp++);
		new_hard_ver +=  (uint32_t)(hard_ver)<<24;
		if (hard_ver != PM_Ver[0])	//新文件的硬件版本不对
		{
			AckServerPackErr(0x03);	//包无法处理，
			break;
		}
		new_soft_ver =  (uint32_t)(*(tp++))<<0;
		new_soft_ver +=  (uint32_t)(*(tp++))<<8;
		new_soft_ver +=  (uint32_t)(*(tp++))<<16;
		new_soft_ver +=  (uint32_t)(*(tp++))<<24;
		new_ver_sum =  (uint32_t)(*(tp++))<<0;
		new_ver_sum +=  (uint32_t)(*(tp++))<<8;
		new_ver_sum +=  (uint32_t)(*(tp++))<<16;
		new_ver_sum +=  (uint32_t)(*(tp++))<<24;
		if ((new_ver_sum!=(new_hard_ver+new_soft_ver)) || (new_ver_sum==0) )   //文件版本校验和不对
		{
			AckServerPackErr(0x03);	//包无法处理，
			break;
		}
		UpdataProg.UpdataStep = 2;
		flash_addr = UpdataProg.IAP_ProgAddr;
		IAP_Flash_Char(flash_addr, buf_bak+17, 7*4+12);
		IAP_Flash_Char(flash_addr+7*4+16, buf_bak+7*4+17+16, fram_len-7*4-16);	//写剩余的
		AckFramToServer(0x03);
		break;
	case 0x02: 	//多帧包中继
		if ((UpdataProg.UpdataStep != 2) && (UpdataProg.UpdataStep != 3))   //第2步没有
		{
			AckServerPackErr(0x03);	//包无法处理，
			break;
		}
		UpdataProg.UpdataStep = 3;

		if ((UpdataProg.CurFramID != UpdataProg.LastFramID) && (UpdataProg.CurFramID != (UpdataProg.LastFramID+1)))
		{   //当前帧不是重发的，也不是之前帧的下一帧，有跳过，，不对啦
			AckServerPackErr(0x03);	//包无法处理，
			UpdataProg.UpdataStep = 0;
			break;
		}
		flash_addr = UpdataProg.IAP_ProgAddr + (uint32_t)(UpdataProg.CurFramID-1)*fram_len;
		if ((flash_addr+fram_len)<UpdataProg.IAP_ProgAddrEnd)
		{
			IAP_Flash_Char(flash_addr, buf_bak+17, fram_len);
			flash_addr += fram_len;
			AckFramToServer(0x03);
		}
		else
		{
			AckServerPackErr(0x03);	//包无法处理，
		}
		break;
	case 0x03: 	//多帧包结束
		if ((UpdataProg.UpdataStep != 3) && (UpdataProg.UpdataStep != 4))   //第3步没有
		{
			AckServerPackErr(0x03);	//包无法处理，
			UpdataProg.UpdataStep = 0;
			break;
		}
		UpdataProg.UpdataStep = 4;
		//	flash_addr = UpdataProg.IAP_ProgAddr + (uint32)(UpdataProg.CurFramID-1)*fram_len;
		//最后一帧，以上一帧后的结束地址为地址
		if ((flash_addr+fram_len)<UpdataProg.IAP_ProgAddrEnd)
		{
			IAP_Flash_Char(flash_addr, buf_bak+17, fram_len);
			SetUpdataProgFlag();
			AckFramToServer(0x03);
		}
		else
		{
			AckServerPackErr(0x03);	//包无法处理，
		}
		break;
	default:
		break;
	}
	return (SendDataLen);
}
/*********************************************************/


/*********************************************************/