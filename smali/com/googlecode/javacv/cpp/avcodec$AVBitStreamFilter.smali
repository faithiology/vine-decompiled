.class public Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;
.super Lcom/googlecode/javacpp/Pointer;
.source "avcodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avcodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVBitStreamFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter$Close;,
        Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter$Filter;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 5065
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5066
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 5067
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 5068
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native close()Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter$Close;
.end method

.method public native close(Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter$Close;)Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;
.end method

.method public native filter()Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter$Filter;
.end method

.method public native filter(Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter$Filter;)Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;
.end method

.method public native name()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char *"
        }
    .end annotation
.end method

.method public native name(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;
.end method

.method public native next()Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;
.end method

.method public native next(Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;)Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5064
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;->position(I)Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;
    .locals 1
    .parameter "position"

    .prologue
    .line 5073
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;

    return-object v0
.end method

.method public native priv_data_size()I
.end method

.method public native priv_data_size(I)Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;
.end method
