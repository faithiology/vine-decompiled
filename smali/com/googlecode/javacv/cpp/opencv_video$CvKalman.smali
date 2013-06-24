.class public Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvKalman"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_video$CvKalman$ReleaseDeallocator;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 140
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;->allocate()V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;->allocateArray(I)V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method

.method public static create(III)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
    .locals 2
    .parameter "dynam_params"
    .parameter "measure_params"
    .parameter "control_params"

    .prologue
    .line 153
    invoke-static {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_video;->cvCreateKalman(III)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;

    move-result-object v0

    .line 154
    .local v0, k:Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
    if-eqz v0, :cond_0

    .line 155
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_video$CvKalman$ReleaseDeallocator;

    invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_video$CvKalman$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;)V

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;

    .line 157
    :cond_0
    return-object v0
.end method


# virtual methods
.method public native CP()I
.end method

.method public native CP(I)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public native DP()I
.end method

.method public native DP(I)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public native DynamMatr()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native DynamMatr(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public native KalmGainMatr()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native KalmGainMatr(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public native MNCovariance()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native MNCovariance(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public native MP()I
.end method

.method public native MP(I)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public native MeasurementMatr()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native MeasurementMatr(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public native PNCovariance()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native PNCovariance(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public native PosterErrorCovariance()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native PosterErrorCovariance(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public native PosterState()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native PosterState(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public native PriorErrorCovariance()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native PriorErrorCovariance(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public native PriorState()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native PriorState(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public native Temp1()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native Temp1(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public native Temp2()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native Temp2(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public native control_matrix()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native control_matrix(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public native error_cov_post()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native error_cov_post(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public native error_cov_pre()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native error_cov_pre(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public native gain()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native gain(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public native measurement_matrix()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native measurement_matrix(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public native measurement_noise_cov()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native measurement_noise_cov(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;->position(I)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
    .locals 1
    .parameter "position"

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;

    return-object v0
.end method

.method public native process_noise_cov()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native process_noise_cov(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public release()V
    .locals 0

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;->deallocate()V

    .line 162
    return-void
.end method

.method public native state_post()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native state_post(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public native state_pre()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native state_pre(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public native temp1()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native temp1(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public native temp2()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native temp2(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public native temp3()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native temp3(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public native temp4()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native temp4(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public native temp5()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native temp5(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public native transition_matrix()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native transition_matrix(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method
