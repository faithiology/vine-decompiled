.class public Lcom/googlecode/javacv/cpp/opencv_contrib$Mesh3D;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_contrib.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_contrib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mesh3D"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_contrib$Mesh3D$EmptyMeshException;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 302
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_contrib$Mesh3D;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;)V
    .locals 0
    .parameter "vtx"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_contrib$Mesh3D;->allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvPoint3D32f,cv::Point3f"
        .end annotation
    .end parameter
.end method


# virtual methods
.method public native buildOctree()V
.end method

.method public native clearOctree()V
.end method

.method public native computeNormals(FI)V
.end method

.method public native computeNormals([IFI)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public native estimateResolution(F)F
.end method

.method public native normals(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;)Lcom/googlecode/javacv/cpp/opencv_contrib$Mesh3D;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public native normals()Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;
    .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        value = "CvPoint3D32f,cv::Point3f"
    .end annotation
.end method

.method public native octree(Lcom/googlecode/javacv/cpp/opencv_contrib$Octree;)Lcom/googlecode/javacv/cpp/opencv_contrib$Mesh3D;
.end method

.method public native octree()Lcom/googlecode/javacv/cpp/opencv_contrib$Octree;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native resolution()F
.end method

.method public native resolution(F)Lcom/googlecode/javacv/cpp/opencv_contrib$Mesh3D;
.end method

.method public native vtx(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;)Lcom/googlecode/javacv/cpp/opencv_contrib$Mesh3D;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public native vtx()Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;
    .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        value = "CvPoint3D32f,cv::Point3f"
    .end annotation
.end method

.method public native writeAsVrml(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvScalar, cv::Scalar"
        .end annotation
    .end parameter
.end method
