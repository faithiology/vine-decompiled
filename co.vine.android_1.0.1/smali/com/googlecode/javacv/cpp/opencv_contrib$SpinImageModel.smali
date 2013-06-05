.class public Lcom/googlecode/javacv/cpp/opencv_contrib$SpinImageModel;
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
    name = "SpinImageModel"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 352
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_contrib$SpinImageModel;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_contrib$Mesh3D;)V
    .locals 0
    .parameter "mesh"

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_contrib$SpinImageModel;->allocate(Lcom/googlecode/javacv/cpp/opencv_contrib$Mesh3D;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_contrib$Mesh3D;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method

.method public static native spinCorrelation(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;F[F)Z
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method


# virtual methods
.method public native T_GeometriccConsistency()F
.end method

.method public native T_GeometriccConsistency(F)Lcom/googlecode/javacv/cpp/opencv_contrib$SpinImageModel;
.end method

.method public native T_GroupingCorespondances()F
.end method

.method public native T_GroupingCorespondances(F)Lcom/googlecode/javacv/cpp/opencv_contrib$SpinImageModel;
.end method

.method public native binSize()F
.end method

.method public native binSize(F)Lcom/googlecode/javacv/cpp/opencv_contrib$SpinImageModel;
.end method

.method public native compute()V
.end method

.method public native gamma()F
.end method

.method public native gamma(F)Lcom/googlecode/javacv/cpp/opencv_contrib$SpinImageModel;
.end method

.method public native getMesh()Lcom/googlecode/javacv/cpp/opencv_contrib$Mesh3D;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native getSpinCount()J
.end method

.method public native getSpinImage(J)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputMat;
    .end annotation
.end method

.method public native getSpinNormal(J)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native getSpinVertex(J)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native imageWidth()I
.end method

.method public native imageWidth(I)Lcom/googlecode/javacv/cpp/opencv_contrib$SpinImageModel;
.end method

.method public native lambda()F
.end method

.method public native lambda(F)Lcom/googlecode/javacv/cpp/opencv_contrib$SpinImageModel;
.end method

.method public native match(Lcom/googlecode/javacv/cpp/opencv_contrib$SpinImageModel;Lcom/googlecode/javacv/cpp/opencv_contrib$Vec2iVectorVector;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method

.method public native minNeighbors()I
.end method

.method public native minNeighbors(I)Lcom/googlecode/javacv/cpp/opencv_contrib$SpinImageModel;
.end method

.method public native normalRadius()F
.end method

.method public native normalRadius(F)Lcom/googlecode/javacv/cpp/opencv_contrib$SpinImageModel;
.end method

.method public native packRandomScaledSpins(ZJJ)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputMat;
    .end annotation
.end method

.method public native selectRandomSubset(F)V
.end method

.method public native setLogger(Lcom/googlecode/javacpp/Pointer;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "std::ostream*"
            }
        .end annotation
    .end parameter
.end method

.method public native setSubset([I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
.end method
