.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobSeq;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvBlobSeq"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 2985
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2986
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobSeq;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "BlobSize"

    .prologue
    .line 2987
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobSeq;->allocate(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 2988
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(I)V
.end method


# virtual methods
.method public native AddBlob(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;)V
.end method

.method public native AddFormat(Ljava/lang/String;)V
.end method

.method public native Clear()V
.end method

.method public native DelBlob(I)V
.end method

.method public native DelBlobByID(I)V
.end method

.method public native GetBlob(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;
.end method

.method public native GetBlobByID(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;
.end method

.method public native GetBlobNum()I
.end method

.method public native Load(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;)V
.end method

.method public native Write(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;)V
.end method
