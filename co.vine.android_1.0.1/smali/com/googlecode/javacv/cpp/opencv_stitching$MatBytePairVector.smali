.class public Lcom/googlecode/javacv/cpp/opencv_stitching$MatBytePairVector;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_stitching.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Name;
    value = {
        "std::vector<std::pair<cv::Mat,uchar> >"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_stitching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatBytePairVector"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 929
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 930
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$MatBytePairVector;->allocate()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .parameter "n"

    .prologue
    .line 931
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_stitching$MatBytePairVector;->allocate(J)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 932
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(J)V
.end method


# virtual methods
.method public native first(J)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Index;
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
    .end annotation
.end method

.method public native first(JLcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_stitching$MatBytePairVector;
.end method

.method public native second(J)B
    .annotation runtime Lcom/googlecode/javacpp/annotation/Index;
    .end annotation
.end method

.method public native second(JB)Lcom/googlecode/javacv/cpp/opencv_stitching$MatBytePairVector;
.end method
