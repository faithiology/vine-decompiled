.class public Lcom/googlecode/javacv/cpp/opencv_objdetect$CascadeClassifier;
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
    name = "CascadeClassifier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_objdetect$CascadeClassifier$MaskGenerator;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 381
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_objdetect$CascadeClassifier;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "filename"

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_objdetect$CascadeClassifier;->allocate(Ljava/lang/String;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(Ljava/lang/String;)V
.end method


# virtual methods
.method public native detectMultiScale(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;DIILcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)V
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

.method public native detectMultiScale(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/DoublePointer;DIILcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Z)V
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
.end method

.method public native empty()Z
.end method

.method public native getFeatureType()I
.end method

.method public native getMaskGenerator()Lcom/googlecode/javacv/cpp/opencv_objdetect$CascadeClassifier$MaskGenerator;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public native getOriginalWindowSize()Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native isOldFormatCascade()Z
.end method

.method public native load(Ljava/lang/String;)Z
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

.method public native setFaceDetectionMaskGenerator()V
.end method

.method public native setImage(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Z
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
.end method

.method public native setMaskGenerator(Lcom/googlecode/javacv/cpp/opencv_objdetect$CascadeClassifier$MaskGenerator;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
.end method
