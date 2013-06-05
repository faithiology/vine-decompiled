.class public Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
.super Lcom/googlecode/javacpp/Pointer;
.source "avformat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avformat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVInputFormat"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1051
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1052
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1053
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1054
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native codec_tag()Lcom/googlecode/javacpp/PointerPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const AVCodecTag * const *"
        }
    .end annotation
.end method

.method public native codec_tag(Lcom/googlecode/javacpp/PointerPointer;)Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
.end method

.method public native extensions()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public native extensions(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
.end method

.method public native flags()I
.end method

.method public native flags(I)Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
.end method

.method public native long_name()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public native long_name(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
.end method

.method public native name()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public native name(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1050
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;->position(I)Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
    .locals 1
    .parameter "position"

    .prologue
    .line 1059
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;

    return-object v0
.end method

.method public native priv_class(Lcom/googlecode/javacv/cpp/avutil$AVClass;)Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
.end method

.method public native priv_class()Lcom/googlecode/javacv/cpp/avutil$AVClass;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method
