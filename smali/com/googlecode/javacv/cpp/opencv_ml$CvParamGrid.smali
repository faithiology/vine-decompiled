.class public Lcom/googlecode/javacv/cpp/opencv_ml$CvParamGrid;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_ml.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_ml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvParamGrid"
.end annotation


# static fields
.field public static final SVM_C:I = 0x0

.field public static final SVM_COEF:I = 0x4

.field public static final SVM_DEGREE:I = 0x5

.field public static final SVM_GAMMA:I = 0x1

.field public static final SVM_NU:I = 0x3

.field public static final SVM_P:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 191
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvParamGrid;->allocate()V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0
    .parameter "min_val"
    .parameter "max_val"
    .parameter "log_step"

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 194
    invoke-direct/range {p0 .. p6}, Lcom/googlecode/javacv/cpp/opencv_ml$CvParamGrid;->allocate(DDD)V

    .line 195
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvParamGrid;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(DDD)V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native check()Z
.end method

.method public native max_val()D
.end method

.method public native max_val(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvParamGrid;
.end method

.method public native min_val()D
.end method

.method public native min_val(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvParamGrid;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvParamGrid;->position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvParamGrid;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvParamGrid;
    .locals 1
    .parameter "position"

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_ml$CvParamGrid;

    return-object v0
.end method

.method public native step()D
.end method

.method public native step(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvParamGrid;
.end method
