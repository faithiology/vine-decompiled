.class public Lcom/googlecode/javacpp/ShortPointer;
.super Lcom/googlecode/javacpp/Pointer;
.source "ShortPointer.java"


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "size"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 66
    :try_start_0
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/ShortPointer;->allocateArray(I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No native JavaCPP library in memory. (Has Loader.load() been called?)"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ShortBuffer;)V
    .locals 2
    .parameter "buffer"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Ljava/nio/Buffer;)V

    .line 51
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->array()[S

    move-result-object v0

    .line 53
    .local v0, array:[S
    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/googlecode/javacpp/ShortPointer;->allocateArray(I)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/ShortPointer;->put([S)Lcom/googlecode/javacpp/ShortPointer;

    .line 55
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/ShortPointer;->position(I)Lcom/googlecode/javacpp/ShortPointer;

    .line 56
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/ShortPointer;->limit(I)Lcom/googlecode/javacpp/ShortPointer;

    .line 58
    .end local v0           #array:[S
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([S)V
    .locals 1
    .parameter "array"

    .prologue
    .line 39
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/googlecode/javacpp/ShortPointer;-><init>(I)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/ShortPointer;->put([S)Lcom/googlecode/javacpp/ShortPointer;

    .line 41
    return-void
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public bridge synthetic asBuffer()Ljava/nio/Buffer;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/googlecode/javacpp/ShortPointer;->asBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/googlecode/javacpp/ShortPointer;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic capacity(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/ShortPointer;->capacity(I)Lcom/googlecode/javacpp/ShortPointer;

    move-result-object v0

    return-object v0
.end method

.method public capacity(I)Lcom/googlecode/javacpp/ShortPointer;
    .locals 1
    .parameter "capacity"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->capacity(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/ShortPointer;

    return-object v0
.end method

.method public get([S)Lcom/googlecode/javacpp/ShortPointer;
    .locals 2
    .parameter "array"

    .prologue
    .line 104
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/googlecode/javacpp/ShortPointer;->get([SII)Lcom/googlecode/javacpp/ShortPointer;

    move-result-object v0

    return-object v0
.end method

.method public native get([SII)Lcom/googlecode/javacpp/ShortPointer;
.end method

.method public get()S
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/ShortPointer;->get(I)S

    move-result v0

    return v0
.end method

.method public native get(I)S
.end method

.method public bridge synthetic limit(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/ShortPointer;->limit(I)Lcom/googlecode/javacpp/ShortPointer;

    move-result-object v0

    return-object v0
.end method

.method public limit(I)Lcom/googlecode/javacpp/ShortPointer;
    .locals 1
    .parameter "limit"

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->limit(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/ShortPointer;

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/ShortPointer;->position(I)Lcom/googlecode/javacpp/ShortPointer;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacpp/ShortPointer;
    .locals 1
    .parameter "position"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/ShortPointer;

    return-object v0
.end method

.method public native put(IS)Lcom/googlecode/javacpp/ShortPointer;
.end method

.method public put(S)Lcom/googlecode/javacpp/ShortPointer;
    .locals 1
    .parameter "s"

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/googlecode/javacpp/ShortPointer;->put(IS)Lcom/googlecode/javacpp/ShortPointer;

    move-result-object v0

    return-object v0
.end method

.method public put([S)Lcom/googlecode/javacpp/ShortPointer;
    .locals 2
    .parameter "array"

    .prologue
    .line 106
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/googlecode/javacpp/ShortPointer;->put([SII)Lcom/googlecode/javacpp/ShortPointer;

    move-result-object v0

    return-object v0
.end method

.method public native put([SII)Lcom/googlecode/javacpp/ShortPointer;
.end method
