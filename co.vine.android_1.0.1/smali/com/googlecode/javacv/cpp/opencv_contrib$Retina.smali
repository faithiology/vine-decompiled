.class public Lcom/googlecode/javacv/cpp/opencv_contrib$Retina;
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
    name = "Retina"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_contrib$Retina$RetinaParameters;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 900
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 909
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)V
    .locals 0
    .parameter "inputSize"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter

    .prologue
    .line 901
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 902
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_contrib$Retina;->allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)V

    .line 903
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;ZIZDD)V
    .locals 0
    .parameter "inputSize"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter "colorMode"
    .end parameter
    .parameter "colorSamplingMethod"
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "cv::RETINA_COLORSAMPLINGMETHOD"
            }
        .end annotation
    .end parameter
    .parameter "useRetinaLogSampling"
    .end parameter
    .parameter "reductionFactor"
    .end parameter
    .parameter "samplingStrenght"
    .end parameter

    .prologue
    .line 906
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 907
    invoke-direct/range {p0 .. p8}, Lcom/googlecode/javacv/cpp/opencv_contrib$Retina;->allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;ZIZDD)V

    .line 908
    return-void
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;ZIZDD)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
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
                "cv::RETINA_COLORSAMPLINGMETHOD"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method


# virtual methods
.method public native activateContoursProcessing(Z)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
.end method

.method public native activateMovingContoursProcessing(Z)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
.end method

.method public native clearBuffers()V
.end method

.method public native getMagno(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
.end method

.method public native getParameters()Lcom/googlecode/javacv/cpp/opencv_contrib$Retina$RetinaParameters;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native getParvo(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
.end method

.method public native inputSize()Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native outputSize()Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native printSetup()Ljava/lang/String;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native run(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
.end method

.method public native setColorSaturation(ZF)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public native setup(Lcom/googlecode/javacv/cpp/opencv_contrib$Retina$RetinaParameters;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public native setup(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Z)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Adapter;
            value = "FileStorageAdapter"
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
.end method

.method public native setup(Ljava/lang/String;Z)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
.end method

.method public native setupIPLMagnoChannel(ZDDDDDDD)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public native setupOPLandIPLParvoChannel(ZZDDDDDDD)V
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
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public native write(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Adapter;
            value = "FileStorageAdapter"
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public native write(Ljava/lang/String;)V
.end method
