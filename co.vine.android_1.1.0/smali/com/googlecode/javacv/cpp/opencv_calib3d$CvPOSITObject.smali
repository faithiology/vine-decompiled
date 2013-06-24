.class public Lcom/googlecode/javacv/cpp/opencv_calib3d$CvPOSITObject;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_calib3d.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Opaque;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_calib3d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvPOSITObject"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_calib3d$CvPOSITObject$ReleaseDeallocator;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 97
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public static create(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;I)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvPOSITObject;
    .locals 2
    .parameter "points"
    .parameter "point_count"

    .prologue
    .line 102
    invoke-static {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_calib3d;->cvCreatePOSITObject(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;I)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvPOSITObject;

    move-result-object v0

    .line 103
    .local v0, p:Lcom/googlecode/javacv/cpp/opencv_calib3d$CvPOSITObject;
    if-eqz v0, :cond_0

    .line 104
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_calib3d$CvPOSITObject$ReleaseDeallocator;

    invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_calib3d$CvPOSITObject$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_calib3d$CvPOSITObject;)V

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_calib3d$CvPOSITObject;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;

    .line 106
    :cond_0
    return-object v0
.end method


# virtual methods
.method public release()V
    .locals 0

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_calib3d$CvPOSITObject;->deallocate()V

    .line 111
    return-void
.end method
