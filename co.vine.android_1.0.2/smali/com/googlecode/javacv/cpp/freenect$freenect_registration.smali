.class public Lcom/googlecode/javacv/cpp/freenect$freenect_registration;
.super Lcom/googlecode/javacpp/Pointer;
.source "freenect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/freenect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "freenect_registration"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 420
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/freenect$freenect_registration;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/freenect$freenect_registration;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native const_shift()D
.end method

.method public native const_shift(D)Lcom/googlecode/javacv/cpp/freenect$freenect_registration;
.end method

.method public native depth_to_rgb_shift()Lcom/googlecode/javacpp/IntPointer;
.end method

.method public native depth_to_rgb_shift(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/freenect$freenect_registration;
.end method

.method public native raw_to_mm_shift()Lcom/googlecode/javacpp/ShortPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint16_t*"
        }
    .end annotation
.end method

.method public native raw_to_mm_shift(Lcom/googlecode/javacpp/ShortPointer;)Lcom/googlecode/javacv/cpp/freenect$freenect_registration;
.end method

.method public native reg_info()Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native reg_info(Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;)Lcom/googlecode/javacv/cpp/freenect$freenect_registration;
.end method

.method public native reg_pad_info()Lcom/googlecode/javacv/cpp/freenect$freenect_reg_pad_info;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native reg_pad_info(Lcom/googlecode/javacv/cpp/freenect$freenect_reg_pad_info;)Lcom/googlecode/javacv/cpp/freenect$freenect_registration;
.end method

.method public native registration_table()Lcom/googlecode/javacpp/IntPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "int32_t(*)[2]"
        }
    .end annotation
.end method

.method public native registration_table(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/freenect$freenect_registration;
.end method

.method public native zero_plane_info(Lcom/googlecode/javacv/cpp/freenect$freenect_zero_plane_info;)Lcom/googlecode/javacv/cpp/freenect$freenect_registration;
.end method

.method public native zero_plane_info()Lcom/googlecode/javacv/cpp/freenect$freenect_zero_plane_info;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method
