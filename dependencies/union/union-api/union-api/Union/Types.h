#pragma once
#ifndef __UNION_TYPES_H__
#define __UNION_TYPES_H__

#define null nullptr
#define _in_ const
#define _out_
#define _ref_
#define _import_ __declspec(dllimport)
#define _export_ __declspec(dllexport)
#define _export_c_ extern "C" __declspec(dllexport)
#define check_flag(value, flag) ((value & flag) == flag)

#ifdef _UNION_API_DLL
  #ifdef _UNION_API_BUILD
    #define UNION_API _export_
  #else
    #define UNION_API _import_
  #endif
#else
  #define UNION_API
#endif

namespace Union {
  typedef unsigned char uchar, byte;
  typedef unsigned short ushort, word;
  typedef unsigned int uint;
  typedef unsigned long ulong;
  typedef unsigned long long uint64;
  typedef long long int64;
  typedef wchar_t wchar;
  typedef float single;
}
#endif // __UNION_TYPES_H__