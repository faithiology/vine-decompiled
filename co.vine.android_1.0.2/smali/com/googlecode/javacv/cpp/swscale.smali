.class public Lcom/googlecode/javacv/cpp/swscale;
.super Ljava/lang/Object;
.source "swscale.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Properties;
    value = {
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            cinclude = {
                "<libswscale/swscale.h>"
            }
            define = {
                "__STDC_CONSTANT_MACROS"
            }
            includepath = {
                "/usr/local/include/ffmpeg/:/usr/local/include/:/opt/local/include/ffmpeg/:/opt/local/include/:/usr/include/ffmpeg/"
            }
            link = {
                "swscale@.2",
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
                "swscale-2"
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
        Lcom/googlecode/javacv/cpp/swscale$SwsContext;,
        Lcom/googlecode/javacv/cpp/swscale$SwsFilter;,
        Lcom/googlecode/javacv/cpp/swscale$SwsVector;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final LIBSWSCALE_BUILD:I = 0x0

.field public static final LIBSWSCALE_IDENT:Ljava/lang/String; = null

.field public static final LIBSWSCALE_VERSION:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final LIBSWSCALE_VERSION_INT:I = 0x0

.field public static final LIBSWSCALE_VERSION_MAJOR:I = 0x2

.field public static final LIBSWSCALE_VERSION_MICRO:I = 0x64

.field public static final LIBSWSCALE_VERSION_MINOR:I = 0x2

.field public static final SWS_ACCURATE_RND:I = 0x40000

.field public static final SWS_AREA:I = 0x20

.field public static final SWS_BICUBIC:I = 0x4

.field public static final SWS_BICUBLIN:I = 0x40

.field public static final SWS_BILINEAR:I = 0x2

.field public static final SWS_BITEXACT:I = 0x80000

.field public static final SWS_CS_DEFAULT:I = 0x5

.field public static final SWS_CS_FCC:I = 0x4

.field public static final SWS_CS_ITU601:I = 0x5

.field public static final SWS_CS_ITU624:I = 0x5

.field public static final SWS_CS_ITU709:I = 0x1

.field public static final SWS_CS_SMPTE170M:I = 0x5

.field public static final SWS_CS_SMPTE240M:I = 0x7

.field public static final SWS_DIRECT_BGR:I = 0x8000

.field public static final SWS_ERROR_DIFFUSION:I = 0x800000

.field public static final SWS_FAST_BILINEAR:I = 0x1

.field public static final SWS_FULL_CHR_H_INP:I = 0x4000

.field public static final SWS_FULL_CHR_H_INT:I = 0x2000

.field public static final SWS_GAUSS:I = 0x80

.field public static final SWS_LANCZOS:I = 0x200

.field public static final SWS_MAX_REDUCE_CUTOFF:D = 0.0020

.field public static final SWS_PARAM_DEFAULT:I = 0x1e240

.field public static final SWS_POINT:I = 0x10

.field public static final SWS_PRINT_INFO:I = 0x1000

.field public static final SWS_SINC:I = 0x100

.field public static final SWS_SPLINE:I = 0x400

.field public static final SWS_SRC_V_CHR_DROP_MASK:I = 0x30000

.field public static final SWS_SRC_V_CHR_DROP_SHIFT:I = 0x10

.field public static final SWS_X:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x2

    .line 71
    const-class v0, Lcom/googlecode/javacv/cpp/avutil;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    .line 94
    invoke-static {v1, v1, v2}, Lcom/googlecode/javacv/cpp/avutil;->AV_VERSION_INT(III)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/swscale;->LIBSWSCALE_VERSION_INT:I

    .line 97
    invoke-static {v1, v1, v2}, Lcom/googlecode/javacv/cpp/avutil;->AV_VERSION(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/cpp/swscale;->LIBSWSCALE_VERSION:Ljava/lang/String;

    .line 100
    sget v0, Lcom/googlecode/javacv/cpp/swscale;->LIBSWSCALE_VERSION_INT:I

    sput v0, Lcom/googlecode/javacv/cpp/swscale;->LIBSWSCALE_BUILD:I

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SwS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/googlecode/javacv/cpp/swscale;->LIBSWSCALE_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/cpp/swscale;->LIBSWSCALE_IDENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    return-void
.end method

.method public static native sws_addVec(Lcom/googlecode/javacv/cpp/swscale$SwsVector;Lcom/googlecode/javacv/cpp/swscale$SwsVector;)V
.end method

.method public static native sws_allocVec(I)Lcom/googlecode/javacv/cpp/swscale$SwsVector;
.end method

.method public static native sws_alloc_context()Lcom/googlecode/javacv/cpp/swscale$SwsContext;
.end method

.method public static native sws_cloneVec(Lcom/googlecode/javacv/cpp/swscale$SwsVector;)Lcom/googlecode/javacv/cpp/swscale$SwsVector;
.end method

.method public static native sws_convVec(Lcom/googlecode/javacv/cpp/swscale$SwsVector;Lcom/googlecode/javacv/cpp/swscale$SwsVector;)V
.end method

.method public static native sws_convertPalette8ToPacked24(Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/BytePointer;)V
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
.end method

.method public static native sws_convertPalette8ToPacked32(Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/BytePointer;)V
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
.end method

.method public static native sws_freeContext(Lcom/googlecode/javacv/cpp/swscale$SwsContext;)V
.end method

.method public static native sws_freeFilter(Lcom/googlecode/javacv/cpp/swscale$SwsFilter;)V
.end method

.method public static native sws_freeVec(Lcom/googlecode/javacv/cpp/swscale$SwsVector;)V
.end method

.method public static native sws_getCachedContext(Lcom/googlecode/javacv/cpp/swscale$SwsContext;IIIIIIILcom/googlecode/javacv/cpp/swscale$SwsFilter;Lcom/googlecode/javacv/cpp/swscale$SwsFilter;[D)Lcom/googlecode/javacv/cpp/swscale$SwsContext;
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
.end method

.method public static native sws_getCoefficients(I)Lcom/googlecode/javacpp/IntPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native sws_getColorspaceDetails(Lcom/googlecode/javacv/cpp/swscale$SwsContext;Lcom/googlecode/javacpp/IntPointer;[ILcom/googlecode/javacpp/IntPointer;[I[I[I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
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

.method public static native sws_getConstVec(DI)Lcom/googlecode/javacv/cpp/swscale$SwsVector;
.end method

.method public static native sws_getDefaultFilter(FFFFFFI)Lcom/googlecode/javacv/cpp/swscale$SwsFilter;
.end method

.method public static native sws_getGaussianVec(DD)Lcom/googlecode/javacv/cpp/swscale$SwsVector;
.end method

.method public static native sws_getIdentityVec()Lcom/googlecode/javacv/cpp/swscale$SwsVector;
.end method

.method public static native sws_get_class()Lcom/googlecode/javacv/cpp/avutil$AVClass;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native sws_init_context(Lcom/googlecode/javacv/cpp/swscale$SwsContext;Lcom/googlecode/javacv/cpp/swscale$SwsFilter;Lcom/googlecode/javacv/cpp/swscale$SwsFilter;)I
.end method

.method public static native sws_isSupportedInput(I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
.end method

.method public static native sws_isSupportedOutput(I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
.end method

.method public static native sws_normalizeVec(Lcom/googlecode/javacv/cpp/swscale$SwsVector;D)V
.end method

.method public static native sws_printVec2(Lcom/googlecode/javacv/cpp/swscale$SwsVector;Lcom/googlecode/javacv/cpp/avutil$AVClass;I)V
.end method

.method public static native sws_scale(Lcom/googlecode/javacv/cpp/swscale$SwsContext;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/IntPointer;IILcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/IntPointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t**"
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native sws_scale(Lcom/googlecode/javacv/cpp/swscale$SwsContext;Lcom/googlecode/javacpp/BytePointer;[IIILcom/googlecode/javacpp/BytePointer;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t**"
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native sws_scale(Lcom/googlecode/javacv/cpp/swscale$SwsContext;Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;IILcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t**"
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
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native sws_scale(Lcom/googlecode/javacv/cpp/swscale$SwsContext;Lcom/googlecode/javacpp/PointerPointer;[IIILcom/googlecode/javacpp/PointerPointer;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t**"
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
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native sws_scaleVec(Lcom/googlecode/javacv/cpp/swscale$SwsVector;D)V
.end method

.method public static native sws_setColorspaceDetails(Lcom/googlecode/javacv/cpp/swscale$SwsContext;[II[IIIII)I
.end method

.method public static native sws_shiftVec(Lcom/googlecode/javacv/cpp/swscale$SwsVector;I)V
.end method

.method public static native sws_subVec(Lcom/googlecode/javacv/cpp/swscale$SwsVector;Lcom/googlecode/javacv/cpp/swscale$SwsVector;)V
.end method

.method public static native swscale_configuration()Ljava/lang/String;
.end method

.method public static native swscale_license()Ljava/lang/String;
.end method

.method public static native swscale_version()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method
