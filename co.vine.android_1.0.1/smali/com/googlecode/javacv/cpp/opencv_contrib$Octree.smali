.class public Lcom/googlecode/javacv/cpp/opencv_contrib$Octree;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_contrib.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_contrib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Octree"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_contrib$Octree$Node;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 259
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_contrib$Octree;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;II)V
    .locals 0
    .parameter "points"
    .parameter "maxLevels"
    .parameter "minPoints"

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 287
    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_contrib$Octree;->allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;II)V

    .line 288
    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;II)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvPoint3D32f,cv::Point3f"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method


# virtual methods
.method public native buildTree(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;II)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvPoint3D32f,cv::Point3f"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public native getNodes()Lcom/googlecode/javacv/cpp/opencv_contrib$Octree$Node;
    .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
    .end annotation
.end method

.method public native getPointsWithinSphere(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;FLcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvPoint3D32f,cv::Point3f"
        .end annotation
    .end parameter
.end method
