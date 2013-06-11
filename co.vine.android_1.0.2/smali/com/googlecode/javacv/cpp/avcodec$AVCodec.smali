.class public Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.super Lcom/googlecode/javacpp/Pointer;
.source "avcodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avcodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVCodec"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 3452
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3453
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avcodec$AVCodec;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 3454
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodec;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 3455
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native capabilities()I
.end method

.method public native capabilities(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public native channel_layouts()Lcom/googlecode/javacpp/LongPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const uint64_t*"
        }
    .end annotation
.end method

.method public native channel_layouts(Lcom/googlecode/javacpp/LongPointer;)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public native id()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVCodecID"
        }
    .end annotation
.end method

.method public native id(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public native long_name()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public native long_name(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public native max_lowres()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint8_t"
        }
    .end annotation
.end method

.method public native max_lowres(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public native name()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public native name(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public native pix_fmts()Lcom/googlecode/javacpp/IntPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const AVPixelFormat*"
        }
    .end annotation
.end method

.method public native pix_fmts(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3451
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodec;->position(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
    .locals 1
    .parameter "position"

    .prologue
    .line 3460
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    return-object v0
.end method

.method public native priv_class(Lcom/googlecode/javacv/cpp/avutil$AVClass;)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public native priv_class()Lcom/googlecode/javacv/cpp/avutil$AVClass;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native profiles(Lcom/googlecode/javacv/cpp/avcodec$AVProfile;)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public native profiles()Lcom/googlecode/javacv/cpp/avcodec$AVProfile;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native sample_fmts()Lcom/googlecode/javacpp/IntPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const AVSampleFormat*"
        }
    .end annotation
.end method

.method public native sample_fmts(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public native supported_framerates(Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public native supported_framerates()Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native supported_samplerates()Lcom/googlecode/javacpp/IntPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native supported_samplerates(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public native type()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVMediaType"
        }
    .end annotation
.end method

.method public native type(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method
