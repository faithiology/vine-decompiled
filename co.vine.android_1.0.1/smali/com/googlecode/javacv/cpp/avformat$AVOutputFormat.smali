.class public Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.super Lcom/googlecode/javacpp/Pointer;
.source "avformat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avformat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVOutputFormat"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 992
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 993
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 994
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 995
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native audio_codec()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVCodecID"
        }
    .end annotation
.end method

.method public native audio_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method

.method public native codec_tag()Lcom/googlecode/javacpp/PointerPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const AVCodecTag * const *"
        }
    .end annotation
.end method

.method public native codec_tag(Lcom/googlecode/javacpp/PointerPointer;)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method

.method public native extensions()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public native extensions(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method

.method public native flags()I
.end method

.method public native flags(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method

.method public native long_name()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public native long_name(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method

.method public native mime_type()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public native mime_type(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method

.method public native name()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public native name(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 991
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->position(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
    .locals 1
    .parameter "position"

    .prologue
    .line 1000
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    return-object v0
.end method

.method public native priv_class(Lcom/googlecode/javacv/cpp/avutil$AVClass;)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method

.method public native priv_class()Lcom/googlecode/javacv/cpp/avutil$AVClass;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native subtitle_codec()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVCodecID"
        }
    .end annotation
.end method

.method public native subtitle_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method

.method public native video_codec()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVCodecID"
        }
    .end annotation
.end method

.method public native video_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method
