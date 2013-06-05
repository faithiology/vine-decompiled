.class public Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptor;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OneWayDescriptor"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1959
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1960
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptor;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1961
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public native Allocate(ILcom/googlecode/javacv/cpp/opencv_core$CvSize;I)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public native EstimatePose(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[I[F)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method

.method public native EstimatePosePCA(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;[I[FLcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public native GenerateSamples(ILcom/googlecode/javacv/cpp/opencv_core$IplImage;I)V
.end method

.method public native GenerateSamplesFast(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptor;)V
.end method

.method public native GetCenter()Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native GetFeatureName()Ljava/lang/String;
.end method

.method public native GetInputPatchSize()Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native GetPCACoeffs()Lcom/googlecode/javacv/cpp/opencv_core$CvMatArray;
.end method

.method public native GetPCADimHigh()I
.end method

.method public native GetPCADimLow()I
.end method

.method public native GetPatch(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native GetPatchSize()Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native GetPose(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvAffinePose;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native Initialize(ILcom/googlecode/javacv/cpp/opencv_core$IplImage;Ljava/lang/String;I)V
.end method

.method public native InitializeFast(ILcom/googlecode/javacv/cpp/opencv_core$IplImage;Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptor;)V
.end method

.method public native InitializePCACoeffs(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
.end method

.method public native ProjectPCASample(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
.end method

.method public native ReadByName(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;)I
.end method

.method public native Save(Ljava/lang/String;)V
.end method

.method public native SetPCADimHigh(I)V
.end method

.method public native SetPCADimLow(I)V
.end method

.method public native SetTransforms(Lcom/googlecode/javacv/cpp/opencv_legacy$CvAffinePose;Lcom/googlecode/javacv/cpp/opencv_core$CvMatArray;)V
.end method

.method public native Write(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;)V
.end method
