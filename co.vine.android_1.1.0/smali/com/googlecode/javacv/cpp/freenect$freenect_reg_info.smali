.class public Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.super Lcom/googlecode/javacpp/Pointer;
.source "freenect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/freenect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "freenect_reg_info"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 341
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native ax()I
.end method

.method public native ax(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native ay()I
.end method

.method public native ay(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native back_comp1()I
.end method

.method public native back_comp1(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native back_comp2()I
.end method

.method public native back_comp2(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native bx()I
.end method

.method public native bx(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native by()I
.end method

.method public native by(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native cx()I
.end method

.method public native cx(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native cy()I
.end method

.method public native cy(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native dx()I
.end method

.method public native dx(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native dx_beta_inc()I
.end method

.method public native dx_beta_inc(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native dx_beta_start()I
.end method

.method public native dx_beta_start(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native dx_center()I
.end method

.method public native dx_center(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native dx_start()I
.end method

.method public native dx_start(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native dxdx_start()I
.end method

.method public native dxdx_start(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native dxdxdx_start()I
.end method

.method public native dxdxdx_start(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native dxdxdy_start()I
.end method

.method public native dxdxdy_start(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native dxdy_start()I
.end method

.method public native dxdy_start(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native dy()I
.end method

.method public native dy(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native dy_beta_inc()I
.end method

.method public native dy_beta_inc(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native dy_beta_start()I
.end method

.method public native dy_beta_start(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native dy_start()I
.end method

.method public native dy_start(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native dydx_start()I
.end method

.method public native dydx_start(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native dydxdx_start()I
.end method

.method public native dydxdx_start(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native dydxdy_start()I
.end method

.method public native dydxdy_start(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native dydy_start()I
.end method

.method public native dydy_start(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native dydydx_start()I
.end method

.method public native dydydx_start(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native dydydy_start()I
.end method

.method public native dydydy_start(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native rollout_blank()I
.end method

.method public native rollout_blank(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method

.method public native rollout_size()I
.end method

.method public native rollout_size(I)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
.end method
