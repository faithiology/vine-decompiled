.class public Lcom/googlecode/javacv/cpp/dc1394$dc1394trigger_sources_t;
.super Lcom/googlecode/javacpp/Pointer;
.source "dc1394.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/dc1394;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dc1394trigger_sources_t"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 559
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/dc1394$dc1394trigger_sources_t;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/dc1394$dc1394trigger_sources_t;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 562
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native num()I
.end method

.method public native num(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394trigger_sources_t;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 558
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/dc1394$dc1394trigger_sources_t;->position(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394trigger_sources_t;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394trigger_sources_t;
    .locals 1
    .parameter "position"

    .prologue
    .line 567
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/dc1394$dc1394trigger_sources_t;

    return-object v0
.end method

.method public native sources(I)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394trigger_source_t"
        }
    .end annotation
.end method

.method public native sources(II)Lcom/googlecode/javacv/cpp/dc1394$dc1394trigger_sources_t;
.end method
