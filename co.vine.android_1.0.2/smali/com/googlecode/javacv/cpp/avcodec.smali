.class public Lcom/googlecode/javacv/cpp/avcodec;
.super Ljava/lang/Object;
.source "avcodec.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Properties;
    value = {
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            cinclude = {
                "<libavcodec/avcodec.h>",
                "<libavcodec/avfft.h>"
            }
            define = {
                "__STDC_CONSTANT_MACROS"
            }
            includepath = {
                "/usr/local/include/ffmpeg/:/usr/local/include/:/opt/local/include/ffmpeg/:/opt/local/include/:/usr/include/ffmpeg/"
            }
            link = {
                "avcodec@.54",
                "avutil@.52"
            }
            linkpath = {
                "/usr/local/lib/:/usr/local/lib64/:/opt/local/lib/:/opt/local/lib64/"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            cinclude = {
                "<libavcodec/vaapi.h>",
                "<libavcodec/vdpau.h>",
                "<libavcodec/xvmc.h>",
                "<libavcodec/avcodec.h>",
                "<libavcodec/avfft.h>"
            }
            value = {
                "linux",
                "freebsd",
                "solaris",
                "sunos"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            cinclude = {
                "<DShow.h>",
                "<d3d9.h>",
                "<vmr9.h>",
                "<evr9.h>",
                "<libavcodec/dxva2.h>",
                "<libavcodec/avcodec.h>",
                "<libavcodec/avfft.h>"
            }
            includepath = {
                "C:/MinGW/local/include/ffmpeg/;C:/MinGW/include/ffmpeg/;C:/MinGW/local/include/;src/main/resources/com/googlecode/javacv/cpp/"
            }
            linkpath = {
                "C:/MinGW/local/lib/;C:/MinGW/lib/"
            }
            preload = {
                "avcodec-54"
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
        Lcom/googlecode/javacv/cpp/avcodec$Cb;,
        Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;,
        Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilterContext;,
        Lcom/googlecode/javacv/cpp/avcodec$AVResampleContext;,
        Lcom/googlecode/javacv/cpp/avcodec$ReSampleContext;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;,
        Lcom/googlecode/javacv/cpp/avcodec$AVSubtitle;,
        Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;,
        Lcom/googlecode/javacv/cpp/avcodec$AVPicture;,
        Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodec;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodecDefault;,
        Lcom/googlecode/javacv/cpp/avcodec$AVProfile;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodecInternal;,
        Lcom/googlecode/javacv/cpp/avcodec$AVFrame;,
        Lcom/googlecode/javacv/cpp/avcodec$AVPacket;,
        Lcom/googlecode/javacv/cpp/avcodec$AVPanScan;,
        Lcom/googlecode/javacv/cpp/avcodec$RcOverride;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodecDescriptor;
    }
.end annotation


# static fields
.field public static final AVCHROMA_LOC_BOTTOM:I = 0x6

.field public static final AVCHROMA_LOC_BOTTOMLEFT:I = 0x5

.field public static final AVCHROMA_LOC_CENTER:I = 0x2

.field public static final AVCHROMA_LOC_LEFT:I = 0x1

.field public static final AVCHROMA_LOC_TOP:I = 0x4

.field public static final AVCHROMA_LOC_TOPLEFT:I = 0x3

.field public static final AVCHROMA_LOC_UNSPECIFIED:I = 0x0

.field public static final AVCOL_PRI_BT470BG:I = 0x5

.field public static final AVCOL_PRI_BT470M:I = 0x4

.field public static final AVCOL_PRI_BT709:I = 0x1

.field public static final AVCOL_PRI_FILM:I = 0x8

.field public static final AVCOL_PRI_SMPTE170M:I = 0x6

.field public static final AVCOL_PRI_SMPTE240M:I = 0x7

.field public static final AVCOL_PRI_UNSPECIFIED:I = 0x2

.field public static final AVCOL_RANGE_JPEG:I = 0x2

.field public static final AVCOL_RANGE_MPEG:I = 0x1

.field public static final AVCOL_RANGE_UNSPECIFIED:I = 0x0

.field public static final AVCOL_SPC_BT470BG:I = 0x5

.field public static final AVCOL_SPC_BT709:I = 0x1

.field public static final AVCOL_SPC_FCC:I = 0x4

.field public static final AVCOL_SPC_RGB:I = 0x0

.field public static final AVCOL_SPC_SMPTE170M:I = 0x6

.field public static final AVCOL_SPC_SMPTE240M:I = 0x7

.field public static final AVCOL_SPC_UNSPECIFIED:I = 0x2

.field public static final AVCOL_SPC_YCGCO:I = 0x8

.field public static final AVCOL_SPC_YCOCG:I = 0x8

.field public static final AVCOL_TRC_BT709:I = 0x1

.field public static final AVCOL_TRC_GAMMA22:I = 0x4

.field public static final AVCOL_TRC_GAMMA28:I = 0x5

.field public static final AVCOL_TRC_SMPTE240M:I = 0x7

.field public static final AVCOL_TRC_UNSPECIFIED:I = 0x2

.field public static final AVDISCARD_ALL:I = 0x30

.field public static final AVDISCARD_BIDIR:I = 0x10

.field public static final AVDISCARD_DEFAULT:I = 0x0

.field public static final AVDISCARD_NONE:I = -0x10

.field public static final AVDISCARD_NONKEY:I = 0x20

.field public static final AVDISCARD_NONREF:I = 0x8

.field public static final AV_AUDIO_SERVICE_TYPE_COMMENTARY:I = 0x5

.field public static final AV_AUDIO_SERVICE_TYPE_DIALOGUE:I = 0x4

.field public static final AV_AUDIO_SERVICE_TYPE_EFFECTS:I = 0x1

.field public static final AV_AUDIO_SERVICE_TYPE_EMERGENCY:I = 0x6

.field public static final AV_AUDIO_SERVICE_TYPE_HEARING_IMPAIRED:I = 0x3

.field public static final AV_AUDIO_SERVICE_TYPE_KARAOKE:I = 0x8

.field public static final AV_AUDIO_SERVICE_TYPE_MAIN:I = 0x0

.field public static final AV_AUDIO_SERVICE_TYPE_VISUALLY_IMPAIRED:I = 0x2

.field public static final AV_AUDIO_SERVICE_TYPE_VOICE_OVER:I = 0x7

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_012V:I = 0x0

.field public static final AV_CODEC_ID_4XM:I = 0x23

.field public static final AV_CODEC_ID_8BPS:I = 0x31

.field public static final AV_CODEC_ID_8SVX_EXP:I = 0x15037

.field public static final AV_CODEC_ID_8SVX_FIB:I = 0x15038

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_8SVX_RAW:I = 0x0

.field public static final AV_CODEC_ID_A64_MULTI:I = 0x91

.field public static final AV_CODEC_ID_A64_MULTI5:I = 0x92

.field public static final AV_CODEC_ID_AAC:I = 0x15002

.field public static final AV_CODEC_ID_AAC_LATM:I = 0x15032

.field public static final AV_CODEC_ID_AASC:I = 0x4c

.field public static final AV_CODEC_ID_AC3:I = 0x15003

.field public static final AV_CODEC_ID_ADPCM_4XM:I = 0x11007

.field public static final AV_CODEC_ID_ADPCM_ADX:I = 0x11009

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_ADPCM_AFC:I = 0x0

.field public static final AV_CODEC_ID_ADPCM_CT:I = 0x1100c

.field public static final AV_CODEC_ID_ADPCM_EA:I = 0x1100a

.field public static final AV_CODEC_ID_ADPCM_EA_MAXIS_XA:I = 0x1101a

.field public static final AV_CODEC_ID_ADPCM_EA_R1:I = 0x11014

.field public static final AV_CODEC_ID_ADPCM_EA_R2:I = 0x11016

.field public static final AV_CODEC_ID_ADPCM_EA_R3:I = 0x11015

.field public static final AV_CODEC_ID_ADPCM_EA_XAS:I = 0x11019

.field public static final AV_CODEC_ID_ADPCM_G722:I = 0x1101c

.field public static final AV_CODEC_ID_ADPCM_G726:I = 0x1100b

.field public static final AV_CODEC_ID_ADPCM_IMA_AMV:I = 0x11013

.field public static final AV_CODEC_ID_ADPCM_IMA_APC:I = 0x1101d

.field public static final AV_CODEC_ID_ADPCM_IMA_DK3:I = 0x11002

.field public static final AV_CODEC_ID_ADPCM_IMA_DK4:I = 0x11003

.field public static final AV_CODEC_ID_ADPCM_IMA_EA_EACS:I = 0x11018

.field public static final AV_CODEC_ID_ADPCM_IMA_EA_SEAD:I = 0x11017

.field public static final AV_CODEC_ID_ADPCM_IMA_ISS:I = 0x1101b

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_ADPCM_IMA_OKI:I = 0x0

.field public static final AV_CODEC_ID_ADPCM_IMA_QT:I = 0x11000

.field public static final AV_CODEC_ID_ADPCM_IMA_SMJPEG:I = 0x11005

.field public static final AV_CODEC_ID_ADPCM_IMA_WAV:I = 0x11001

.field public static final AV_CODEC_ID_ADPCM_IMA_WS:I = 0x11004

.field public static final AV_CODEC_ID_ADPCM_MS:I = 0x11006

.field public static final AV_CODEC_ID_ADPCM_SBPRO_2:I = 0x11011

.field public static final AV_CODEC_ID_ADPCM_SBPRO_3:I = 0x11010

.field public static final AV_CODEC_ID_ADPCM_SBPRO_4:I = 0x1100f

.field public static final AV_CODEC_ID_ADPCM_SWF:I = 0x1100d

.field public static final AV_CODEC_ID_ADPCM_THP:I = 0x11012

.field public static final AV_CODEC_ID_ADPCM_XA:I = 0x11008

.field public static final AV_CODEC_ID_ADPCM_YAMAHA:I = 0x1100e

.field public static final AV_CODEC_ID_ALAC:I = 0x15010

.field public static final AV_CODEC_ID_AMR_NB:I = 0x12000

.field public static final AV_CODEC_ID_AMR_WB:I = 0x12001

.field public static final AV_CODEC_ID_AMV:I = 0x6d

.field public static final AV_CODEC_ID_ANM:I = 0x88

.field public static final AV_CODEC_ID_ANSI:I = 0x90

.field public static final AV_CODEC_ID_APE:I = 0x15021

.field public static final AV_CODEC_ID_ASV1:I = 0x20

.field public static final AV_CODEC_ID_ASV2:I = 0x21

.field public static final AV_CODEC_ID_ATRAC1:I = 0x1502f

.field public static final AV_CODEC_ID_ATRAC3:I = 0x1501f

.field public static final AV_CODEC_ID_ATRAC3P:I = 0x15028

.field public static final AV_CODEC_ID_AURA:I = 0x7d

.field public static final AV_CODEC_ID_AURA2:I = 0x7e

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_AVRN:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_AVRP:I = 0x0

.field public static final AV_CODEC_ID_AVS:I = 0x54

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_AVUI:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_AYUV:I = 0x0

.field public static final AV_CODEC_ID_BETHSOFTVID:I = 0x69

.field public static final AV_CODEC_ID_BFI:I = 0x77

.field public static final AV_CODEC_ID_BINKAUDIO_DCT:I = 0x15031

.field public static final AV_CODEC_ID_BINKAUDIO_RDFT:I = 0x15030

.field public static final AV_CODEC_ID_BINKVIDEO:I = 0x89

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_BINTEXT:I = 0x0

.field public static final AV_CODEC_ID_BMP:I = 0x50

.field public static final AV_CODEC_ID_BMV_AUDIO:I = 0x15039

.field public static final AV_CODEC_ID_BMV_VIDEO:I = 0x9c

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_BRENDER_PIX:I = 0x0

.field public static final AV_CODEC_ID_C93:I = 0x68

.field public static final AV_CODEC_ID_CAVS:I = 0x59

.field public static final AV_CODEC_ID_CDGRAPHICS:I = 0x86

.field public static final AV_CODEC_ID_CDXL:I = 0xa1

.field public static final AV_CODEC_ID_CELT:I = 0x15034

.field public static final AV_CODEC_ID_CINEPAK:I = 0x2c

.field public static final AV_CODEC_ID_CLJR:I = 0x25

.field public static final AV_CODEC_ID_CLLC:I = 0xa8

.field public static final AV_CODEC_ID_CMV:I = 0x78

.field public static final AV_CODEC_ID_COMFORT_NOISE:I = 0x1503e

.field public static final AV_CODEC_ID_COOK:I = 0x15014

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_CPIA:I = 0x0

.field public static final AV_CODEC_ID_CSCD:I = 0x51

.field public static final AV_CODEC_ID_CYUV:I = 0x1b

.field public static final AV_CODEC_ID_DFA:I = 0x98

.field public static final AV_CODEC_ID_DIRAC:I = 0x76

.field public static final AV_CODEC_ID_DNXHD:I = 0x65

.field public static final AV_CODEC_ID_DPX:I = 0x82

.field public static final AV_CODEC_ID_DSICINAUDIO:I = 0x1501a

.field public static final AV_CODEC_ID_DSICINVIDEO:I = 0x60

.field public static final AV_CODEC_ID_DTS:I = 0x15004

.field public static final AV_CODEC_ID_DVAUDIO:I = 0x15006

.field public static final AV_CODEC_ID_DVB_SUBTITLE:I = 0x17001

.field public static final AV_CODEC_ID_DVB_TELETEXT:I = 0x17007

.field public static final AV_CODEC_ID_DVD_SUBTITLE:I = 0x17000

.field public static final AV_CODEC_ID_DVVIDEO:I = 0x19

.field public static final AV_CODEC_ID_DXA:I = 0x64

.field public static final AV_CODEC_ID_DXTORY:I = 0x9e

.field public static final AV_CODEC_ID_EAC3:I = 0x15029

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_EIA_608:I = 0x0

.field public static final AV_CODEC_ID_ESCAPE124:I = 0x75

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_ESCAPE130:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_EVRC:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_EXR:I = 0x0

.field public static final AV_CODEC_ID_FFMETADATA:I = 0x21000

.field public static final AV_CODEC_ID_FFV1:I = 0x22

.field public static final AV_CODEC_ID_FFVHUFF:I = 0x45

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_FFWAVESYNTH:I = 0x0

.field public static final AV_CODEC_ID_FIRST_AUDIO:I = 0x10000

.field public static final AV_CODEC_ID_FIRST_SUBTITLE:I = 0x17000

.field public static final AV_CODEC_ID_FIRST_UNKNOWN:I = 0x18000

.field public static final AV_CODEC_ID_FLAC:I = 0x1500c

.field public static final AV_CODEC_ID_FLASHSV:I = 0x58

.field public static final AV_CODEC_ID_FLASHSV2:I = 0x85

.field public static final AV_CODEC_ID_FLIC:I = 0x33

.field public static final AV_CODEC_ID_FLV1:I = 0x16

.field public static final AV_CODEC_ID_FRAPS:I = 0x4e

.field public static final AV_CODEC_ID_FRWU:I = 0x84

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_G2M:I = 0x0

.field public static final AV_CODEC_ID_G723_1:I = 0x15035

.field public static final AV_CODEC_ID_G729:I = 0x15036

.field public static final AV_CODEC_ID_GIF:I = 0x63

.field public static final AV_CODEC_ID_GSM:I = 0x15012

.field public static final AV_CODEC_ID_GSM_MS:I = 0x1501e

.field public static final AV_CODEC_ID_H261:I = 0x4

.field public static final AV_CODEC_ID_H263:I = 0x5

.field public static final AV_CODEC_ID_H263I:I = 0x15

.field public static final AV_CODEC_ID_H263P:I = 0x14

.field public static final AV_CODEC_ID_H264:I = 0x1c

.field public static final AV_CODEC_ID_HDMV_PGS_SUBTITLE:I = 0x17006

.field public static final AV_CODEC_ID_HUFFYUV:I = 0x1a

.field public static final AV_CODEC_ID_IAC:I = 0x1503b

.field public static final AV_CODEC_ID_IDCIN:I = 0x30

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_IDF:I = 0x0

.field public static final AV_CODEC_ID_IFF_BYTERUN1:I = 0x8b

.field public static final AV_CODEC_ID_IFF_ILBM:I = 0x8a

.field public static final AV_CODEC_ID_ILBC:I = 0x1503c

.field public static final AV_CODEC_ID_IMC:I = 0x1501b

.field public static final AV_CODEC_ID_INDEO2:I = 0x4d

.field public static final AV_CODEC_ID_INDEO3:I = 0x1d

.field public static final AV_CODEC_ID_INDEO4:I = 0x71

.field public static final AV_CODEC_ID_INDEO5:I = 0x72

.field public static final AV_CODEC_ID_INTERPLAY_DPCM:I = 0x14001

.field public static final AV_CODEC_ID_INTERPLAY_VIDEO:I = 0x28

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_JACOSUB:I = 0x0

.field public static final AV_CODEC_ID_JPEG2000:I = 0x5a

.field public static final AV_CODEC_ID_JPEGLS:I = 0xc

.field public static final AV_CODEC_ID_JV:I = 0x97

.field public static final AV_CODEC_ID_KGV1:I = 0x8c

.field public static final AV_CODEC_ID_KMVC:I = 0x57

.field public static final AV_CODEC_ID_LAGARITH:I = 0x95

.field public static final AV_CODEC_ID_LJPEG:I = 0xa

.field public static final AV_CODEC_ID_LOCO:I = 0x4a

.field public static final AV_CODEC_ID_MACE3:I = 0x15009

.field public static final AV_CODEC_ID_MACE6:I = 0x1500a

.field public static final AV_CODEC_ID_MAD:I = 0x83

.field public static final AV_CODEC_ID_MDEC:I = 0x26

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_MICRODVD:I = 0x0

.field public static final AV_CODEC_ID_MIMIC:I = 0x73

.field public static final AV_CODEC_ID_MJPEG:I = 0x8

.field public static final AV_CODEC_ID_MJPEGB:I = 0x9

.field public static final AV_CODEC_ID_MLP:I = 0x1501d

.field public static final AV_CODEC_ID_MMVIDEO:I = 0x52

.field public static final AV_CODEC_ID_MOTIONPIXELS:I = 0x79

.field public static final AV_CODEC_ID_MOV_TEXT:I = 0x17005

.field public static final AV_CODEC_ID_MP1:I = 0x1502b

.field public static final AV_CODEC_ID_MP2:I = 0x15000

.field public static final AV_CODEC_ID_MP3:I = 0x15001

.field public static final AV_CODEC_ID_MP3ADU:I = 0x1500d

.field public static final AV_CODEC_ID_MP3ON4:I = 0x1500e

.field public static final AV_CODEC_ID_MP4ALS:I = 0x1502e

.field public static final AV_CODEC_ID_MPEG1VIDEO:I = 0x1

.field public static final AV_CODEC_ID_MPEG2TS:I = 0x20000

.field public static final AV_CODEC_ID_MPEG2VIDEO:I = 0x2

.field public static final AV_CODEC_ID_MPEG2VIDEO_XVMC:I = 0x3

.field public static final AV_CODEC_ID_MPEG4:I = 0xd

.field public static final AV_CODEC_ID_MPEG4SYSTEMS:I = 0x20001

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_MPL2:I = 0x0

.field public static final AV_CODEC_ID_MSA1:I = 0xa5

.field public static final AV_CODEC_ID_MSMPEG4V1:I = 0xf

.field public static final AV_CODEC_ID_MSMPEG4V2:I = 0x10

.field public static final AV_CODEC_ID_MSMPEG4V3:I = 0x11

.field public static final AV_CODEC_ID_MSRLE:I = 0x2e

.field public static final AV_CODEC_ID_MSS1:I = 0xa4

.field public static final AV_CODEC_ID_MSS2:I = 0xaa

.field public static final AV_CODEC_ID_MSVIDEO1:I = 0x2f

.field public static final AV_CODEC_ID_MSZH:I = 0x36

.field public static final AV_CODEC_ID_MTS2:I = 0xa7

.field public static final AV_CODEC_ID_MUSEPACK7:I = 0x1501c

.field public static final AV_CODEC_ID_MUSEPACK8:I = 0x15023

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_MVC1:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_MVC2:I = 0x0

.field public static final AV_CODEC_ID_MXPEG:I = 0x94

.field public static final AV_CODEC_ID_NELLYMOSER:I = 0x15022

.field public static final AV_CODEC_ID_NONE:I = 0x0

.field public static final AV_CODEC_ID_NUV:I = 0x56

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_OPUS:I = 0x0

.field public static final AV_CODEC_ID_OPUS_DEPRECATED:I = 0x1503d

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_OTF:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_PAF_AUDIO:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_PAF_VIDEO:I = 0x0

.field public static final AV_CODEC_ID_PAM:I = 0x44

.field public static final AV_CODEC_ID_PBM:I = 0x41

.field public static final AV_CODEC_ID_PCM_ALAW:I = 0x10007

.field public static final AV_CODEC_ID_PCM_BLURAY:I = 0x10018

.field public static final AV_CODEC_ID_PCM_DVD:I = 0x10013

.field public static final AV_CODEC_ID_PCM_F32BE:I = 0x10014

.field public static final AV_CODEC_ID_PCM_F32LE:I = 0x10015

.field public static final AV_CODEC_ID_PCM_F64BE:I = 0x10016

.field public static final AV_CODEC_ID_PCM_F64LE:I = 0x10017

.field public static final AV_CODEC_ID_PCM_LXF:I = 0x10019

.field public static final AV_CODEC_ID_PCM_MULAW:I = 0x10006

.field public static final AV_CODEC_ID_PCM_S16BE:I = 0x10001

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_PCM_S16BE_PLANAR:I = 0x0

.field public static final AV_CODEC_ID_PCM_S16LE:I = 0x10000

.field public static final AV_CODEC_ID_PCM_S16LE_PLANAR:I = 0x10012

.field public static final AV_CODEC_ID_PCM_S24BE:I = 0x1000d

.field public static final AV_CODEC_ID_PCM_S24DAUD:I = 0x10010

.field public static final AV_CODEC_ID_PCM_S24LE:I = 0x1000c

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_PCM_S24LE_PLANAR:I = 0x0

.field public static final AV_CODEC_ID_PCM_S32BE:I = 0x10009

.field public static final AV_CODEC_ID_PCM_S32LE:I = 0x10008

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_PCM_S32LE_PLANAR:I = 0x0

.field public static final AV_CODEC_ID_PCM_S8:I = 0x10004

.field public static final AV_CODEC_ID_PCM_S8_PLANAR:I = 0x1001a

.field public static final AV_CODEC_ID_PCM_U16BE:I = 0x10003

.field public static final AV_CODEC_ID_PCM_U16LE:I = 0x10002

.field public static final AV_CODEC_ID_PCM_U24BE:I = 0x1000f

.field public static final AV_CODEC_ID_PCM_U24LE:I = 0x1000e

.field public static final AV_CODEC_ID_PCM_U32BE:I = 0x1000b

.field public static final AV_CODEC_ID_PCM_U32LE:I = 0x1000a

.field public static final AV_CODEC_ID_PCM_U8:I = 0x10005

.field public static final AV_CODEC_ID_PCM_ZORK:I = 0x10011

.field public static final AV_CODEC_ID_PCX:I = 0x6f

.field public static final AV_CODEC_ID_PGM:I = 0x42

.field public static final AV_CODEC_ID_PGMYUV:I = 0x43

.field public static final AV_CODEC_ID_PICTOR:I = 0x8f

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_PJS:I = 0x0

.field public static final AV_CODEC_ID_PNG:I = 0x3f

.field public static final AV_CODEC_ID_PPM:I = 0x40

.field public static final AV_CODEC_ID_PROBE:I = 0x19000

.field public static final AV_CODEC_ID_PRORES:I = 0x96

.field public static final AV_CODEC_ID_PTX:I = 0x6a

.field public static final AV_CODEC_ID_QCELP:I = 0x15018

.field public static final AV_CODEC_ID_QDM2:I = 0x15013

.field public static final AV_CODEC_ID_QDMC:I = 0x15033

.field public static final AV_CODEC_ID_QDRAW:I = 0x3c

.field public static final AV_CODEC_ID_QPEG:I = 0x3e

.field public static final AV_CODEC_ID_QTRLE:I = 0x38

.field public static final AV_CODEC_ID_R10K:I = 0x93

.field public static final AV_CODEC_ID_R210:I = 0x87

.field public static final AV_CODEC_ID_RALF:I = 0x1503a

.field public static final AV_CODEC_ID_RAWVIDEO:I = 0xe

.field public static final AV_CODEC_ID_RA_144:I = 0x13000

.field public static final AV_CODEC_ID_RA_288:I = 0x13001

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_REALTEXT:I = 0x0

.field public static final AV_CODEC_ID_RL2:I = 0x74

.field public static final AV_CODEC_ID_ROQ:I = 0x27

.field public static final AV_CODEC_ID_ROQ_DPCM:I = 0x14000

.field public static final AV_CODEC_ID_RPZA:I = 0x2b

.field public static final AV_CODEC_ID_RV10:I = 0x6

.field public static final AV_CODEC_ID_RV20:I = 0x7

.field public static final AV_CODEC_ID_RV30:I = 0x46

.field public static final AV_CODEC_ID_RV40:I = 0x47

.field public static final AV_CODEC_ID_S302M:I = 0x1001a

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_SAMI:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_SANM:I = 0x0

.field public static final AV_CODEC_ID_SGI:I = 0x67

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_SGIRLE:I = 0x0

.field public static final AV_CODEC_ID_SHORTEN:I = 0x1500f

.field public static final AV_CODEC_ID_SIPR:I = 0x1502a

.field public static final AV_CODEC_ID_SMACKAUDIO:I = 0x15017

.field public static final AV_CODEC_ID_SMACKVIDEO:I = 0x55

.field public static final AV_CODEC_ID_SMC:I = 0x32

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_SMPTE_KLV:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_SMV:I = 0x0

.field public static final AV_CODEC_ID_SNOW:I = 0x39

.field public static final AV_CODEC_ID_SOL_DPCM:I = 0x14003

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_SONIC:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_SONIC_LS:I = 0x0

.field public static final AV_CODEC_ID_SP5X:I = 0xb

.field public static final AV_CODEC_ID_SPEEX:I = 0x15024

.field public static final AV_CODEC_ID_SRT:I = 0x17008

.field public static final AV_CODEC_ID_SSA:I = 0x17004

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_SUBRIP:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_SUBVIEWER:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_SUBVIEWER1:I = 0x0

.field public static final AV_CODEC_ID_SUNRAST:I = 0x70

.field public static final AV_CODEC_ID_SVQ1:I = 0x17

.field public static final AV_CODEC_ID_SVQ3:I = 0x18

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_TAK:I = 0x0

.field public static final AV_CODEC_ID_TAK_DEPRECATED:I = 0x1503f

.field public static final AV_CODEC_ID_TARGA:I = 0x5f

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_TARGA_Y216:I = 0x0

.field public static final AV_CODEC_ID_TEXT:I = 0x17002

.field public static final AV_CODEC_ID_TGQ:I = 0x7b

.field public static final AV_CODEC_ID_TGV:I = 0x7a

.field public static final AV_CODEC_ID_THEORA:I = 0x1f

.field public static final AV_CODEC_ID_THP:I = 0x66

.field public static final AV_CODEC_ID_TIERTEXSEQVIDEO:I = 0x61

.field public static final AV_CODEC_ID_TIFF:I = 0x62

.field public static final AV_CODEC_ID_TMV:I = 0x80

.field public static final AV_CODEC_ID_TQI:I = 0x7c

.field public static final AV_CODEC_ID_TRUEHD:I = 0x1502d

.field public static final AV_CODEC_ID_TRUEMOTION1:I = 0x34

.field public static final AV_CODEC_ID_TRUEMOTION2:I = 0x4f

.field public static final AV_CODEC_ID_TRUESPEECH:I = 0x15015

.field public static final AV_CODEC_ID_TSCC:I = 0x3a

.field public static final AV_CODEC_ID_TSCC2:I = 0xa6

.field public static final AV_CODEC_ID_TTA:I = 0x15016

.field public static final AV_CODEC_ID_TTF:I = 0x18000

.field public static final AV_CODEC_ID_TWINVQ:I = 0x1502c

.field public static final AV_CODEC_ID_TXD:I = 0x6b

.field public static final AV_CODEC_ID_ULTI:I = 0x3b

.field public static final AV_CODEC_ID_UTVIDEO:I = 0x9b

.field public static final AV_CODEC_ID_V210:I = 0x81

.field public static final AV_CODEC_ID_V210X:I = 0x7f

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_V308:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_V408:I = 0x0

.field public static final AV_CODEC_ID_V410:I = 0x9f

.field public static final AV_CODEC_ID_VB:I = 0x6e

.field public static final AV_CODEC_ID_VBLE:I = 0x9d

.field public static final AV_CODEC_ID_VC1:I = 0x48

.field public static final AV_CODEC_ID_VC1IMAGE:I = 0x9a

.field public static final AV_CODEC_ID_VCR1:I = 0x24

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_VIMA:I = 0x0

.field public static final AV_CODEC_ID_VIXL:I = 0x3d

.field public static final AV_CODEC_ID_VMDAUDIO:I = 0x1500b

.field public static final AV_CODEC_ID_VMDVIDEO:I = 0x35

.field public static final AV_CODEC_ID_VMNC:I = 0x5b

.field public static final AV_CODEC_ID_VORBIS:I = 0x15005

.field public static final AV_CODEC_ID_VOXWARE:I = 0x15020

.field public static final AV_CODEC_ID_VP3:I = 0x1e

.field public static final AV_CODEC_ID_VP5:I = 0x5c

.field public static final AV_CODEC_ID_VP6:I = 0x5d

.field public static final AV_CODEC_ID_VP6A:I = 0x6c

.field public static final AV_CODEC_ID_VP6F:I = 0x5e

.field public static final AV_CODEC_ID_VP8:I = 0x8e

.field public static final AV_CODEC_ID_VP9:I = 0xa9

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_VPLAYER:I = 0x0

.field public static final AV_CODEC_ID_WAVPACK:I = 0x15019

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_WEBVTT:I = 0x0

.field public static final AV_CODEC_ID_WESTWOOD_SND1:I = 0x15011

.field public static final AV_CODEC_ID_WMALOSSLESS:I = 0x15027

.field public static final AV_CODEC_ID_WMAPRO:I = 0x15026

.field public static final AV_CODEC_ID_WMAV1:I = 0x15007

.field public static final AV_CODEC_ID_WMAV2:I = 0x15008

.field public static final AV_CODEC_ID_WMAVOICE:I = 0x15025

.field public static final AV_CODEC_ID_WMV1:I = 0x12

.field public static final AV_CODEC_ID_WMV2:I = 0x13

.field public static final AV_CODEC_ID_WMV3:I = 0x49

.field public static final AV_CODEC_ID_WMV3IMAGE:I = 0x99

.field public static final AV_CODEC_ID_WNV1:I = 0x4b

.field public static final AV_CODEC_ID_WS_VQA:I = 0x2d

.field public static final AV_CODEC_ID_XAN_DPCM:I = 0x14002

.field public static final AV_CODEC_ID_XAN_WC3:I = 0x29

.field public static final AV_CODEC_ID_XAN_WC4:I = 0x2a

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_XBIN:I = 0x0

.field public static final AV_CODEC_ID_XBM:I = 0xa2

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_XFACE:I = 0x0

.field public static final AV_CODEC_ID_XSUB:I = 0x17003

.field public static final AV_CODEC_ID_XWD:I = 0xa0

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_Y41P:I = 0x0

.field public static final AV_CODEC_ID_YOP:I = 0x8d

#the value of this static final field might be set in the static constructor
.field public static final AV_CODEC_ID_YUV4:I = 0x0

.field public static final AV_CODEC_ID_ZEROCODEC:I = 0xa3

.field public static final AV_CODEC_ID_ZLIB:I = 0x37

.field public static final AV_CODEC_ID_ZMBV:I = 0x53

.field public static final AV_CODEC_PROP_BITMAP_SUB:I = 0x10000

.field public static final AV_CODEC_PROP_INTRA_ONLY:I = 0x1

.field public static final AV_CODEC_PROP_LOSSLESS:I = 0x4

.field public static final AV_CODEC_PROP_LOSSY:I = 0x2

.field public static final AV_FIELD_BB:I = 0x3

.field public static final AV_FIELD_BT:I = 0x5

.field public static final AV_FIELD_PROGRESSIVE:I = 0x1

.field public static final AV_FIELD_TB:I = 0x4

.field public static final AV_FIELD_TT:I = 0x2

.field public static final AV_FIELD_UNKNOWN:I = 0x0

.field public static final AV_LOCK_CREATE:I = 0x0

.field public static final AV_LOCK_DESTROY:I = 0x3

.field public static final AV_LOCK_OBTAIN:I = 0x1

.field public static final AV_LOCK_RELEASE:I = 0x2

.field public static final AV_PKT_DATA_H263_MB_INFO:I = 0x3

.field public static final AV_PKT_DATA_JP_DUALMONO:I = 0x47

.field public static final AV_PKT_DATA_MATROSKA_BLOCKADDITIONAL:I = 0x4a

.field public static final AV_PKT_DATA_NEW_EXTRADATA:I = 0x1

.field public static final AV_PKT_DATA_PALETTE:I = 0x0

.field public static final AV_PKT_DATA_PARAM_CHANGE:I = 0x2

.field public static final AV_PKT_DATA_SKIP_SAMPLES:I = 0x46

.field public static final AV_PKT_DATA_STRINGS_METADATA:I = 0x48

.field public static final AV_PKT_DATA_SUBTITLE_POSITION:I = 0x49

.field public static final AV_PKT_FLAG_CORRUPT:I = 0x2

.field public static final AV_PKT_FLAG_KEY:I = 0x1

.field public static final AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_COUNT:I = 0x1

.field public static final AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_LAYOUT:I = 0x2

.field public static final AV_SIDE_DATA_PARAM_CHANGE_DIMENSIONS:I = 0x8

.field public static final AV_SIDE_DATA_PARAM_CHANGE_SAMPLE_RATE:I = 0x4

.field public static final AV_SUBTITLE_FLAG_FORCED:I = 0x1

.field public static final CODEC_CAP_AUTO_THREADS:I = 0x8000

.field public static final CODEC_CAP_CHANNEL_CONF:I = 0x400

.field public static final CODEC_CAP_DELAY:I = 0x20

.field public static final CODEC_CAP_DR1:I = 0x2

.field public static final CODEC_CAP_DRAW_HORIZ_BAND:I = 0x1

.field public static final CODEC_CAP_EXPERIMENTAL:I = 0x200

.field public static final CODEC_CAP_FRAME_THREADS:I = 0x1000

.field public static final CODEC_CAP_HWACCEL:I = 0x10

.field public static final CODEC_CAP_HWACCEL_VDPAU:I = 0x80

.field public static final CODEC_CAP_INTRA_ONLY:I = 0x40000000

.field public static final CODEC_CAP_LOSSLESS:I = -0x80000000

.field public static final CODEC_CAP_NEG_LINESIZES:I = 0x800

.field public static final CODEC_CAP_PARAM_CHANGE:I = 0x4000

.field public static final CODEC_CAP_SLICE_THREADS:I = 0x2000

.field public static final CODEC_CAP_SMALL_LAST_FRAME:I = 0x40

.field public static final CODEC_CAP_SUBFRAMES:I = 0x100

.field public static final CODEC_CAP_TRUNCATED:I = 0x8

.field public static final CODEC_CAP_VARIABLE_FRAME_SIZE:I = 0x10000

.field public static final CODEC_FLAG2_CHUNKS:I = 0x8000

.field public static final CODEC_FLAG2_DROP_FRAME_TIMECODE:I = 0x2000

.field public static final CODEC_FLAG2_FAST:I = 0x1

.field public static final CODEC_FLAG2_IGNORE_CROP:I = 0x10000

.field public static final CODEC_FLAG2_LOCAL_HEADER:I = 0x8

.field public static final CODEC_FLAG2_NO_OUTPUT:I = 0x4

.field public static final CODEC_FLAG2_SHOW_ALL:I = 0x400000

.field public static final CODEC_FLAG2_SKIP_RD:I = 0x4000

.field public static final CODEC_FLAG2_STRICT_GOP:I = 0x2

.field public static final CODEC_FLAG_4MV:I = 0x4

.field public static final CODEC_FLAG_AC_PRED:I = 0x1000000

.field public static final CODEC_FLAG_BITEXACT:I = 0x800000

.field public static final CODEC_FLAG_CBP_RD:I = 0x4000000

.field public static final CODEC_FLAG_CLOSED_GOP:I = -0x80000000

.field public static final CODEC_FLAG_EMU_EDGE:I = 0x4000

.field public static final CODEC_FLAG_GLOBAL_HEADER:I = 0x400000

.field public static final CODEC_FLAG_GMC:I = 0x20

.field public static final CODEC_FLAG_GRAY:I = 0x2000

.field public static final CODEC_FLAG_INPUT_PRESERVED:I = 0x100

.field public static final CODEC_FLAG_INTERLACED_DCT:I = 0x40000

.field public static final CODEC_FLAG_INTERLACED_ME:I = 0x20000000

.field public static final CODEC_FLAG_LOOP_FILTER:I = 0x800

.field public static final CODEC_FLAG_LOW_DELAY:I = 0x80000

.field public static final CODEC_FLAG_MV0:I = 0x40

.field public static final CODEC_FLAG_NORMALIZE_AQP:I = 0x20000

.field public static final CODEC_FLAG_PASS1:I = 0x200

.field public static final CODEC_FLAG_PASS2:I = 0x400

.field public static final CODEC_FLAG_PSNR:I = 0x8000

.field public static final CODEC_FLAG_QPEL:I = 0x10

.field public static final CODEC_FLAG_QP_RD:I = 0x8000000

.field public static final CODEC_FLAG_QSCALE:I = 0x2

.field public static final CODEC_FLAG_TRUNCATED:I = 0x10000

.field public static final FF_BUFFER_HINTS_PRESERVE:I = 0x4

.field public static final FF_BUFFER_HINTS_READABLE:I = 0x2

.field public static final FF_BUFFER_HINTS_REUSABLE:I = 0x8

.field public static final FF_BUFFER_HINTS_VALID:I = 0x1

.field public static final FF_BUFFER_TYPE_COPY:I = 0x8

.field public static final FF_BUFFER_TYPE_INTERNAL:I = 0x1

.field public static final FF_BUFFER_TYPE_SHARED:I = 0x4

.field public static final FF_BUFFER_TYPE_USER:I = 0x2

.field public static final FF_INPUT_BUFFER_PADDING_SIZE:I = 0x10

.field public static final FF_LOSS_ALPHA:I = 0x8

.field public static final FF_LOSS_CHROMA:I = 0x20

.field public static final FF_LOSS_COLORQUANT:I = 0x10

.field public static final FF_LOSS_COLORSPACE:I = 0x4

.field public static final FF_LOSS_DEPTH:I = 0x2

.field public static final FF_LOSS_RESOLUTION:I = 0x1

.field public static final FF_MAX_B_FRAMES:I = 0x10

.field public static final FF_MIN_BUFFER_SIZE:I = 0x4000

.field public static final FF_QSCALE_TYPE_H264:I = 0x2

.field public static final FF_QSCALE_TYPE_MPEG1:I = 0x0

.field public static final FF_QSCALE_TYPE_MPEG2:I = 0x1

.field public static final FF_QSCALE_TYPE_VP56:I = 0x3

#the value of this static final field might be set in the static constructor
.field public static final LIBAVCODEC_BUILD:I = 0x0

.field public static final LIBAVCODEC_IDENT:Ljava/lang/String; = null

.field public static final LIBAVCODEC_VERSION:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final LIBAVCODEC_VERSION_INT:I = 0x0

.field public static final LIBAVCODEC_VERSION_MAJOR:I = 0x36

.field public static final LIBAVCODEC_VERSION_MICRO:I = 0x64

.field public static final LIBAVCODEC_VERSION_MINOR:I = 0x5c

.field public static final MB_TYPE_16x16:I = 0x8

.field public static final MB_TYPE_16x8:I = 0x10

.field public static final MB_TYPE_8x16:I = 0x20

.field public static final MB_TYPE_8x8:I = 0x40

.field public static final MB_TYPE_ACPRED:I = 0x200

.field public static final MB_TYPE_CBP:I = 0x20000

.field public static final MB_TYPE_DIRECT2:I = 0x100

.field public static final MB_TYPE_GMC:I = 0x400

.field public static final MB_TYPE_INTERLACED:I = 0x80

.field public static final MB_TYPE_INTRA16x16:I = 0x2

.field public static final MB_TYPE_INTRA4x4:I = 0x1

.field public static final MB_TYPE_INTRA_PCM:I = 0x4

.field public static final MB_TYPE_L0:I = 0x3000

.field public static final MB_TYPE_L0L1:I = 0xf000

.field public static final MB_TYPE_L1:I = 0xc000

.field public static final MB_TYPE_P0L0:I = 0x1000

.field public static final MB_TYPE_P0L1:I = 0x4000

.field public static final MB_TYPE_P1L0:I = 0x2000

.field public static final MB_TYPE_P1L1:I = 0x8000

.field public static final MB_TYPE_QUANT:I = 0x10000

.field public static final MB_TYPE_SKIP:I = 0x800

.field public static final ME_EPZS:I = 0x5

.field public static final ME_FULL:I = 0x2

.field public static final ME_HEX:I = 0x7

.field public static final ME_ITER:I = 0x9

.field public static final ME_LOG:I = 0x3

.field public static final ME_PHODS:I = 0x4

.field public static final ME_TESA:I = 0xa

.field public static final ME_UMH:I = 0x8

.field public static final ME_X1:I = 0x6

.field public static final ME_ZERO:I = 0x1

.field public static final SUBTITLE_ASS:I = 0x3

.field public static final SUBTITLE_BITMAP:I = 0x1

.field public static final SUBTITLE_NONE:I = 0x0

.field public static final SUBTITLE_TEXT:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x49

    const/16 v7, 0x41

    const/16 v6, 0x53

    const/16 v5, 0x50

    const/16 v4, 0x56

    .line 86
    const-class v0, Lcom/googlecode/javacv/cpp/avutil;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    .line 104
    const/16 v0, 0x36

    const/16 v1, 0x5c

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Lcom/googlecode/javacv/cpp/avutil;->AV_VERSION_INT(III)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->LIBAVCODEC_VERSION_INT:I

    .line 107
    const/16 v0, 0x36

    const/16 v1, 0x5c

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Lcom/googlecode/javacv/cpp/avutil;->AV_VERSION(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/cpp/avcodec;->LIBAVCODEC_VERSION:Ljava/lang/String;

    .line 110
    sget v0, Lcom/googlecode/javacv/cpp/avcodec;->LIBAVCODEC_VERSION_INT:I

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->LIBAVCODEC_BUILD:I

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lavc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/googlecode/javacv/cpp/avcodec;->LIBAVCODEC_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/cpp/avcodec;->LIBAVCODEC_IDENT:Ljava/lang/String;

    .line 344
    const/16 v0, 0x42

    const/16 v1, 0x58

    invoke-static {v0, v5, v8, v1}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_BRENDER_PIX:I

    .line 345
    const/16 v0, 0x59

    const/16 v1, 0x34

    const/16 v2, 0x31

    invoke-static {v0, v1, v2, v5}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_Y41P:I

    .line 346
    const/16 v0, 0x45

    const/16 v1, 0x31

    const/16 v2, 0x33

    const/16 v3, 0x30

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_ESCAPE130:I

    .line 347
    const/16 v0, 0x30

    const/16 v1, 0x45

    const/16 v2, 0x58

    const/16 v3, 0x52

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_EXR:I

    .line 348
    const/16 v0, 0x52

    invoke-static {v7, v4, v0, v5}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_AVRP:I

    .line 350
    const/16 v0, 0x30

    const/16 v1, 0x31

    const/16 v2, 0x32

    invoke-static {v0, v1, v2, v4}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_012V:I

    .line 351
    const/4 v0, 0x0

    const/16 v1, 0x47

    const/16 v2, 0x32

    const/16 v3, 0x4d

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_G2M:I

    .line 352
    const/16 v0, 0x55

    invoke-static {v7, v4, v0, v8}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_AVUI:I

    .line 353
    const/16 v0, 0x59

    const/16 v1, 0x55

    invoke-static {v7, v0, v1, v4}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_AYUV:I

    .line 354
    const/16 v0, 0x54

    const/16 v1, 0x32

    const/16 v2, 0x31

    const/16 v3, 0x36

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_TARGA_Y216:I

    .line 355
    const/16 v0, 0x33

    const/16 v1, 0x30

    const/16 v2, 0x38

    invoke-static {v4, v0, v1, v2}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_V308:I

    .line 356
    const/16 v0, 0x34

    const/16 v1, 0x30

    const/16 v2, 0x38

    invoke-static {v4, v0, v1, v2}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_V408:I

    .line 357
    const/16 v0, 0x59

    const/16 v1, 0x55

    const/16 v2, 0x34

    invoke-static {v0, v1, v4, v2}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_YUV4:I

    .line 358
    const/16 v0, 0x4e

    const/16 v1, 0x4d

    invoke-static {v6, v7, v0, v1}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_SANM:I

    .line 359
    const/16 v0, 0x46

    invoke-static {v5, v7, v0, v4}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_PAF_VIDEO:I

    .line 360
    const/16 v0, 0x52

    const/16 v1, 0x6e

    invoke-static {v7, v4, v0, v1}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_AVRN:I

    .line 361
    const/16 v0, 0x43

    invoke-static {v0, v5, v8, v7}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_CPIA:I

    .line 362
    const/16 v0, 0x58

    const/16 v1, 0x46

    const/16 v2, 0x43

    invoke-static {v0, v1, v7, v2}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_XFACE:I

    .line 363
    const/16 v0, 0x47

    const/16 v1, 0x52

    invoke-static {v6, v0, v8, v1}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_SGIRLE:I

    .line 364
    const/16 v0, 0x4d

    const/16 v1, 0x43

    const/16 v2, 0x31

    invoke-static {v0, v4, v1, v2}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_MVC1:I

    .line 365
    const/16 v0, 0x4d

    const/16 v1, 0x43

    const/16 v2, 0x32

    invoke-static {v0, v4, v1, v2}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_MVC2:I

    .line 397
    const/16 v0, 0x18

    invoke-static {v0, v5, v6, v5}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_PCM_S24LE_PLANAR:I

    .line 398
    const/16 v0, 0x20

    invoke-static {v0, v5, v6, v5}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_PCM_S32LE_PLANAR:I

    .line 399
    const/16 v0, 0x10

    invoke-static {v5, v6, v5, v0}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_PCM_S16BE_PLANAR:I

    .line 432
    const/16 v0, 0x4d

    invoke-static {v4, v8, v0, v7}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_VIMA:I

    .line 433
    const/16 v0, 0x46

    const/16 v1, 0x43

    const/16 v2, 0x20

    invoke-static {v7, v0, v1, v2}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_ADPCM_AFC:I

    .line 434
    const/16 v0, 0x4f

    const/16 v1, 0x4b

    const/16 v2, 0x20

    invoke-static {v0, v1, v8, v2}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_ADPCM_IMA_OKI:I

    .line 515
    const/16 v0, 0x46

    const/16 v1, 0x46

    const/16 v2, 0x57

    invoke-static {v0, v1, v2, v6}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_FFWAVESYNTH:I

    .line 517
    const/16 v0, 0x38

    const/16 v1, 0x58

    invoke-static {v0, v6, v4, v1}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_8SVX_RAW:I

    .line 519
    const/16 v0, 0x4f

    const/16 v1, 0x4e

    const/16 v2, 0x43

    invoke-static {v6, v0, v1, v2}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_SONIC:I

    .line 520
    const/16 v0, 0x4f

    const/16 v1, 0x4e

    const/16 v2, 0x4c

    invoke-static {v6, v0, v1, v2}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_SONIC_LS:I

    .line 521
    const/16 v0, 0x46

    invoke-static {v5, v7, v0, v7}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_PAF_AUDIO:I

    .line 522
    const/16 v0, 0x4f

    const/16 v1, 0x55

    invoke-static {v0, v5, v1, v6}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_OPUS:I

    .line 523
    const/16 v0, 0x74

    const/16 v1, 0x42

    const/16 v2, 0x61

    const/16 v3, 0x4b

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_TAK:I

    .line 524
    const/16 v0, 0x73

    const/16 v1, 0x65

    const/16 v2, 0x76

    const/16 v3, 0x63

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_EVRC:I

    .line 525
    const/16 v0, 0x73

    const/16 v1, 0x73

    const/16 v2, 0x6d

    const/16 v3, 0x76

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_SMV:I

    .line 538
    const/16 v0, 0x6d

    const/16 v1, 0x44

    const/16 v2, 0x44

    invoke-static {v0, v1, v4, v2}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_MICRODVD:I

    .line 539
    const/16 v0, 0x63

    const/16 v1, 0x36

    const/16 v2, 0x30

    const/16 v3, 0x38

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_EIA_608:I

    .line 540
    const/16 v0, 0x4a

    const/16 v1, 0x55

    const/16 v2, 0x42

    invoke-static {v0, v6, v1, v2}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_JACOSUB:I

    .line 541
    const/16 v0, 0x4d

    invoke-static {v6, v7, v0, v8}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_SAMI:I

    .line 542
    const/16 v0, 0x52

    const/16 v1, 0x54

    const/16 v2, 0x58

    const/16 v3, 0x54

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_REALTEXT:I

    .line 543
    const/16 v0, 0x62

    const/16 v1, 0x31

    invoke-static {v6, v0, v4, v1}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_SUBVIEWER1:I

    .line 544
    const/16 v0, 0x75

    const/16 v1, 0x62

    invoke-static {v6, v0, v1, v4}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_SUBVIEWER:I

    .line 545
    const/16 v0, 0x52

    const/16 v1, 0x69

    const/16 v2, 0x70

    invoke-static {v6, v0, v1, v2}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_SUBRIP:I

    .line 546
    const/16 v0, 0x57

    const/16 v1, 0x54

    const/16 v2, 0x54

    invoke-static {v0, v4, v1, v2}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_WEBVTT:I

    .line 547
    const/16 v0, 0x4d

    const/16 v1, 0x4c

    const/16 v2, 0x32

    invoke-static {v0, v5, v1, v2}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_MPL2:I

    .line 548
    const/16 v0, 0x6c

    const/16 v1, 0x72

    invoke-static {v4, v5, v0, v1}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_VPLAYER:I

    .line 549
    const/16 v0, 0x68

    const/16 v1, 0x4a

    invoke-static {v5, v0, v1, v6}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_PJS:I

    .line 554
    const/16 v0, 0x42

    const/16 v1, 0x54

    const/16 v2, 0x58

    const/16 v3, 0x54

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_BINTEXT:I

    .line 555
    const/16 v0, 0x58

    const/16 v1, 0x42

    const/16 v2, 0x4e

    invoke-static {v0, v1, v8, v2}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_XBIN:I

    .line 556
    const/4 v0, 0x0

    const/16 v1, 0x44

    const/16 v2, 0x46

    invoke-static {v0, v8, v1, v2}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_IDF:I

    .line 557
    const/4 v0, 0x0

    const/16 v1, 0x4f

    const/16 v2, 0x54

    const/16 v3, 0x46

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_OTF:I

    .line 558
    const/16 v0, 0x4b

    const/16 v1, 0x4c

    invoke-static {v0, v1, v4, v7}, Lcom/googlecode/javacv/cpp/avutil;->MKBETAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avcodec;->AV_CODEC_ID_SMPTE_KLV:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5218
    return-void
.end method

.method public static native audio_resample(Lcom/googlecode/javacv/cpp/avcodec$ReSampleContext;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "short*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "short*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native audio_resample(Lcom/googlecode/javacv/cpp/avcodec$ReSampleContext;Lcom/googlecode/javacpp/ShortPointer;Lcom/googlecode/javacpp/ShortPointer;I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native audio_resample(Lcom/googlecode/javacv/cpp/avcodec$ReSampleContext;Ljava/nio/Buffer;Ljava/nio/Buffer;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "short*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "short*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native audio_resample(Lcom/googlecode/javacv/cpp/avcodec$ReSampleContext;Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native audio_resample(Lcom/googlecode/javacv/cpp/avcodec$ReSampleContext;[B[BI)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "short*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "short*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native audio_resample(Lcom/googlecode/javacv/cpp/avcodec$ReSampleContext;[S[SI)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native audio_resample_close(Lcom/googlecode/javacv/cpp/avcodec$ReSampleContext;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_audio_resample_init(IIIIIIIIID)Lcom/googlecode/javacv/cpp/avcodec$ReSampleContext;
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
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_bitstream_filter_close(Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilterContext;)V
.end method

.method public static native av_bitstream_filter_filter(Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilterContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Ljava/lang/String;Lcom/googlecode/javacpp/PointerPointer;[ILcom/googlecode/javacpp/BytePointer;II)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
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

.method public static native av_bitstream_filter_init(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilterContext;
.end method

.method public static native av_bitstream_filter_next(Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;)Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;
.end method

.method public static native av_codec_get_codec_descriptor(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecDescriptor;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native av_codec_get_pkt_timebase(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;)Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native av_codec_is_decoder(Lcom/googlecode/javacv/cpp/avcodec$AVCodec;)I
.end method

.method public static native av_codec_is_encoder(Lcom/googlecode/javacv/cpp/avcodec$AVCodec;)I
.end method

.method public static native av_codec_next(Lcom/googlecode/javacv/cpp/avcodec$AVCodec;)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public static native av_codec_set_codec_descriptor(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodecDescriptor;)V
.end method

.method public static native av_codec_set_pkt_timebase(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avutil$AVRational;)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native av_copy_packet(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I
.end method

.method public static native av_destruct_packet(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)V
.end method

.method public static native av_dup_packet(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I
.end method

.method public static native av_fast_malloc(Lcom/googlecode/javacpp/Pointer;[IJ)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned*"
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

.method public static native av_fast_padded_malloc(Lcom/googlecode/javacpp/Pointer;[IJ)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned*"
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

.method public static native av_fast_padded_mallocz(Lcom/googlecode/javacpp/Pointer;[IJ)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned*"
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

.method public static native av_fast_realloc(Lcom/googlecode/javacpp/Pointer;[IJ)Lcom/googlecode/javacpp/Pointer;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned*"
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

.method public static native av_frame_get_best_effort_timestamp(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)J
.end method

.method public static native av_frame_get_channel_layout(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)J
.end method

.method public static native av_frame_get_channels(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)I
.end method

.method public static native av_frame_get_decode_error_flags(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)I
.end method

.method public static native av_frame_get_metadata(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)Lcom/googlecode/javacv/cpp/avutil$AVDictionary;
.end method

.method public static native av_frame_get_pkt_duration(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)J
.end method

.method public static native av_frame_get_pkt_pos(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)J
.end method

.method public static native av_frame_get_pkt_size(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)I
.end method

.method public static native av_frame_get_sample_rate(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)I
.end method

.method public static native av_frame_set_best_effort_timestamp(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;J)V
.end method

.method public static native av_frame_set_channel_layout(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;J)V
.end method

.method public static native av_frame_set_channels(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;I)V
.end method

.method public static native av_frame_set_decode_error_flags(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;I)V
.end method

.method public static native av_frame_set_metadata(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)V
.end method

.method public static native av_frame_set_pkt_duration(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;J)V
.end method

.method public static native av_frame_set_pkt_pos(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;J)V
.end method

.method public static native av_frame_set_pkt_size(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;I)V
.end method

.method public static native av_frame_set_sample_rate(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;I)V
.end method

.method public static native av_free_packet(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)V
.end method

.method public static native av_get_audio_frame_duration(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;I)I
.end method

.method public static native av_get_bits_per_sample(I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVCodecID"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_get_codec_tag_string(Lcom/googlecode/javacpp/BytePointer;JI)J
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "size_t"
        }
    .end annotation
.end method

.method public static native av_get_exact_bits_per_sample(I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVCodecID"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_get_pcm_codec(II)I
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
            "AVCodecID"
        }
    .end annotation
.end method

.method public static native av_get_profile_name(Lcom/googlecode/javacv/cpp/avcodec$AVCodec;I)Ljava/lang/String;
.end method

.method public static native av_grow_packet(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;I)I
.end method

.method public static native av_hwaccel_next(Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;)Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
.end method

.method public static native av_init_packet(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)V
.end method

.method public static native av_lockmgr_register(Lcom/googlecode/javacv/cpp/avcodec$Cb;)I
.end method

.method public static native av_log_ask_for_sample(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;)V
.end method

.method public static native av_log_missing_feature(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;I)V
.end method

.method public static native av_new_packet(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;I)I
.end method

.method public static native av_packet_get_side_data(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;I[I)Lcom/googlecode/javacpp/BytePointer;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPacketSideDataType"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint8_t*"
        }
    .end annotation
.end method

.method public static native av_packet_merge_side_data(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I
.end method

.method public static native av_packet_new_side_data(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;II)Lcom/googlecode/javacpp/BytePointer;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPacketSideDataType"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint8_t*"
        }
    .end annotation
.end method

.method public static native av_packet_shrink_side_data(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;II)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPacketSideDataType"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_packet_split_side_data(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I
.end method

.method public static native av_parser_change(Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacpp/PointerPointer;[ILcom/googlecode/javacpp/BytePointer;II)I
    .parameter
    .end parameter
    .parameter
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

.method public static native av_parser_close(Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;)V
.end method

.method public static native av_parser_init(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public static native av_parser_next(Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;
.end method

.method public static native av_parser_parse2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacpp/PointerPointer;[ILcom/googlecode/javacpp/BytePointer;IJJJ)I
    .parameter
    .end parameter
    .parameter
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
    .parameter
    .end parameter
.end method

.method public static native av_picture_copy(Lcom/googlecode/javacv/cpp/avcodec$AVPicture;Lcom/googlecode/javacv/cpp/avcodec$AVPicture;III)V
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
    .parameter
    .end parameter
.end method

.method public static native av_picture_crop(Lcom/googlecode/javacv/cpp/avcodec$AVPicture;Lcom/googlecode/javacv/cpp/avcodec$AVPicture;III)I
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
    .parameter
    .end parameter
.end method

.method public static native av_picture_pad(Lcom/googlecode/javacv/cpp/avcodec$AVPicture;Lcom/googlecode/javacv/cpp/avcodec$AVPicture;IIIIIII[I)I
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
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_register_bitstream_filter(Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;)V
.end method

.method public static native av_register_codec_parser(Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;)V
.end method

.method public static native av_register_hwaccel(Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;)V
.end method

.method public static native av_resample(Lcom/googlecode/javacv/cpp/avcodec$AVResampleContext;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;[IIII)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "short*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "short*"
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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_resample(Lcom/googlecode/javacv/cpp/avcodec$AVResampleContext;Lcom/googlecode/javacpp/ShortPointer;Lcom/googlecode/javacpp/ShortPointer;[IIII)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_resample(Lcom/googlecode/javacv/cpp/avcodec$AVResampleContext;Ljava/nio/Buffer;Ljava/nio/Buffer;[IIII)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "short*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "short*"
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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_resample(Lcom/googlecode/javacv/cpp/avcodec$AVResampleContext;Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;[IIII)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_resample(Lcom/googlecode/javacv/cpp/avcodec$AVResampleContext;[B[B[IIII)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "short*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "short*"
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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_resample(Lcom/googlecode/javacv/cpp/avcodec$AVResampleContext;[S[S[IIII)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_resample_close(Lcom/googlecode/javacv/cpp/avcodec$AVResampleContext;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_resample_compensate(Lcom/googlecode/javacv/cpp/avcodec$AVResampleContext;II)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_resample_init(IIIIID)Lcom/googlecode/javacv/cpp/avcodec$AVResampleContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_shrink_packet(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;I)V
.end method

.method public static native av_xiphlacing(Lcom/googlecode/javacpp/BytePointer;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned char*"
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public static native avcodec_align_dimensions(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;[I[I)V
.end method

.method public static native avcodec_align_dimensions2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;[I[I[I)V
.end method

.method public static native avcodec_alloc_context3(Lcom/googlecode/javacv/cpp/avcodec$AVCodec;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public static native avcodec_alloc_frame()Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public static native avcodec_close(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;)I
.end method

.method public static native avcodec_configuration()Ljava/lang/String;
.end method

.method public static native avcodec_copy_context(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;)I
.end method

.method public static native avcodec_decode_audio4(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVFrame;[ILcom/googlecode/javacv/cpp/avcodec$AVPacket;)I
.end method

.method public static native avcodec_decode_subtitle2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVSubtitle;[ILcom/googlecode/javacv/cpp/avcodec$AVPacket;)I
.end method

.method public static native avcodec_decode_video2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVFrame;[ILcom/googlecode/javacv/cpp/avcodec$AVPacket;)I
.end method

.method public static native avcodec_default_execute(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Execute$Func;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/IntPointer;II)I
.end method

.method public static native avcodec_default_execute2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Execute2$Func2;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/IntPointer;I)I
.end method

.method public static native avcodec_default_free_buffers(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;)V
.end method

.method public static native avcodec_default_get_buffer(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)I
.end method

.method public static native avcodec_default_get_format(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVPixelFormat"
        }
    .end annotation
.end method

.method public static native avcodec_default_reget_buffer(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)I
.end method

.method public static native avcodec_default_release_buffer(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)V
.end method

.method public static native avcodec_descriptor_get(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecDescriptor;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVCodecID"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native avcodec_descriptor_get_by_name(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecDescriptor;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native avcodec_descriptor_next(Lcom/googlecode/javacv/cpp/avcodec$AVCodecDescriptor;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecDescriptor;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native avcodec_encode_audio2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;Lcom/googlecode/javacv/cpp/avcodec$AVFrame;[I)I
.end method

.method public static native avcodec_encode_subtitle(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacv/cpp/avcodec$AVSubtitle;)I
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

.method public static native avcodec_encode_video2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;Lcom/googlecode/javacv/cpp/avcodec$AVFrame;[I)I
.end method

.method public static native avcodec_fill_audio_frame(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;IILcom/googlecode/javacpp/BytePointer;II)I
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

.method public static native avcodec_find_best_pix_fmt(JII[I)I
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVPixelFormat"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avcodec_find_best_pix_fmt2(IIII[I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVPixelFormat"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avcodec_find_best_pix_fmt_of_2(IIII[I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVPixelFormat"
        }
    .end annotation
.end method

.method public static native avcodec_find_best_pix_fmt_of_list([III[I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat*"
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVPixelFormat"
        }
    .end annotation
.end method

.method public static native avcodec_find_decoder(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVCodecID"
            }
        .end annotation
    .end parameter
.end method

.method public static native avcodec_find_decoder_by_name(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public static native avcodec_find_encoder(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVCodecID"
            }
        .end annotation
    .end parameter
.end method

.method public static native avcodec_find_encoder_by_name(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public static native avcodec_flush_buffers(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;)V
.end method

.method public static native avcodec_free_frame(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native avcodec_get_chroma_sub_sample(I[I[I)V
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

.method public static native avcodec_get_class()Lcom/googlecode/javacv/cpp/avutil$AVClass;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native avcodec_get_context_defaults3(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodec;)I
.end method

.method public static native avcodec_get_edge_width()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public static native avcodec_get_frame_class()Lcom/googlecode/javacv/cpp/avutil$AVClass;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native avcodec_get_frame_defaults(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)V
.end method

.method public static native avcodec_get_name(I)Ljava/lang/String;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVCodecID"
            }
        .end annotation
    .end parameter
.end method

.method public static native avcodec_get_pix_fmt_loss(III)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
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
.end method

.method public static native avcodec_get_subtitle_rect_class()Lcom/googlecode/javacv/cpp/avutil$AVClass;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native avcodec_get_type(I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVCodecID"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVMediaType"
        }
    .end annotation
.end method

.method public static native avcodec_is_open(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;)I
.end method

.method public static native avcodec_license()Ljava/lang/String;
.end method

.method public static native avcodec_open2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodec;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native avcodec_pix_fmt_to_codec_tag(I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public static native avcodec_register(Lcom/googlecode/javacv/cpp/avcodec$AVCodec;)V
.end method

.method public static native avcodec_register_all()V
.end method

.method public static native avcodec_set_dimensions(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;II)V
.end method

.method public static native avcodec_string(Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacv/cpp/avcodec$AVCodecContext;I)V
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

.method public static native avcodec_version()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public static native avpicture_alloc(Lcom/googlecode/javacv/cpp/avcodec$AVPicture;III)I
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

.method public static native avpicture_deinterlace(Lcom/googlecode/javacv/cpp/avcodec$AVPicture;Lcom/googlecode/javacv/cpp/avcodec$AVPicture;III)I
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
    .parameter
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avpicture_fill(Lcom/googlecode/javacv/cpp/avcodec$AVPicture;Lcom/googlecode/javacpp/BytePointer;III)I
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
.end method

.method public static native avpicture_free(Lcom/googlecode/javacv/cpp/avcodec$AVPicture;)V
.end method

.method public static native avpicture_get_size(III)I
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

.method public static native avpicture_layout(Lcom/googlecode/javacv/cpp/avcodec$AVPicture;IIILcom/googlecode/javacpp/BytePointer;I)I
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avsubtitle_free(Lcom/googlecode/javacv/cpp/avcodec$AVSubtitle;)V
.end method
