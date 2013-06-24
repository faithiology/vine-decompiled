.class public Lcom/googlecode/javacv/cpp/opencv_contrib$SelfSimDescriptor;
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
    name = "SelfSimDescriptor"
.end annotation


# static fields
.field public static final DEFAULT_LARGE_SIZE:I = 0x29

.field public static final DEFAULT_NUM_ANGLES:I = 0x14

.field public static final DEFAULT_NUM_DISTANCE_BUCKETS:I = 0x7

.field public static final DEFAULT_SMALL_SIZE:I = 0x5

.field public static final DEFAULT_START_DISTANCE_BUCKET:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 437
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_contrib$SelfSimDescriptor;->allocate()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .parameter "_ssize"
    .parameter "_lsize"
    .parameter "_startDistanceBucket"
    .parameter "_numberOfDistanceBuckets"
    .parameter "_nangles"

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 443
    invoke-direct/range {p0 .. p5}, Lcom/googlecode/javacv/cpp/opencv_contrib$SelfSimDescriptor;->allocate(IIIII)V

    .line 444
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 446
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_contrib$SelfSimDescriptor;)V
    .locals 0
    .parameter "ss"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_contrib$SelfSimDescriptor;->allocate(Lcom/googlecode/javacv/cpp/opencv_contrib$SelfSimDescriptor;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IIIII)V
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_contrib$SelfSimDescriptor;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method


# virtual methods
.method public native SSD(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
.end method

.method public native compute(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;)V
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvPoint,cv::Point"
        .end annotation
    .end parameter
.end method

.method public native computeLogPolarMapping(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
.end method

.method public native getDescriptorSize()J
.end method

.method public native getGridSize(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native largeSize()I
.end method

.method public native largeSize(I)Lcom/googlecode/javacv/cpp/opencv_contrib$SelfSimDescriptor;
.end method

.method public native numberOfAngles()I
.end method

.method public native numberOfAngles(I)Lcom/googlecode/javacv/cpp/opencv_contrib$SelfSimDescriptor;
.end method

.method public native numberOfDistanceBuckets()I
.end method

.method public native numberOfDistanceBuckets(I)Lcom/googlecode/javacv/cpp/opencv_contrib$SelfSimDescriptor;
.end method

.method public native put(Lcom/googlecode/javacv/cpp/opencv_contrib$SelfSimDescriptor;)Lcom/googlecode/javacv/cpp/opencv_contrib$SelfSimDescriptor;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "operator="
        }
    .end annotation
.end method

.method public native smallSize()I
.end method

.method public native smallSize(I)Lcom/googlecode/javacv/cpp/opencv_contrib$SelfSimDescriptor;
.end method

.method public native startDistanceBucket()I
.end method

.method public native startDistanceBucket(I)Lcom/googlecode/javacv/cpp/opencv_contrib$SelfSimDescriptor;
.end method
