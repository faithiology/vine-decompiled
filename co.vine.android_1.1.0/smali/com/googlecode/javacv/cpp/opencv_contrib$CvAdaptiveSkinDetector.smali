.class public Lcom/googlecode/javacv/cpp/opencv_contrib$CvAdaptiveSkinDetector;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_contrib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_contrib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvAdaptiveSkinDetector"
.end annotation


# static fields
.field public static final MORPHING_METHOD_ERODE:I = 0x1

.field public static final MORPHING_METHOD_ERODE_DILATE:I = 0x3

.field public static final MORPHING_METHOD_ERODE_ERODE:I = 0x2

.field public static final MORPHING_METHOD_NONE:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 113
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_contrib$CvAdaptiveSkinDetector;->allocate()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "samplingDivider"
    .parameter "morphingMethod"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_contrib$CvAdaptiveSkinDetector;->allocate(II)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(II)V
.end method


# virtual methods
.method public native process(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
.end method
