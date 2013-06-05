.class public Lcom/googlecode/javacv/cpp/dc1394$pollfd;
.super Lcom/googlecode/javacpp/Pointer;
.source "dc1394.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/dc1394;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "pollfd"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 81
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/dc1394$pollfd;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/dc1394$pollfd;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native events(S)Lcom/googlecode/javacv/cpp/dc1394$pollfd;
.end method

.method public native events()S
.end method

.method public native fd()I
.end method

.method public native fd(I)Lcom/googlecode/javacv/cpp/dc1394$pollfd;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/dc1394$pollfd;->position(I)Lcom/googlecode/javacv/cpp/dc1394$pollfd;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/dc1394$pollfd;
    .locals 1
    .parameter "position"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/dc1394$pollfd;

    return-object v0
.end method

.method public native revents(S)Lcom/googlecode/javacv/cpp/dc1394$pollfd;
.end method

.method public native revents()S
.end method
