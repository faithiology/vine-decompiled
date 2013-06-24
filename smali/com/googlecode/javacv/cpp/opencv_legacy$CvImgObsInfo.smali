.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvImgObsInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo$ReleaseDeallocator;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 363
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;->allocate()V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;->allocateArray(I)V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method

.method public static create(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;
    .locals 2
    .parameter "numObs"
    .parameter "obsSize"

    .prologue
    .line 375
    invoke-static {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvCreateObsInfo(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;

    move-result-object v0

    .line 376
    .local v0, p:Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;
    if-eqz v0, :cond_0

    .line 377
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo$ReleaseDeallocator;

    invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;)V

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;

    .line 379
    :cond_0
    return-object v0
.end method


# virtual methods
.method public native mix()Lcom/googlecode/javacpp/IntPointer;
.end method

.method public native mix(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;
.end method

.method public native obs()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native obs(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;
.end method

.method public native obs_size()I
.end method

.method public native obs_size(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;
.end method

.method public native obs_x()I
.end method

.method public native obs_x(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;
.end method

.method public native obs_y()I
.end method

.method public native obs_y(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 371
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;

    return-object v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;->deallocate()V

    .line 384
    return-void
.end method

.method public native state()Lcom/googlecode/javacpp/IntPointer;
.end method

.method public native state(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;
.end method
