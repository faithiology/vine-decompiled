.class public Lcom/googlecode/javacv/cpp/freenect$freenect_raw_tilt_state;
.super Lcom/googlecode/javacpp/Pointer;
.source "freenect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/freenect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "freenect_raw_tilt_state"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 222
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/freenect$freenect_raw_tilt_state;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/freenect$freenect_raw_tilt_state;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native accelerometer_x(S)Lcom/googlecode/javacv/cpp/freenect$freenect_raw_tilt_state;
.end method

.method public native accelerometer_x()S
.end method

.method public native accelerometer_y(S)Lcom/googlecode/javacv/cpp/freenect$freenect_raw_tilt_state;
.end method

.method public native accelerometer_y()S
.end method

.method public native accelerometer_z(S)Lcom/googlecode/javacv/cpp/freenect$freenect_raw_tilt_state;
.end method

.method public native accelerometer_z()S
.end method

.method public native tilt_angle()B
.end method

.method public native tilt_angle(B)Lcom/googlecode/javacv/cpp/freenect$freenect_raw_tilt_state;
.end method

.method public native tilt_status()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "freenect_tilt_status_code"
        }
    .end annotation
.end method

.method public native tilt_status(I)Lcom/googlecode/javacv/cpp/freenect$freenect_raw_tilt_state;
.end method
