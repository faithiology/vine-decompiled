.class public Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;
.super Lcom/googlecode/javacpp/Pointer;
.source "avcodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avcodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVCodecParser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser$Split;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser$Parser_close;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser$Parser_parse;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser$Parser_init;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 4367
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4368
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 4369
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 4370
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native codec_ids(I)I
.end method

.method public native codec_ids(II)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;
.end method

.method public native next()Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;
.end method

.method public native next(Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;
.end method

.method public native parser_close()Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser$Parser_close;
.end method

.method public native parser_close(Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser$Parser_close;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;
.end method

.method public native parser_init()Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser$Parser_init;
.end method

.method public native parser_init(Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser$Parser_init;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;
.end method

.method public native parser_parse()Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser$Parser_parse;
.end method

.method public native parser_parse(Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser$Parser_parse;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4366
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;->position(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;
    .locals 1
    .parameter "position"

    .prologue
    .line 4375
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;

    return-object v0
.end method

.method public native priv_data_size()I
.end method

.method public native priv_data_size(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;
.end method

.method public native split()Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser$Split;
.end method

.method public native split(Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser$Split;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;
.end method
