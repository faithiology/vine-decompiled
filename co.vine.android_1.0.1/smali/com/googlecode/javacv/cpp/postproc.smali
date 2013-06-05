.class public Lcom/googlecode/javacv/cpp/postproc;
.super Ljava/lang/Object;
.source "postproc.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Properties;
    value = {
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            cinclude = {
                "<libpostproc/postprocess.h>"
            }
            define = {
                "__STDC_CONSTANT_MACROS"
            }
            includepath = {
                "/usr/local/include/ffmpeg/:/usr/local/include/:/opt/local/include/ffmpeg/:/opt/local/include/:/usr/include/ffmpeg/"
            }
            link = {
                "postproc@.52",
                "avutil@.52"
            }
            linkpath = {
                "/usr/local/lib/:/usr/local/lib64/:/opt/local/lib/:/opt/local/lib64/"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            define = {
                "__STDC_CONSTANT_MACROS",
                "pp_help pp_help_bad[]; __declspec(dllimport) extern const char pp_help"
            }
            includepath = {
                "C:/MinGW/local/include/ffmpeg/;C:/MinGW/include/ffmpeg/;C:/MinGW/local/include/;src/main/resources/com/googlecode/javacv/cpp/"
            }
            linkpath = {
                "C:/MinGW/local/lib/;C:/MinGW/lib/"
            }
            preload = {
                "postproc-52"
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
        Lcom/googlecode/javacv/cpp/postproc$pp_mode;,
        Lcom/googlecode/javacv/cpp/postproc$pp_context;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final LIBPOSTPROC_BUILD:I = 0x0

.field public static final LIBPOSTPROC_IDENT:Ljava/lang/String; = null

.field public static final LIBPOSTPROC_VERSION:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final LIBPOSTPROC_VERSION_INT:I = 0x0

.field public static final LIBPOSTPROC_VERSION_MAJOR:I = 0x34

.field public static final LIBPOSTPROC_VERSION_MICRO:I = 0x64

.field public static final LIBPOSTPROC_VERSION_MINOR:I = 0x2

.field public static final PP_CPU_CAPS_3DNOW:I = 0x40000000

.field public static final PP_CPU_CAPS_ALTIVEC:I = 0x10000000

.field public static final PP_CPU_CAPS_AUTO:I = 0x80000

.field public static final PP_CPU_CAPS_MMX:I = -0x80000000

.field public static final PP_CPU_CAPS_MMX2:I = 0x20000000

.field public static final PP_FORMAT:I = 0x8

.field public static final PP_FORMAT_411:I = 0xa

.field public static final PP_FORMAT_420:I = 0x19

.field public static final PP_FORMAT_422:I = 0x9

.field public static final PP_FORMAT_444:I = 0x8

.field public static final PP_PICT_TYPE_QP2:I = 0x10

.field public static final PP_QUALITY_MAX:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/16 v2, 0x34

    const/4 v1, 0x2

    .line 73
    const-class v0, Lcom/googlecode/javacv/cpp/avutil;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    .line 85
    invoke-static {v2, v1, v3}, Lcom/googlecode/javacv/cpp/avutil;->AV_VERSION_INT(III)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/postproc;->LIBPOSTPROC_VERSION_INT:I

    .line 88
    invoke-static {v2, v1, v3}, Lcom/googlecode/javacv/cpp/avutil;->AV_VERSION(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/cpp/postproc;->LIBPOSTPROC_VERSION:Ljava/lang/String;

    .line 91
    sget v0, Lcom/googlecode/javacv/cpp/postproc;->LIBPOSTPROC_VERSION_INT:I

    sput v0, Lcom/googlecode/javacv/cpp/postproc;->LIBPOSTPROC_BUILD:I

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postproc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/googlecode/javacv/cpp/postproc;->LIBPOSTPROC_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/cpp/postproc;->LIBPOSTPROC_IDENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method public static native postproc_configuration()Ljava/lang/String;
.end method

.method public static native postproc_license()Ljava/lang/String;
.end method

.method public static native postproc_version()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public static native pp_free_context(Lcom/googlecode/javacv/cpp/postproc$pp_context;)V
.end method

.method public static native pp_free_mode(Lcom/googlecode/javacv/cpp/postproc$pp_mode;)V
.end method

.method public static native pp_get_context(III)Lcom/googlecode/javacv/cpp/postproc$pp_context;
.end method

.method public static native pp_get_mode_by_name_and_quality(Ljava/lang/String;I)Lcom/googlecode/javacv/cpp/postproc$pp_mode;
.end method

.method public static native pp_help()Ljava/lang/String;
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "\n #undef pp_help \n pp_help"
        }
    .end annotation
.end method

.method public static native pp_postprocess(Lcom/googlecode/javacpp/PointerPointer;[ILcom/googlecode/javacpp/PointerPointer;[III[BILcom/googlecode/javacv/cpp/postproc$pp_mode;Lcom/googlecode/javacv/cpp/postproc$pp_context;I)V
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
                "QP_STORE_T*"
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
