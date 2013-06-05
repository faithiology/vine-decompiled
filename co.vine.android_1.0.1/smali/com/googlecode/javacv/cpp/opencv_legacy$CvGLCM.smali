.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvGLCM;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Opaque;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvGLCM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvGLCM$ReleaseDeallocator;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 968
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 969
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 970
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public static create(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGLCM;
    .locals 3
    .parameter "srcImage"
    .parameter "stepMagnitude"

    .prologue
    .line 973
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGLCM;->create(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;I[III)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGLCM;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;I[III)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGLCM;
    .locals 2
    .parameter "srcImage"
    .parameter "stepMagnitude"
    .parameter "stepDirections"
    .parameter "numStepDirections"
    .parameter "optimizationType"

    .prologue
    .line 978
    invoke-static {p0, p1, p2, p3, p4}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvCreateGLCM(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;I[III)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGLCM;

    move-result-object v0

    .line 980
    .local v0, p:Lcom/googlecode/javacv/cpp/opencv_legacy$CvGLCM;
    if-eqz v0, :cond_0

    .line 981
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGLCM$ReleaseDeallocator;

    invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGLCM$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_legacy$CvGLCM;)V

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGLCM;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;

    .line 983
    :cond_0
    return-object v0
.end method


# virtual methods
.method public release()V
    .locals 0

    .prologue
    .line 987
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGLCM;->deallocate()V

    .line 988
    return-void
.end method
