.class public Lcom/googlecode/javacpp/BoolPointer;
.super Lcom/googlecode/javacpp/Pointer;
.source "BoolPointer.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Name;
    value = {
        "bool"
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
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/BoolPointer;->allocateArray(I)V
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
.method public capacity(I)Lcom/googlecode/javacpp/BoolPointer;
    .locals 1
    .parameter "capacity"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->capacity(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/BoolPointer;

    return-object v0
.end method

.method public bridge synthetic capacity(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/BoolPointer;->capacity(I)Lcom/googlecode/javacpp/BoolPointer;

    move-result-object v0

    return-object v0
.end method

.method public get()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/BoolPointer;->get(I)Z

    move-result v0

    return v0
.end method

.method public native get(I)Z
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation
.end method

.method public limit(I)Lcom/googlecode/javacpp/BoolPointer;
    .locals 1
    .parameter "limit"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->limit(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/BoolPointer;

    return-object v0
.end method

.method public bridge synthetic limit(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/BoolPointer;->limit(I)Lcom/googlecode/javacpp/BoolPointer;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacpp/BoolPointer;
    .locals 1
    .parameter "position"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/BoolPointer;

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/BoolPointer;->position(I)Lcom/googlecode/javacpp/BoolPointer;

    move-result-object v0

    return-object v0
.end method

.method public native put(IZ)Lcom/googlecode/javacpp/BoolPointer;
.end method

.method public put(Z)Lcom/googlecode/javacpp/BoolPointer;
    .locals 1
    .parameter "b"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/googlecode/javacpp/BoolPointer;->put(IZ)Lcom/googlecode/javacpp/BoolPointer;

    move-result-object v0

    return-object v0
.end method
