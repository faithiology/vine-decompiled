.class public Lcom/googlecode/javacv/cpp/avdevice;
.super Ljava/lang/Object;
.source "avdevice.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Properties;
    value = {
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            cinclude = {
                "<libavdevice/avdevice.h>"
            }
            define = {
                "__STDC_CONSTANT_MACROS"
            }
            includepath = {
                "/usr/local/include/ffmpeg/:/usr/local/include/:/opt/local/include/ffmpeg/:/opt/local/include/:/usr/include/ffmpeg/"
            }
            link = {
                "avdevice@.54",
                "avfilter@.3",
                "swscale@.2",
                "swresample@.0",
                "postproc@.52",
                "avformat@.54",
                "avcodec@.54",
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
                "avdevice-54"
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


# static fields
#the value of this static final field might be set in the static constructor
.field public static final LIBAVDEVICE_BUILD:I = 0x0

.field public static final LIBAVDEVICE_IDENT:Ljava/lang/String; = null

.field public static final LIBAVDEVICE_VERSION:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final LIBAVDEVICE_VERSION_INT:I = 0x0

.field public static final LIBAVDEVICE_VERSION_MAJOR:I = 0x36

.field public static final LIBAVDEVICE_VERSION_MICRO:I = 0x67

.field public static final LIBAVDEVICE_VERSION_MINOR:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x67

    const/16 v2, 0x36

    const/4 v1, 0x3

    .line 62
    const-class v0, Lcom/googlecode/javacv/cpp/avfilter;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    .line 75
    invoke-static {v2, v1, v3}, Lcom/googlecode/javacv/cpp/avutil;->AV_VERSION_INT(III)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avdevice;->LIBAVDEVICE_VERSION_INT:I

    .line 78
    invoke-static {v2, v1, v3}, Lcom/googlecode/javacv/cpp/avutil;->AV_VERSION(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/cpp/avdevice;->LIBAVDEVICE_VERSION:Ljava/lang/String;

    .line 81
    sget v0, Lcom/googlecode/javacv/cpp/avdevice;->LIBAVDEVICE_VERSION_INT:I

    sput v0, Lcom/googlecode/javacv/cpp/avdevice;->LIBAVDEVICE_BUILD:I

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lavf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/googlecode/javacv/cpp/avdevice;->LIBAVDEVICE_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/cpp/avdevice;->LIBAVDEVICE_IDENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native avdevice_configuration()Ljava/lang/String;
.end method

.method public static native avdevice_license()Ljava/lang/String;
.end method

.method public static native avdevice_register_all()V
.end method

.method public static native avdevice_version()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method
