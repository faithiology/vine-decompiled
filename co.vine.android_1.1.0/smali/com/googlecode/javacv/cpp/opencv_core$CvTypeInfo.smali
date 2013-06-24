.class public Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvTypeInfo"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 3492
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3493
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 3494
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 3495
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native clone()Lcom/googlecode/javacv/cpp/opencv_core$CvCloneFunc;
.end method

.method public native clone(Lcom/googlecode/javacv/cpp/opencv_core$CvCloneFunc;)Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3491
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;->clone()Lcom/googlecode/javacv/cpp/opencv_core$CvCloneFunc;

    move-result-object v0

    return-object v0
.end method

.method public native flags()I
.end method

.method public native flags(I)Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.end method

.method public native header_size()I
.end method

.method public native header_size(I)Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.end method

.method public native is_instance()Lcom/googlecode/javacv/cpp/opencv_core$CvIsInstanceFunc;
.end method

.method public native is_instance(Lcom/googlecode/javacv/cpp/opencv_core$CvIsInstanceFunc;)Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.end method

.method public native next()Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.end method

.method public native next(Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;)Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3491
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 3500
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;

    return-object v0
.end method

.method public native prev()Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.end method

.method public native prev(Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;)Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.end method

.method public native read()Lcom/googlecode/javacv/cpp/opencv_core$CvReadFunc;
.end method

.method public native read(Lcom/googlecode/javacv/cpp/opencv_core$CvReadFunc;)Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.end method

.method public native release()Lcom/googlecode/javacv/cpp/opencv_core$CvReleaseFunc;
.end method

.method public native release(Lcom/googlecode/javacv/cpp/opencv_core$CvReleaseFunc;)Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.end method

.method public native type_name()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public native type_name(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.end method

.method public native write(Lcom/googlecode/javacv/cpp/opencv_core$CvWriteFunc;)Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.end method

.method public native write()Lcom/googlecode/javacv/cpp/opencv_core$CvWriteFunc;
.end method
