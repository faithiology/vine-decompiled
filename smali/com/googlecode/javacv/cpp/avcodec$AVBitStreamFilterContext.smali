.class public Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilterContext;
.super Lcom/googlecode/javacpp/Pointer;
.source "avcodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avcodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVBitStreamFilterContext"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 5046
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5047
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilterContext;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 5048
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilterContext;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 5049
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native filter()Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;
.end method

.method public native filter(Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;)Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilterContext;
.end method

.method public native next()Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilterContext;
.end method

.method public native next(Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilterContext;)Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilterContext;
.end method

.method public native parser(Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;)Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilterContext;
.end method

.method public native parser()Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5045
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilterContext;->position(I)Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilterContext;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilterContext;
    .locals 1
    .parameter "position"

    .prologue
    .line 5054
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilterContext;

    return-object v0
.end method

.method public native priv_data()Lcom/googlecode/javacpp/Pointer;
.end method

.method public native priv_data(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilterContext;
.end method
