.class public Lcom/googlecode/javacv/cpp/avutil;
.super Ljava/lang/Object;
.source "avutil.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Properties;
    value = {
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            cinclude = {
                "<libavutil/avutil.h>",
                "<libavutil/audioconvert.h>",
                "<libavutil/cpu.h>",
                "<libavutil/dict.h>",
                "<libavutil/opt.h>",
                "<libavutil/samplefmt.h>",
                "<libavutil/imgutils.h>"
            }
            define = {
                "__STDC_CONSTANT_MACROS"
            }
            includepath = {
                "/usr/local/include/ffmpeg/:/usr/local/include/:/opt/local/include/ffmpeg/:/opt/local/include/:/usr/include/ffmpeg/"
            }
            link = {
                "avutil@.52"
            }
            linkpath = {
                "/usr/local/lib/:/usr/local/lib64/:/opt/local/lib/:/opt/local/lib64/"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            includepath = {
                "C:/MinGW/local/include/ffmpeg/;C:/MinGW/include/ffmpeg/;C:/MinGW/local/include/;src/main/resources/com/googlecode/javacv/cpp/"
            }
            linkpath = {
                "C:/MinGW/local/lib/;C:/MinGW/lib/"
            }
            preload = {
                "avutil-52"
            }
            preloadpath = {
                "C:/MinGW/local/bin/;C:/MinGW/bin/"
            }
            value = {
                "windows"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            includepath = {
                "../include/"
            }
            linkpath = {
                "../lib/"
            }
            value = {
                "android"
            }
        .end subannotation
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/avutil$AVOptionRanges;,
        Lcom/googlecode/javacv/cpp/avutil$AVOptionRange;,
        Lcom/googlecode/javacv/cpp/avutil$AVOption;,
        Lcom/googlecode/javacv/cpp/avutil$AVDictionary;,
        Lcom/googlecode/javacv/cpp/avutil$AVDictionaryEntry;,
        Lcom/googlecode/javacv/cpp/avutil$AVBPrint;,
        Lcom/googlecode/javacv/cpp/avutil$LogCallback;,
        Lcom/googlecode/javacv/cpp/avutil$AVClass;,
        Lcom/googlecode/javacv/cpp/avutil$AVRational;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final AVERROR_BSF_NOT_FOUND:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_BUFFER_TOO_SMALL:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_BUG:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_BUG2:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_DECODER_NOT_FOUND:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_DEMUXER_NOT_FOUND:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_ENCODER_NOT_FOUND:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_EOF:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_EXIT:I = 0x0

.field public static final AVERROR_EXPERIMENTAL:I = -0x2bb2afa8

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_EXTERNAL:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_FILTER_NOT_FOUND:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_INVALIDDATA:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_MUXER_NOT_FOUND:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_OPTION_NOT_FOUND:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_PATCHWELCOME:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_PROTOCOL_NOT_FOUND:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_STREAM_NOT_FOUND:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_UNKNOWN:I = 0x0

.field public static final AVMEDIA_TYPE_ATTACHMENT:I = 0x4

.field public static final AVMEDIA_TYPE_AUDIO:I = 0x1

.field public static final AVMEDIA_TYPE_DATA:I = 0x2

.field public static final AVMEDIA_TYPE_NB:I = 0x5

.field public static final AVMEDIA_TYPE_SUBTITLE:I = 0x3

.field public static final AVMEDIA_TYPE_UNKNOWN:I = -0x1

.field public static final AVMEDIA_TYPE_VIDEO:I = 0x0

.field public static final AVPALETTE_COUNT:I = 0x100

.field public static final AVPALETTE_SIZE:I = 0x400

.field public static final AV_CH_BACK_CENTER:I = 0x100

.field public static final AV_CH_BACK_LEFT:I = 0x10

.field public static final AV_CH_BACK_RIGHT:I = 0x20

.field public static final AV_CH_FRONT_CENTER:I = 0x4

.field public static final AV_CH_FRONT_LEFT:I = 0x1

.field public static final AV_CH_FRONT_LEFT_OF_CENTER:I = 0x40

.field public static final AV_CH_FRONT_RIGHT:I = 0x2

.field public static final AV_CH_FRONT_RIGHT_OF_CENTER:I = 0x80

.field public static final AV_CH_LAYOUT_2POINT1:I = 0xb

.field public static final AV_CH_LAYOUT_2_1:I = 0x103

.field public static final AV_CH_LAYOUT_2_2:I = 0x603

.field public static final AV_CH_LAYOUT_3POINT1:I = 0xf

.field public static final AV_CH_LAYOUT_4POINT0:I = 0x107

.field public static final AV_CH_LAYOUT_4POINT1:I = 0x10f

.field public static final AV_CH_LAYOUT_5POINT0:I = 0x607

.field public static final AV_CH_LAYOUT_5POINT0_BACK:I = 0x37

.field public static final AV_CH_LAYOUT_5POINT1:I = 0x60f

.field public static final AV_CH_LAYOUT_5POINT1_BACK:I = 0x3f

.field public static final AV_CH_LAYOUT_6POINT0:I = 0x707

.field public static final AV_CH_LAYOUT_6POINT0_FRONT:I = 0x6c3

.field public static final AV_CH_LAYOUT_6POINT1:I = 0x70f

.field public static final AV_CH_LAYOUT_6POINT1_BACK:I = 0x13f

.field public static final AV_CH_LAYOUT_6POINT1_FRONT:I = 0x6cb

.field public static final AV_CH_LAYOUT_7POINT0:I = 0x637

.field public static final AV_CH_LAYOUT_7POINT0_FRONT:I = 0x6c7

.field public static final AV_CH_LAYOUT_7POINT1:I = 0x63f

.field public static final AV_CH_LAYOUT_7POINT1_WIDE:I = 0x6cf

.field public static final AV_CH_LAYOUT_7POINT1_WIDE_BACK:I = 0xff

.field public static final AV_CH_LAYOUT_HEXAGONAL:I = 0x137

.field public static final AV_CH_LAYOUT_MONO:I = 0x4

.field public static final AV_CH_LAYOUT_NATIVE:J = -0x8000000000000000L

.field public static final AV_CH_LAYOUT_OCTAGONAL:I = 0x737

.field public static final AV_CH_LAYOUT_QUAD:I = 0x33

.field public static final AV_CH_LAYOUT_STEREO:I = 0x3

.field public static final AV_CH_LAYOUT_STEREO_DOWNMIX:I = 0x60000000

.field public static final AV_CH_LAYOUT_SURROUND:I = 0x7

.field public static final AV_CH_LOW_FREQUENCY:I = 0x8

.field public static final AV_CH_SIDE_LEFT:I = 0x200

.field public static final AV_CH_SIDE_RIGHT:I = 0x400

.field public static final AV_CH_STEREO_LEFT:I = 0x20000000

.field public static final AV_CH_STEREO_RIGHT:I = 0x40000000

.field public static final AV_CH_SURROUND_DIRECT_LEFT:J = 0x200000000L

.field public static final AV_CH_SURROUND_DIRECT_RIGHT:J = 0x400000000L

.field public static final AV_CH_TOP_BACK_CENTER:I = 0x10000

.field public static final AV_CH_TOP_BACK_LEFT:I = 0x8000

.field public static final AV_CH_TOP_BACK_RIGHT:I = 0x20000

.field public static final AV_CH_TOP_CENTER:I = 0x800

.field public static final AV_CH_TOP_FRONT_CENTER:I = 0x2000

.field public static final AV_CH_TOP_FRONT_LEFT:I = 0x1000

.field public static final AV_CH_TOP_FRONT_RIGHT:I = 0x4000

.field public static final AV_CH_WIDE_LEFT:J = 0x80000000L

.field public static final AV_CH_WIDE_RIGHT:J = 0x100000000L

.field public static final AV_CLASS_CATEGORY_BITSTREAM_FILTER:I = 0x8

.field public static final AV_CLASS_CATEGORY_DECODER:I = 0x6

.field public static final AV_CLASS_CATEGORY_DEMUXER:I = 0x4

.field public static final AV_CLASS_CATEGORY_ENCODER:I = 0x5

.field public static final AV_CLASS_CATEGORY_FILTER:I = 0x7

.field public static final AV_CLASS_CATEGORY_INPUT:I = 0x1

.field public static final AV_CLASS_CATEGORY_MUXER:I = 0x3

.field public static final AV_CLASS_CATEGORY_NA:I = 0x0

.field public static final AV_CLASS_CATEGORY_OUTPUT:I = 0x2

.field public static final AV_CLASS_CATEGORY_SWRESAMPLER:I = 0xa

.field public static final AV_CLASS_CATEGORY_SWSCALER:I = 0x9

.field public static final AV_CPU_FLAG_3DNOW:I = 0x4

.field public static final AV_CPU_FLAG_3DNOWEXT:I = 0x20

.field public static final AV_CPU_FLAG_ALTIVEC:I = 0x1

.field public static final AV_CPU_FLAG_ARMV5TE:I = 0x1

.field public static final AV_CPU_FLAG_ARMV6:I = 0x2

.field public static final AV_CPU_FLAG_ARMV6T2:I = 0x4

.field public static final AV_CPU_FLAG_ATOM:I = 0x10000000

.field public static final AV_CPU_FLAG_AVX:I = 0x4000

.field public static final AV_CPU_FLAG_CMOV:I = 0x1000

.field public static final AV_CPU_FLAG_FMA4:I = 0x800

.field public static final AV_CPU_FLAG_FORCE:I = -0x80000000

.field public static final AV_CPU_FLAG_MMX:I = 0x1

.field public static final AV_CPU_FLAG_MMXEXT:I = 0x2

.field public static final AV_CPU_FLAG_NEON:I = 0x20

.field public static final AV_CPU_FLAG_SSE:I = 0x8

.field public static final AV_CPU_FLAG_SSE2:I = 0x10

.field public static final AV_CPU_FLAG_SSE2SLOW:I = 0x40000000

.field public static final AV_CPU_FLAG_SSE3:I = 0x40

.field public static final AV_CPU_FLAG_SSE3SLOW:I = 0x20000000

.field public static final AV_CPU_FLAG_SSE4:I = 0x100

.field public static final AV_CPU_FLAG_SSE42:I = 0x200

.field public static final AV_CPU_FLAG_SSSE3:I = 0x80

.field public static final AV_CPU_FLAG_VFP:I = 0x8

.field public static final AV_CPU_FLAG_VFPV3:I = 0x10

.field public static final AV_CPU_FLAG_XOP:I = 0x400

.field public static final AV_DICT_APPEND:I = 0x20

.field public static final AV_DICT_DONT_OVERWRITE:I = 0x10

.field public static final AV_DICT_DONT_STRDUP_KEY:I = 0x4

.field public static final AV_DICT_DONT_STRDUP_VAL:I = 0x8

.field public static final AV_DICT_IGNORE_SUFFIX:I = 0x2

.field public static final AV_DICT_MATCH_CASE:I = 0x1

.field public static final AV_ERROR_MAX_STRING_SIZE:I = 0x40

.field public static final AV_LOG_DEBUG:I = 0x30

.field public static final AV_LOG_ERROR:I = 0x10

.field public static final AV_LOG_FATAL:I = 0x8

.field public static final AV_LOG_INFO:I = 0x20

.field public static final AV_LOG_MAX_OFFSET:I = 0x38

.field public static final AV_LOG_PANIC:I = 0x0

.field public static final AV_LOG_QUIET:I = -0x8

.field public static final AV_LOG_SKIP_REPEATED:I = 0x1

.field public static final AV_LOG_VERBOSE:I = 0x28

.field public static final AV_LOG_WARNING:I = 0x18

.field public static final AV_MATRIX_ENCODING_DOLBY:I = 0x1

.field public static final AV_MATRIX_ENCODING_DPLII:I = 0x2

.field public static final AV_MATRIX_ENCODING_NB:I = 0x3

.field public static final AV_MATRIX_ENCODING_NONE:I = 0x0

.field public static final AV_NOPTS_VALUE:J = -0x8000000000000000L

.field public static final AV_OPT_FLAG_IMPLICIT_KEY:I = 0x1

.field public static final AV_OPT_SEARCH_CHILDREN:I = 0x1

.field public static final AV_OPT_SEARCH_FAKE_OBJ:I = 0x2

.field public static final AV_OPT_TYPE_BINARY:I = 0x7

.field public static final AV_OPT_TYPE_CONST:I = 0x80

.field public static final AV_OPT_TYPE_DOUBLE:I = 0x3

.field public static final AV_OPT_TYPE_FLAGS:I = 0x0

.field public static final AV_OPT_TYPE_FLOAT:I = 0x4

#the value of this static final field might be set in the static constructor
.field public static final AV_OPT_TYPE_IMAGE_SIZE:I = 0x0

.field public static final AV_OPT_TYPE_INT:I = 0x1

.field public static final AV_OPT_TYPE_INT64:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final AV_OPT_TYPE_PIXEL_FMT:I = 0x0

.field public static final AV_OPT_TYPE_RATIONAL:I = 0x6

#the value of this static final field might be set in the static constructor
.field public static final AV_OPT_TYPE_SAMPLE_FMT:I = 0x0

.field public static final AV_OPT_TYPE_STRING:I = 0x5

.field public static final AV_PICTURE_TYPE_B:I = 0x4

.field public static final AV_PICTURE_TYPE_BI:I = 0x8

.field public static final AV_PICTURE_TYPE_I:I = 0x2

.field public static final AV_PICTURE_TYPE_NONE:I = 0x0

.field public static final AV_PICTURE_TYPE_P:I = 0x3

.field public static final AV_PICTURE_TYPE_S:I = 0x5

.field public static final AV_PICTURE_TYPE_SI:I = 0x6

.field public static final AV_PICTURE_TYPE_SP:I = 0x7

.field public static final AV_PIX_FMT_0BGR:I = 0x129

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_0BGR32:I = 0x0

.field public static final AV_PIX_FMT_0RGB:I = 0x127

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_0RGB32:I = 0x0

.field public static final AV_PIX_FMT_ABGR:I = 0x1d

.field public static final AV_PIX_FMT_ARGB:I = 0x1b

.field public static final AV_PIX_FMT_BGR0:I = 0x12a

.field public static final AV_PIX_FMT_BGR24:I = 0x3

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_BGR32:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_BGR32_1:I = 0x0

.field public static final AV_PIX_FMT_BGR4:I = 0x14

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_BGR444:I = 0x0

.field public static final AV_PIX_FMT_BGR444BE:I = 0x41

.field public static final AV_PIX_FMT_BGR444LE:I = 0x40

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_BGR48:I = 0x0

.field public static final AV_PIX_FMT_BGR48BE:I = 0x43

.field public static final AV_PIX_FMT_BGR48LE:I = 0x44

.field public static final AV_PIX_FMT_BGR4_BYTE:I = 0x15

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_BGR555:I = 0x0

.field public static final AV_PIX_FMT_BGR555BE:I = 0x31

.field public static final AV_PIX_FMT_BGR555LE:I = 0x32

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_BGR565:I = 0x0

.field public static final AV_PIX_FMT_BGR565BE:I = 0x2f

.field public static final AV_PIX_FMT_BGR565LE:I = 0x30

.field public static final AV_PIX_FMT_BGR8:I = 0x13

.field public static final AV_PIX_FMT_BGRA:I = 0x1e

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_BGRA64:I = 0x0

.field public static final AV_PIX_FMT_BGRA64BE:I = 0x125

.field public static final AV_PIX_FMT_BGRA64LE:I = 0x126

.field public static final AV_PIX_FMT_DXVA2_VLD:I = 0x3d

.field public static final AV_PIX_FMT_GBR24P:I = 0x52

.field public static final AV_PIX_FMT_GBRP:I = 0x52

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_GBRP10:I = 0x0

.field public static final AV_PIX_FMT_GBRP10BE:I = 0x55

.field public static final AV_PIX_FMT_GBRP10LE:I = 0x56

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_GBRP12:I = 0x0

.field public static final AV_PIX_FMT_GBRP12BE:I = 0x138

.field public static final AV_PIX_FMT_GBRP12LE:I = 0x139

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_GBRP14:I = 0x0

.field public static final AV_PIX_FMT_GBRP14BE:I = 0x13a

.field public static final AV_PIX_FMT_GBRP14LE:I = 0x13b

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_GBRP16:I = 0x0

.field public static final AV_PIX_FMT_GBRP16BE:I = 0x57

.field public static final AV_PIX_FMT_GBRP16LE:I = 0x58

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_GBRP9:I = 0x0

.field public static final AV_PIX_FMT_GBRP9BE:I = 0x53

.field public static final AV_PIX_FMT_GBRP9LE:I = 0x54

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_GRAY16:I = 0x0

.field public static final AV_PIX_FMT_GRAY16BE:I = 0x1f

.field public static final AV_PIX_FMT_GRAY16LE:I = 0x20

.field public static final AV_PIX_FMT_GRAY8:I = 0x8

.field public static final AV_PIX_FMT_GRAY8A:I = 0x42

.field public static final AV_PIX_FMT_MONOBLACK:I = 0xa

.field public static final AV_PIX_FMT_MONOWHITE:I = 0x9

.field public static final AV_PIX_FMT_NONE:I = -0x1

.field public static final AV_PIX_FMT_NV12:I = 0x19

.field public static final AV_PIX_FMT_NV21:I = 0x1a

.field public static final AV_PIX_FMT_PAL8:I = 0xb

.field public static final AV_PIX_FMT_RGB0:I = 0x128

.field public static final AV_PIX_FMT_RGB24:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_RGB32:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_RGB32_1:I = 0x0

.field public static final AV_PIX_FMT_RGB4:I = 0x17

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_RGB444:I = 0x0

.field public static final AV_PIX_FMT_RGB444BE:I = 0x3f

.field public static final AV_PIX_FMT_RGB444LE:I = 0x3e

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_RGB48:I = 0x0

.field public static final AV_PIX_FMT_RGB48BE:I = 0x29

.field public static final AV_PIX_FMT_RGB48LE:I = 0x2a

.field public static final AV_PIX_FMT_RGB4_BYTE:I = 0x18

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_RGB555:I = 0x0

.field public static final AV_PIX_FMT_RGB555BE:I = 0x2d

.field public static final AV_PIX_FMT_RGB555LE:I = 0x2e

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_RGB565:I = 0x0

.field public static final AV_PIX_FMT_RGB565BE:I = 0x2b

.field public static final AV_PIX_FMT_RGB565LE:I = 0x2c

.field public static final AV_PIX_FMT_RGB8:I = 0x16

.field public static final AV_PIX_FMT_RGBA:I = 0x1c

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_RGBA64:I = 0x0

.field public static final AV_PIX_FMT_RGBA64BE:I = 0x123

.field public static final AV_PIX_FMT_RGBA64LE:I = 0x124

.field public static final AV_PIX_FMT_UYVY422:I = 0x11

.field public static final AV_PIX_FMT_UYYVYY411:I = 0x12

.field public static final AV_PIX_FMT_VAAPI_IDCT:I = 0x34

.field public static final AV_PIX_FMT_VAAPI_MOCO:I = 0x33

.field public static final AV_PIX_FMT_VAAPI_VLD:I = 0x35

.field public static final AV_PIX_FMT_VDA_VLD:I = 0x51

.field public static final AV_PIX_FMT_VDPAU:I = 0x6d

.field public static final AV_PIX_FMT_VDPAU_H264:I = 0x24

.field public static final AV_PIX_FMT_VDPAU_MPEG1:I = 0x25

.field public static final AV_PIX_FMT_VDPAU_MPEG2:I = 0x26

.field public static final AV_PIX_FMT_VDPAU_MPEG4:I = 0x3c

.field public static final AV_PIX_FMT_VDPAU_VC1:I = 0x28

.field public static final AV_PIX_FMT_VDPAU_WMV3:I = 0x27

.field public static final AV_PIX_FMT_XVMC_MPEG2_IDCT:I = 0x10

.field public static final AV_PIX_FMT_XVMC_MPEG2_MC:I = 0xf

.field public static final AV_PIX_FMT_Y400A:I = 0x42

.field public static final AV_PIX_FMT_YUV410P:I = 0x6

.field public static final AV_PIX_FMT_YUV411P:I = 0x7

.field public static final AV_PIX_FMT_YUV420P:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV420P10:I = 0x0

.field public static final AV_PIX_FMT_YUV420P10BE:I = 0x47

.field public static final AV_PIX_FMT_YUV420P10LE:I = 0x48

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV420P12:I = 0x0

.field public static final AV_PIX_FMT_YUV420P12BE:I = 0x12c

.field public static final AV_PIX_FMT_YUV420P12LE:I = 0x12d

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV420P14:I = 0x0

.field public static final AV_PIX_FMT_YUV420P14BE:I = 0x12e

.field public static final AV_PIX_FMT_YUV420P14LE:I = 0x12f

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV420P16:I = 0x0

.field public static final AV_PIX_FMT_YUV420P16BE:I = 0x37

.field public static final AV_PIX_FMT_YUV420P16LE:I = 0x36

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV420P9:I = 0x0

.field public static final AV_PIX_FMT_YUV420P9BE:I = 0x45

.field public static final AV_PIX_FMT_YUV420P9LE:I = 0x46

.field public static final AV_PIX_FMT_YUV422P:I = 0x4

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV422P10:I = 0x0

.field public static final AV_PIX_FMT_YUV422P10BE:I = 0x49

.field public static final AV_PIX_FMT_YUV422P10LE:I = 0x4a

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV422P12:I = 0x0

.field public static final AV_PIX_FMT_YUV422P12BE:I = 0x130

.field public static final AV_PIX_FMT_YUV422P12LE:I = 0x131

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV422P14:I = 0x0

.field public static final AV_PIX_FMT_YUV422P14BE:I = 0x132

.field public static final AV_PIX_FMT_YUV422P14LE:I = 0x133

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV422P16:I = 0x0

.field public static final AV_PIX_FMT_YUV422P16BE:I = 0x39

.field public static final AV_PIX_FMT_YUV422P16LE:I = 0x38

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV422P9:I = 0x0

.field public static final AV_PIX_FMT_YUV422P9BE:I = 0x4f

.field public static final AV_PIX_FMT_YUV422P9LE:I = 0x50

.field public static final AV_PIX_FMT_YUV440P:I = 0x21

.field public static final AV_PIX_FMT_YUV444P:I = 0x5

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV444P10:I = 0x0

.field public static final AV_PIX_FMT_YUV444P10BE:I = 0x4d

.field public static final AV_PIX_FMT_YUV444P10LE:I = 0x4e

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV444P12:I = 0x0

.field public static final AV_PIX_FMT_YUV444P12BE:I = 0x134

.field public static final AV_PIX_FMT_YUV444P12LE:I = 0x135

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV444P14:I = 0x0

.field public static final AV_PIX_FMT_YUV444P14BE:I = 0x136

.field public static final AV_PIX_FMT_YUV444P14LE:I = 0x137

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV444P16:I = 0x0

.field public static final AV_PIX_FMT_YUV444P16BE:I = 0x3b

.field public static final AV_PIX_FMT_YUV444P16LE:I = 0x3a

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV444P9:I = 0x0

.field public static final AV_PIX_FMT_YUV444P9BE:I = 0x4b

.field public static final AV_PIX_FMT_YUV444P9LE:I = 0x4c

.field public static final AV_PIX_FMT_YUVA420P:I = 0x23

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUVA420P10:I = 0x0

.field public static final AV_PIX_FMT_YUVA420P10BE:I = 0x61

.field public static final AV_PIX_FMT_YUVA420P10LE:I = 0x62

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUVA420P16:I = 0x0

.field public static final AV_PIX_FMT_YUVA420P16BE:I = 0x67

.field public static final AV_PIX_FMT_YUVA420P16LE:I = 0x68

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUVA420P9:I = 0x0

.field public static final AV_PIX_FMT_YUVA420P9BE:I = 0x5b

.field public static final AV_PIX_FMT_YUVA420P9LE:I = 0x5c

.field public static final AV_PIX_FMT_YUVA422P:I = 0x12c

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUVA422P10:I = 0x0

.field public static final AV_PIX_FMT_YUVA422P10BE:I = 0x63

.field public static final AV_PIX_FMT_YUVA422P10LE:I = 0x64

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUVA422P16:I = 0x0

.field public static final AV_PIX_FMT_YUVA422P16BE:I = 0x69

.field public static final AV_PIX_FMT_YUVA422P16LE:I = 0x6a

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUVA422P9:I = 0x0

.field public static final AV_PIX_FMT_YUVA422P9BE:I = 0x5d

.field public static final AV_PIX_FMT_YUVA422P9LE:I = 0x5e

.field public static final AV_PIX_FMT_YUVA422P_LIBAV:I = 0x59

.field public static final AV_PIX_FMT_YUVA444P:I = 0x12b

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUVA444P10:I = 0x0

.field public static final AV_PIX_FMT_YUVA444P10BE:I = 0x65

.field public static final AV_PIX_FMT_YUVA444P10LE:I = 0x66

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUVA444P16:I = 0x0

.field public static final AV_PIX_FMT_YUVA444P16BE:I = 0x6b

.field public static final AV_PIX_FMT_YUVA444P16LE:I = 0x6c

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUVA444P9:I = 0x0

.field public static final AV_PIX_FMT_YUVA444P9BE:I = 0x5f

.field public static final AV_PIX_FMT_YUVA444P9LE:I = 0x60

.field public static final AV_PIX_FMT_YUVA444P_LIBAV:I = 0x5a

.field public static final AV_PIX_FMT_YUVJ420P:I = 0xc

.field public static final AV_PIX_FMT_YUVJ422P:I = 0xd

.field public static final AV_PIX_FMT_YUVJ440P:I = 0x22

.field public static final AV_PIX_FMT_YUVJ444P:I = 0xe

.field public static final AV_PIX_FMT_YUYV422:I = 0x1

.field public static final AV_ROUND_DOWN:I = 0x2

.field public static final AV_ROUND_INF:I = 0x1

.field public static final AV_ROUND_NEAR_INF:I = 0x5

.field public static final AV_ROUND_PASS_MINMAX:I = 0x2000

.field public static final AV_ROUND_UP:I = 0x3

.field public static final AV_ROUND_ZERO:I = 0x0

.field public static final AV_SAMPLE_FMT_DBL:I = 0x4

.field public static final AV_SAMPLE_FMT_DBLP:I = 0x9

.field public static final AV_SAMPLE_FMT_FLT:I = 0x3

.field public static final AV_SAMPLE_FMT_FLTP:I = 0x8

.field public static final AV_SAMPLE_FMT_NONE:I = -0x1

.field public static final AV_SAMPLE_FMT_S16:I = 0x1

.field public static final AV_SAMPLE_FMT_S16P:I = 0x6

.field public static final AV_SAMPLE_FMT_S32:I = 0x2

.field public static final AV_SAMPLE_FMT_S32P:I = 0x7

.field public static final AV_SAMPLE_FMT_U8:I = 0x0

.field public static final AV_SAMPLE_FMT_U8P:I = 0x5

.field public static final AV_TIME_BASE:I = 0xf4240

.field public static final AV_TIME_BASE_Q:Lcom/googlecode/javacv/cpp/avutil$AVRational; = null

.field public static final FF_LAMBDA_MAX:I = 0x7fff

.field public static final FF_LAMBDA_SCALE:I = 0x80

.field public static final FF_LAMBDA_SHIFT:I = 0x7

.field public static final FF_QP2LAMBDA:I = 0x76

.field public static final FF_QUALITY_SCALE:I = 0x80

#the value of this static final field might be set in the static constructor
.field public static final INFINITY:D = 0.0

#the value of this static final field might be set in the static constructor
.field public static final LIBAVUTIL_BUILD:I = 0x0

.field public static final LIBAVUTIL_IDENT:Ljava/lang/String; = null

.field public static final LIBAVUTIL_VERSION:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final LIBAVUTIL_VERSION_INT:I = 0x0

.field public static final LIBAVUTIL_VERSION_MAJOR:I = 0x34

.field public static final LIBAVUTIL_VERSION_MICRO:I = 0x64

.field public static final LIBAVUTIL_VERSION_MINOR:I = 0x12

.field public static final M_E:D = 2.718281828459045

.field public static final M_LN10:D = 2.302585092994046

.field public static final M_LN2:D = 0.6931471805599453

.field public static final M_LOG2_10:D = 3.321928094887362

.field public static final M_PHI:D = 1.618033988749895

.field public static final M_PI:D = 3.141592653589793

.field public static final M_SQRT1_2:D = 0.7071067811865476

.field public static final M_SQRT2:D = 1.4142135623730951

#the value of this static final field might be set in the static constructor
.field public static final NAN:D = 0.0

.field public static final androidIncludepath:Ljava/lang/String; = "../include/"

.field public static final androidLinkpath:Ljava/lang/String; = "../lib/"

.field public static final genericIncludepath:Ljava/lang/String; = "/usr/local/include/ffmpeg/:/usr/local/include/:/opt/local/include/ffmpeg/:/opt/local/include/:/usr/include/ffmpeg/"

.field public static final genericLinkpath:Ljava/lang/String; = "/usr/local/lib/:/usr/local/lib64/:/opt/local/lib/:/opt/local/lib64/"

.field public static final windowsIncludepath:Ljava/lang/String; = "C:/MinGW/local/include/ffmpeg/;C:/MinGW/include/ffmpeg/;C:/MinGW/local/include/;src/main/resources/com/googlecode/javacv/cpp/"

.field public static final windowsLinkpath:Ljava/lang/String; = "C:/MinGW/local/lib/;C:/MinGW/lib/"

.field public static final windowsPreloadpath:Ljava/lang/String; = "C:/MinGW/local/bin/;C:/MinGW/bin/"


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v3, 0x53

    const/16 v4, 0x54

    const/16 v2, 0x46

    const/16 v8, 0xf8

    const/16 v1, 0x45

    .line 75
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    .line 230
    const/16 v0, 0x34

    const/16 v5, 0x12

    const/16 v6, 0x64

    invoke-static {v0, v5, v6}, Lcom/googlecode/javacv/cpp/avutil;->AV_VERSION_INT(III)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->LIBAVUTIL_VERSION_INT:I

    .line 233
    const/16 v0, 0x34

    const/16 v5, 0x12

    const/16 v6, 0x64

    invoke-static {v0, v5, v6}, Lcom/googlecode/javacv/cpp/avutil;->AV_VERSION(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/cpp/avutil;->LIBAVUTIL_VERSION:Ljava/lang/String;

    .line 236
    sget v0, Lcom/googlecode/javacv/cpp/avutil;->LIBAVUTIL_VERSION_INT:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->LIBAVUTIL_BUILD:I

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Lavu"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lcom/googlecode/javacv/cpp/avutil;->LIBAVUTIL_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/cpp/avutil;->LIBAVUTIL_IDENT:Ljava/lang/String;

    .line 334
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/googlecode/javacv/cpp/avutil;->AV_TIME_BASE_Q:Lcom/googlecode/javacv/cpp/avutil$AVRational;

    .line 419
    const/16 v0, 0x42

    invoke-static {v8, v0, v3, v2}, Lcom/googlecode/javacv/cpp/avutil;->FFERRTAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_BSF_NOT_FOUND:I

    .line 420
    const/16 v0, 0x42

    const/16 v5, 0x55

    const/16 v6, 0x47

    const/16 v7, 0x21

    invoke-static {v0, v5, v6, v7}, Lcom/googlecode/javacv/cpp/avutil;->FFERRTAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_BUG:I

    .line 421
    const/16 v0, 0x42

    const/16 v5, 0x55

    invoke-static {v0, v5, v2, v3}, Lcom/googlecode/javacv/cpp/avutil;->FFERRTAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_BUFFER_TOO_SMALL:I

    .line 422
    const/16 v0, 0x44

    const/16 v5, 0x43

    invoke-static {v8, v0, v1, v5}, Lcom/googlecode/javacv/cpp/avutil;->FFERRTAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_DECODER_NOT_FOUND:I

    .line 423
    const/16 v0, 0x44

    const/16 v5, 0x4d

    invoke-static {v8, v0, v1, v5}, Lcom/googlecode/javacv/cpp/avutil;->FFERRTAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_DEMUXER_NOT_FOUND:I

    .line 424
    const/16 v0, 0x4e

    const/16 v5, 0x43

    invoke-static {v8, v1, v0, v5}, Lcom/googlecode/javacv/cpp/avutil;->FFERRTAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_ENCODER_NOT_FOUND:I

    .line 425
    const/16 v0, 0x4f

    const/16 v5, 0x20

    invoke-static {v1, v0, v2, v5}, Lcom/googlecode/javacv/cpp/avutil;->FFERRTAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_EOF:I

    .line 426
    const/16 v0, 0x58

    const/16 v5, 0x49

    invoke-static {v1, v0, v5, v4}, Lcom/googlecode/javacv/cpp/avutil;->FFERRTAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_EXIT:I

    .line 427
    const/16 v0, 0x58

    const/16 v5, 0x20

    invoke-static {v1, v0, v4, v5}, Lcom/googlecode/javacv/cpp/avutil;->FFERRTAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_EXTERNAL:I

    .line 428
    const/16 v0, 0x49

    const/16 v5, 0x4c

    invoke-static {v8, v2, v0, v5}, Lcom/googlecode/javacv/cpp/avutil;->FFERRTAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_FILTER_NOT_FOUND:I

    .line 429
    const/16 v0, 0x49

    const/16 v5, 0x4e

    const/16 v6, 0x44

    const/16 v7, 0x41

    invoke-static {v0, v5, v6, v7}, Lcom/googlecode/javacv/cpp/avutil;->FFERRTAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_INVALIDDATA:I

    .line 430
    const/16 v0, 0x4d

    const/16 v5, 0x55

    const/16 v6, 0x58

    invoke-static {v8, v0, v5, v6}, Lcom/googlecode/javacv/cpp/avutil;->FFERRTAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_MUXER_NOT_FOUND:I

    .line 431
    const/16 v0, 0x4f

    const/16 v5, 0x50

    invoke-static {v8, v0, v5, v4}, Lcom/googlecode/javacv/cpp/avutil;->FFERRTAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_OPTION_NOT_FOUND:I

    .line 432
    const/16 v0, 0x50

    const/16 v5, 0x41

    const/16 v6, 0x57

    invoke-static {v0, v5, v6, v1}, Lcom/googlecode/javacv/cpp/avutil;->FFERRTAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_PATCHWELCOME:I

    .line 433
    const/16 v0, 0x50

    const/16 v5, 0x52

    const/16 v6, 0x4f

    invoke-static {v8, v0, v5, v6}, Lcom/googlecode/javacv/cpp/avutil;->FFERRTAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_PROTOCOL_NOT_FOUND:I

    .line 434
    const/16 v0, 0x52

    invoke-static {v8, v3, v4, v0}, Lcom/googlecode/javacv/cpp/avutil;->FFERRTAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_STREAM_NOT_FOUND:I

    .line 440
    const/16 v0, 0x42

    const/16 v5, 0x55

    const/16 v6, 0x47

    const/16 v7, 0x20

    invoke-static {v0, v5, v6, v7}, Lcom/googlecode/javacv/cpp/avutil;->FFERRTAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_BUG2:I

    .line 441
    const/16 v0, 0x55

    const/16 v5, 0x4e

    const/16 v6, 0x4b

    const/16 v7, 0x4e

    invoke-static {v0, v5, v6, v7}, Lcom/googlecode/javacv/cpp/avutil;->FFERRTAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_UNKNOWN:I

    .line 778
    const/high16 v0, 0x7fc0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v5, v0

    sput-wide v5, Lcom/googlecode/javacv/cpp/avutil;->NAN:D

    .line 779
    const/high16 v0, 0x7f80

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v5, v0

    sput-wide v5, Lcom/googlecode/javacv/cpp/avutil;->INFINITY:D

    .line 1335
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1b

    :goto_1
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB32:I

    .line 1336
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1c

    :goto_2
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB32_1:I

    .line 1337
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1d

    :goto_3
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGR32:I

    .line 1338
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x1e

    :goto_4
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGR32_1:I

    .line 1339
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x127

    :goto_5
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_0RGB32:I

    .line 1340
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x129

    :goto_6
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_0BGR32:I

    .line 1342
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x1f

    :goto_7
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_GRAY16:I

    .line 1343
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x29

    :goto_8
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB48:I

    .line 1344
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x2b

    :goto_9
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB565:I

    .line 1345
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x2d

    :goto_a
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB555:I

    .line 1346
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x3f

    :goto_b
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB444:I

    .line 1347
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x43

    :goto_c
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGR48:I

    .line 1348
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x2f

    :goto_d
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGR565:I

    .line 1349
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x31

    :goto_e
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGR555:I

    .line 1350
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x41

    :goto_f
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGR444:I

    .line 1352
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_10
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV420P9:I

    .line 1353
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x4f

    :goto_11
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV422P9:I

    .line 1354
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x4b

    :goto_12
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV444P9:I

    .line 1355
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x47

    :goto_13
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV420P10:I

    .line 1356
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x49

    :goto_14
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV422P10:I

    .line 1357
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x4d

    :goto_15
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV444P10:I

    .line 1358
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x12c

    :goto_16
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV420P12:I

    .line 1359
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x130

    :goto_17
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV422P12:I

    .line 1360
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0x134

    :goto_18
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV444P12:I

    .line 1361
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v0, 0x12e

    :goto_19
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV420P14:I

    .line 1362
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0x132

    :goto_1a
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV422P14:I

    .line 1363
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 v0, 0x136

    :goto_1b
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV444P14:I

    .line 1364
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 v0, 0x37

    :goto_1c
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV420P16:I

    .line 1365
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0x39

    :goto_1d
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV422P16:I

    .line 1366
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v0, 0x3b

    :goto_1e
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV444P16:I

    .line 1368
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v0, 0x123

    :goto_1f
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGBA64:I

    .line 1369
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x125

    :goto_20
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGRA64:I

    .line 1370
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v3

    :goto_21
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_GBRP9:I

    .line 1371
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v0, 0x55

    :goto_22
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_GBRP10:I

    .line 1372
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_23

    const/16 v0, 0x138

    :goto_23
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_GBRP12:I

    .line 1373
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_24

    const/16 v0, 0x13a

    :goto_24
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_GBRP14:I

    .line 1374
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_25

    const/16 v0, 0x57

    :goto_25
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_GBRP16:I

    .line 1376
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_26

    const/16 v0, 0x5b

    :goto_26
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA420P9:I

    .line 1377
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_27

    const/16 v0, 0x5d

    :goto_27
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA422P9:I

    .line 1378
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_28

    const/16 v0, 0x5f

    :goto_28
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA444P9:I

    .line 1379
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v0, 0x61

    :goto_29
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA420P10:I

    .line 1380
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/16 v0, 0x63

    :goto_2a
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA422P10:I

    .line 1381
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v0, 0x65

    :goto_2b
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA444P10:I

    .line 1382
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/16 v0, 0x67

    :goto_2c
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA420P16:I

    .line 1383
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/16 v0, 0x69

    :goto_2d
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA422P16:I

    .line 1384
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/16 v0, 0x6b

    :goto_2e
    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA444P16:I

    .line 2002
    const/16 v0, 0x49

    const/16 v5, 0x5a

    invoke-static {v3, v0, v5, v1}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_OPT_TYPE_IMAGE_SIZE:I

    .line 2003
    const/16 v0, 0x50

    const/16 v1, 0x4d

    invoke-static {v0, v2, v1, v4}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_OPT_TYPE_PIXEL_FMT:I

    .line 2004
    const/16 v0, 0x4d

    invoke-static {v3, v2, v0, v4}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_OPT_TYPE_SAMPLE_FMT:I

    return-void

    .line 334
    :cond_0
    new-instance v0, Lcom/googlecode/javacv/cpp/avutil$AVRational;

    invoke-direct {v0}, Lcom/googlecode/javacv/cpp/avutil$AVRational;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->num(I)Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v0

    const v5, 0xf4240

    invoke-virtual {v0, v5}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->den(I)Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v0

    goto/16 :goto_0

    .line 1335
    :cond_1
    const/16 v0, 0x1e

    goto/16 :goto_1

    .line 1336
    :cond_2
    const/16 v0, 0x1d

    goto/16 :goto_2

    .line 1337
    :cond_3
    const/16 v0, 0x1c

    goto/16 :goto_3

    .line 1338
    :cond_4
    const/16 v0, 0x1b

    goto/16 :goto_4

    .line 1339
    :cond_5
    const/16 v0, 0x129

    goto/16 :goto_5

    .line 1340
    :cond_6
    const/16 v0, 0x127

    goto/16 :goto_6

    .line 1342
    :cond_7
    const/16 v0, 0x20

    goto/16 :goto_7

    .line 1343
    :cond_8
    const/16 v0, 0x2a

    goto/16 :goto_8

    .line 1344
    :cond_9
    const/16 v0, 0x2c

    goto/16 :goto_9

    .line 1345
    :cond_a
    const/16 v0, 0x2e

    goto/16 :goto_a

    .line 1346
    :cond_b
    const/16 v0, 0x3e

    goto/16 :goto_b

    .line 1347
    :cond_c
    const/16 v0, 0x44

    goto/16 :goto_c

    .line 1348
    :cond_d
    const/16 v0, 0x30

    goto/16 :goto_d

    .line 1349
    :cond_e
    const/16 v0, 0x32

    goto/16 :goto_e

    .line 1350
    :cond_f
    const/16 v0, 0x40

    goto/16 :goto_f

    :cond_10
    move v0, v2

    .line 1352
    goto/16 :goto_10

    .line 1353
    :cond_11
    const/16 v0, 0x50

    goto/16 :goto_11

    .line 1354
    :cond_12
    const/16 v0, 0x4c

    goto/16 :goto_12

    .line 1355
    :cond_13
    const/16 v0, 0x48

    goto/16 :goto_13

    .line 1356
    :cond_14
    const/16 v0, 0x4a

    goto/16 :goto_14

    .line 1357
    :cond_15
    const/16 v0, 0x4e

    goto/16 :goto_15

    .line 1358
    :cond_16
    const/16 v0, 0x12d

    goto/16 :goto_16

    .line 1359
    :cond_17
    const/16 v0, 0x131

    goto/16 :goto_17

    .line 1360
    :cond_18
    const/16 v0, 0x135

    goto/16 :goto_18

    .line 1361
    :cond_19
    const/16 v0, 0x12f

    goto/16 :goto_19

    .line 1362
    :cond_1a
    const/16 v0, 0x133

    goto/16 :goto_1a

    .line 1363
    :cond_1b
    const/16 v0, 0x137

    goto/16 :goto_1b

    .line 1364
    :cond_1c
    const/16 v0, 0x36

    goto/16 :goto_1c

    .line 1365
    :cond_1d
    const/16 v0, 0x38

    goto/16 :goto_1d

    .line 1366
    :cond_1e
    const/16 v0, 0x3a

    goto/16 :goto_1e

    .line 1368
    :cond_1f
    const/16 v0, 0x124

    goto/16 :goto_1f

    .line 1369
    :cond_20
    const/16 v0, 0x126

    goto/16 :goto_20

    :cond_21
    move v0, v4

    .line 1370
    goto/16 :goto_21

    .line 1371
    :cond_22
    const/16 v0, 0x56

    goto/16 :goto_22

    .line 1372
    :cond_23
    const/16 v0, 0x139

    goto/16 :goto_23

    .line 1373
    :cond_24
    const/16 v0, 0x13b

    goto/16 :goto_24

    .line 1374
    :cond_25
    const/16 v0, 0x58

    goto/16 :goto_25

    .line 1376
    :cond_26
    const/16 v0, 0x5c

    goto/16 :goto_26

    .line 1377
    :cond_27
    const/16 v0, 0x5e

    goto/16 :goto_27

    .line 1378
    :cond_28
    const/16 v0, 0x60

    goto/16 :goto_28

    .line 1379
    :cond_29
    const/16 v0, 0x62

    goto/16 :goto_29

    .line 1380
    :cond_2a
    const/16 v0, 0x64

    goto/16 :goto_2a

    .line 1381
    :cond_2b
    const/16 v0, 0x66

    goto/16 :goto_2b

    .line 1382
    :cond_2c
    const/16 v0, 0x68

    goto/16 :goto_2c

    .line 1383
    :cond_2d
    const/16 v0, 0x6a

    goto/16 :goto_2d

    .line 1384
    :cond_2e
    const/16 v0, 0x6c

    goto/16 :goto_2e
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2102
    return-void
.end method

.method public static AV_HAVE_BIGENDIAN()Z
    .locals 2

    .prologue
    .line 380
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static AV_VERSION(III)Ljava/lang/String;
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 204
    invoke-static {p0, p1, p2}, Lcom/googlecode/javacv/cpp/avutil;->AV_VERSION_DOT(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static AV_VERSION_DOT(III)Ljava/lang/String;
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static AV_VERSION_INT(III)I
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 202
    shl-int/lit8 v0, p0, 0x10

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p2

    return v0
.end method

.method public static FFERRTAG(IIII)I
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 416
    invoke-static {p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/avutil;->MKTAG(IIII)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public static MKBETAG(IIII)I
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 389
    shl-int/lit8 v0, p2, 0x8

    or-int/2addr v0, p3

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static MKTAG(IIII)I
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 388
    shl-int/lit8 v0, p1, 0x8

    or-int/2addr v0, p0

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p3, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static native av_add_q(Lcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native av_bprint_channel_layout(Lcom/googlecode/javacv/cpp/avutil$AVBPrint;IJ)V
.end method

.method public static native av_calloc(JJ)Lcom/googlecode/javacpp/Pointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_channel_layout_extract_channel(JI)J
.end method

.method public static native av_cmp_q(Lcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native av_compare_mod(JJJ)J
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_compare_ts(JLcom/googlecode/javacv/cpp/avutil$AVRational;JLcom/googlecode/javacv/cpp/avutil$AVRational;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native av_d2q(DI)Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native av_default_get_category(Lcom/googlecode/javacpp/Pointer;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVClassCategory"
        }
    .end annotation
.end method

.method public static native av_default_item_name(Lcom/googlecode/javacpp/Pointer;)Ljava/lang/String;
.end method

.method public static native av_dict_copy(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_dict_count(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I
.end method

.method public static native av_dict_free(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native av_dict_get(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Ljava/lang/String;Lcom/googlecode/javacv/cpp/avutil$AVDictionaryEntry;I)Lcom/googlecode/javacv/cpp/avutil$AVDictionaryEntry;
.end method

.method public static native av_dict_parse_string(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_dict_set(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Ljava/lang/String;Ljava/lang/String;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_div_q(Lcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native av_dynarray_add(Lcom/googlecode/javacpp/Pointer;[ILcom/googlecode/javacpp/Pointer;)V
.end method

.method public static native av_find_nearest_q_idx(Lcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_force_cpu_flags(I)V
.end method

.method public static native av_free(Lcom/googlecode/javacpp/Pointer;)V
.end method

.method public static native av_freep(Lcom/googlecode/javacpp/Pointer;)V
.end method

.method public static native av_gcd(JJ)J
.end method

.method public static native av_get_alt_sample_fmt(II)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVSampleFormat"
        }
    .end annotation
.end method

.method public static native av_get_bytes_per_sample(I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_get_channel_description(J)Ljava/lang/String;
.end method

.method public static native av_get_channel_layout(Ljava/lang/String;)J
.end method

.method public static native av_get_channel_layout_channel_index(JJ)I
.end method

.method public static native av_get_channel_layout_nb_channels(J)I
.end method

.method public static native av_get_channel_layout_string(Lcom/googlecode/javacpp/BytePointer;IIJ)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_get_channel_name(J)Ljava/lang/String;
.end method

.method public static native av_get_cpu_flags()I
.end method

.method public static native av_get_default_channel_layout(I)J
.end method

.method public static native av_get_media_type_string(I)Ljava/lang/String;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVMediaType"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_get_packed_sample_fmt(I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVSampleFormat"
        }
    .end annotation
.end method

.method public static native av_get_picture_type_char(I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPictureType"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char"
        }
    .end annotation
.end method

.method public static native av_get_planar_sample_fmt(I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVSampleFormat"
        }
    .end annotation
.end method

.method public static native av_get_sample_fmt(Ljava/lang/String;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVSampleFormat"
        }
    .end annotation
.end method

.method public static native av_get_sample_fmt_name(I)Ljava/lang/String;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_get_sample_fmt_string(Lcom/googlecode/javacpp/BytePointer;II)Ljava/lang/String;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_get_standard_channel_layout(I[JLcom/googlecode/javacpp/BytePointer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_image_alloc(Lcom/googlecode/javacpp/PointerPointer;[IIIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_check_size(IIILcom/googlecode/javacpp/Pointer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_copy(Lcom/googlecode/javacpp/PointerPointer;[ILcom/googlecode/javacpp/PointerPointer;[IIII)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t **"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_copy_plane(Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/BytePointer;III)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_copy_to_buffer(Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/PointerPointer;[IIIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t * const*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_fill_arrays(Lcom/googlecode/javacpp/PointerPointer;[ILcom/googlecode/javacpp/BytePointer;IIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_fill_linesizes([III)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_fill_max_pixsteps([I[I[I)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixFmtDescriptor*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_image_fill_pointers(Lcom/googlecode/javacpp/PointerPointer;IILcom/googlecode/javacpp/BytePointer;[I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_get_buffer_size(IIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_get_linesize(III)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_inv_q(Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native av_log(Lcom/googlecode/javacpp/Pointer;ILjava/lang/String;)V
.end method

.method public static native av_log_default_callback(Lcom/googlecode/javacpp/Pointer;ILjava/lang/String;Lcom/googlecode/javacpp/Pointer;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "va_list*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_log_format_line(Lcom/googlecode/javacpp/Pointer;ILjava/lang/String;Lcom/googlecode/javacpp/Pointer;[BI[I)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "va_list*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_log_get_level()I
.end method

.method public static native av_log_set_callback(Lcom/googlecode/javacv/cpp/avutil$LogCallback;)V
.end method

.method public static native av_log_set_flags(I)V
.end method

.method public static native av_log_set_level(I)V
.end method

.method public static native av_make_error_string(Lcom/googlecode/javacpp/BytePointer;JI)Lcom/googlecode/javacpp/BytePointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public static native av_malloc(J)Lcom/googlecode/javacpp/Pointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_malloc_array(JJ)Lcom/googlecode/javacpp/Pointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_mallocz(J)Lcom/googlecode/javacpp/Pointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_mallocz_array(JJ)Lcom/googlecode/javacpp/Pointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_max_alloc(J)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_memcpy_backptr(Lcom/googlecode/javacpp/BytePointer;II)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_mul_q(Lcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native av_nearer_q(Lcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native av_opt_child_class_next(Lcom/googlecode/javacv/cpp/avutil$AVClass;Lcom/googlecode/javacv/cpp/avutil$AVClass;)Lcom/googlecode/javacv/cpp/avutil$AVClass;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native av_opt_child_next(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/Pointer;
.end method

.method public static native av_opt_eval_double(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Ljava/lang/String;[D)I
.end method

.method public static native av_opt_eval_flags(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Ljava/lang/String;[I)I
.end method

.method public static native av_opt_eval_float(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Ljava/lang/String;[F)I
.end method

.method public static native av_opt_eval_int(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Ljava/lang/String;[I)I
.end method

.method public static native av_opt_eval_int64(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Ljava/lang/String;[J)I
.end method

.method public static native av_opt_eval_q(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Ljava/lang/String;Lcom/googlecode/javacv/cpp/avutil$AVRational;)I
.end method

.method public static native av_opt_find(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Ljava/lang/String;II)Lcom/googlecode/javacv/cpp/avutil$AVOption;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native av_opt_find2(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Ljava/lang/String;IILcom/googlecode/javacpp/PointerPointer;)Lcom/googlecode/javacv/cpp/avutil$AVOption;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native av_opt_flag_is_set(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native av_opt_free(Lcom/googlecode/javacpp/Pointer;)V
.end method

.method public static native av_opt_freep_ranges(Lcom/googlecode/javacv/cpp/avutil$AVOptionRanges;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;ILcom/googlecode/javacpp/BytePointer;)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get_double(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;I[D)I
.end method

.method public static native av_opt_get_image_size(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;I[I[I)I
.end method

.method public static native av_opt_get_int(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;I[J)I
.end method

.method public static native av_opt_get_key_value(Lcom/googlecode/javacpp/PointerPointer;Ljava/lang/String;Ljava/lang/String;ILcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/PointerPointer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get_pixel_fmt(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;I[I)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get_q(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;ILcom/googlecode/javacv/cpp/avutil$AVRational;)I
.end method

.method public static native av_opt_get_sample_fmt(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;I[I)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_next(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;)Lcom/googlecode/javacv/cpp/avutil$AVOption;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native av_opt_ptr(Lcom/googlecode/javacv/cpp/avutil$AVClass;Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;)Lcom/googlecode/javacpp/Pointer;
.end method

.method public static native av_opt_query_ranges(Lcom/googlecode/javacv/cpp/avutil$AVOptionRanges;Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_query_ranges_default(Lcom/googlecode/javacv/cpp/avutil$AVOptionRanges;Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_set(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native av_opt_set_bin(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Lcom/googlecode/javacpp/BytePointer;II)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_set_defaults(Lcom/googlecode/javacpp/Pointer;)V
.end method

.method public static native av_opt_set_dict(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native av_opt_set_double(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;DI)I
.end method

.method public static native av_opt_set_from_string(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Lcom/googlecode/javacpp/PointerPointer;Ljava/lang/String;Ljava/lang/String;)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char *const *"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_set_image_size(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;III)I
.end method

.method public static native av_opt_set_int(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;JI)I
.end method

.method public static native av_opt_set_pixel_fmt(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;II)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_set_q(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Lcom/googlecode/javacv/cpp/avutil$AVRational;I)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_set_sample_fmt(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;II)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_show2(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;II)I
.end method

.method public static native av_parse_cpu_caps([ILjava/lang/String;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_parse_cpu_flags(Ljava/lang/String;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_q2d(Lcom/googlecode/javacv/cpp/avutil$AVRational;)D
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native av_realloc(Lcom/googlecode/javacpp/Pointer;J)Lcom/googlecode/javacpp/Pointer;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_realloc_f(Lcom/googlecode/javacpp/Pointer;JJ)Lcom/googlecode/javacpp/Pointer;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_reduce([I[IJJJ)I
.end method

.method public static native av_rescale(JJJ)J
.end method

.method public static native av_rescale_delta(Lcom/googlecode/javacv/cpp/avutil$AVRational;JLcom/googlecode/javacv/cpp/avutil$AVRational;I[JLcom/googlecode/javacv/cpp/avutil$AVRational;)J
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native av_rescale_q(JLcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)J
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native av_rescale_q_rnd(JLcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;I)J
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVRounding"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_rescale_rnd(JJJI)J
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVRounding"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_sample_fmt_is_planar(I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_samples_alloc(Lcom/googlecode/javacpp/PointerPointer;[IIIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_samples_copy(Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/PointerPointer;IIIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_samples_fill_arrays(Lcom/googlecode/javacpp/PointerPointer;[ILcom/googlecode/javacpp/BytePointer;IIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_samples_get_buffer_size([IIIII)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_samples_set_silence(Lcom/googlecode/javacpp/PointerPointer;IIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_set_options_string(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native av_size_mult(JJLcom/googlecode/javacpp/SizeTPointer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_strdup(Ljava/lang/String;)Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public static native av_strerror(I[BJ)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_sub_q(Lcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native av_vlog(Lcom/googlecode/javacpp/Pointer;ILjava/lang/String;Lcom/googlecode/javacpp/Pointer;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "va_list*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_x_if_null(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/Pointer;
.end method

.method public static native avpriv_set_systematic_pal2([II)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
.end method

.method public static native avutil_configuration()Ljava/lang/String;
.end method

.method public static native avutil_license()Ljava/lang/String;
.end method

.method public static native avutil_version()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method
