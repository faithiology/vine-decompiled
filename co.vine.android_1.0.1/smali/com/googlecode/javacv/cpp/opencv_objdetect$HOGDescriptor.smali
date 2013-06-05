.class public Lcom/googlecode/javacv/cpp/opencv_objdetect$HOGDescriptor;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_objdetect.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_objdetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HOGDescriptor"
.end annotation


# static fields
.field public static final DEFAULT_NLEVELS:I = 0x40

.field public static final L2Hys:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 528
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_objdetect$HOGDescriptor;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 540
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;IIDIDZI)V
    .locals 0
    .parameter "_winSize"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter "_blockSize"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter "_blockStride"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter "_cellSize"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter "_nbins"
    .end parameter
    .parameter "_derivAperture"
    .end parameter
    .parameter "_winSigma"
    .end parameter
    .parameter "_histogramNormType"
    .end parameter
    .parameter "_L2HysThreshold"
    .end parameter
    .parameter "_gammaCorrection"
    .end parameter
    .parameter "_nlevels"
    .end parameter

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 535
    invoke-direct/range {p0 .. p13}, Lcom/googlecode/javacv/cpp/opencv_objdetect$HOGDescriptor;->allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;IIDIDZI)V

    .line 537
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_objdetect$HOGDescriptor;)V
    .locals 0
    .parameter "d"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter

    .prologue
    .line 539
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_objdetect$HOGDescriptor;->allocate(Lcom/googlecode/javacv/cpp/opencv_objdetect$HOGDescriptor;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "filename"

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_objdetect$HOGDescriptor;->allocate(Ljava/lang/String;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;IIDIDZI)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_objdetect$HOGDescriptor;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method

.method private native allocate(Ljava/lang/String;)V
.end method

.method public static native getDaimlerPeopleDetector()Lcom/googlecode/javacpp/FloatPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
    .end annotation
.end method

.method public static native getDefaultPeopleDetector()Lcom/googlecode/javacpp/FloatPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
    .end annotation
.end method


# virtual methods
.method public native L2HysThreshold()D
.end method

.method public native L2HysThreshold(D)Lcom/googlecode/javacv/cpp/opencv_objdetect$HOGDescriptor;
.end method

.method public native blockSize()Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native blockSize(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)Lcom/googlecode/javacv/cpp/opencv_objdetect$HOGDescriptor;
.end method

.method public native blockStride()Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native blockStride(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)Lcom/googlecode/javacv/cpp/opencv_objdetect$HOGDescriptor;
.end method

.method public native cellSize()Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native cellSize(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)Lcom/googlecode/javacv/cpp/opencv_objdetect$HOGDescriptor;
.end method

.method public native checkDetectorSize()Z
.end method

.method public native compute(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvPoint,cv::Point"
        .end annotation
    .end parameter
.end method

.method public native computeGradient(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public native copyTo(Lcom/googlecode/javacv/cpp/opencv_objdetect$HOGDescriptor;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method

.method public native derivAperture()I
.end method

.method public native derivAperture(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$HOGDescriptor;
.end method

.method public native detect(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;DLcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvPoint,cv::Point"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvPoint,cv::Point"
        .end annotation
    .end parameter
.end method

.method public native detect(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Lcom/googlecode/javacpp/DoublePointer;DLcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvPoint,cv::Point"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvPoint,cv::Point"
        .end annotation
    .end parameter
.end method

.method public native detectMultiScale(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;DLcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;DDZ)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvRect,cv::Rect"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
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

.method public native detectMultiScale(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;DLcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;DI)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvRect,cv::Rect"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public native detectMultiScale(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacpp/DoublePointer;DLcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;DDZ)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvRect,cv::Rect"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
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

.method public native detectMultiScaleROI(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacv/cpp/opencv_objdetect$DetectionROI;DI)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvRect,cv::Rect"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public native detectROI(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Lcom/googlecode/javacpp/DoublePointer;DLcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvPoint,cv::Point"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvPoint,cv::Point"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public native gammaCorrection(Z)Lcom/googlecode/javacv/cpp/opencv_objdetect$HOGDescriptor;
.end method

.method public native gammaCorrection()Z
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation
.end method

.method public native getDescriptorSize()J
.end method

.method public native getWinSigma()D
.end method

.method public native histogramNormType()I
.end method

.method public native histogramNormType(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$HOGDescriptor;
.end method

.method public native load(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public native nbins()I
.end method

.method public native nbins(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$HOGDescriptor;
.end method

.method public native nlevels()I
.end method

.method public native nlevels(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$HOGDescriptor;
.end method

.method public native read(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;)Z
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Adapter;
            argc = 0x2
            value = "FileNodeAdapter"
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public native readALTModel(Ljava/lang/String;)V
.end method

.method public native save(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native setSVMDetector(Lcom/googlecode/javacpp/FloatPointer;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
.end method

.method public native setSVMDetector(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
.end method

.method public native svmDetector()Lcom/googlecode/javacpp/FloatPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
    .end annotation
.end method

.method public native svmDetector(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_objdetect$HOGDescriptor;
.end method

.method public native winSigma()D
.end method

.method public native winSigma(D)Lcom/googlecode/javacv/cpp/opencv_objdetect$HOGDescriptor;
.end method

.method public native winSize()Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native winSize(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)Lcom/googlecode/javacv/cpp/opencv_objdetect$HOGDescriptor;
.end method

.method public native write(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Adapter;
            value = "FileStorageAdapter"
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method
