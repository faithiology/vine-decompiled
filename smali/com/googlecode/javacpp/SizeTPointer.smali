.class public Lcom/googlecode/javacpp/SizeTPointer;
.super Lcom/googlecode/javacpp/Pointer;
.source "SizeTPointer.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Name;
    value = {
        "size_t"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "size"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 43
    :try_start_0
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/SizeTPointer;->allocateArray(I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
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
    .line 49
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public bridge synthetic capacity(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/SizeTPointer;->capacity(I)Lcom/googlecode/javacpp/SizeTPointer;

    move-result-object v0

    return-object v0
.end method

.method public capacity(I)Lcom/googlecode/javacpp/SizeTPointer;
    .locals 1
    .parameter "capacity"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->capacity(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/SizeTPointer;

    return-object v0
.end method

.method public get()J
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/SizeTPointer;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public native get(I)J
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "size_t"
        }
    .end annotation
.end method

.method public bridge synthetic limit(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/SizeTPointer;->limit(I)Lcom/googlecode/javacpp/SizeTPointer;

    move-result-object v0

    return-object v0
.end method

.method public limit(I)Lcom/googlecode/javacpp/SizeTPointer;
    .locals 1
    .parameter "limit"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->limit(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/SizeTPointer;

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/SizeTPointer;->position(I)Lcom/googlecode/javacpp/SizeTPointer;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacpp/SizeTPointer;
    .locals 1
    .parameter "position"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/SizeTPointer;

    return-object v0
.end method

.method public native put(IJ)Lcom/googlecode/javacpp/SizeTPointer;
.end method

.method public put(J)Lcom/googlecode/javacpp/SizeTPointer;
    .locals 1
    .parameter "s"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/googlecode/javacpp/SizeTPointer;->put(IJ)Lcom/googlecode/javacpp/SizeTPointer;

    move-result-object v0

    return-object v0
.end method
