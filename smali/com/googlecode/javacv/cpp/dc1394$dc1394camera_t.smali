.class public Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.super Lcom/googlecode/javacpp/Pointer;
.source "dc1394.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/dc1394;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dc1394camera_t"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 339
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native PIO_control_csr()J
.end method

.method public native PIO_control_csr(J)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public native SIO_control_csr()J
.end method

.method public native SIO_control_csr(J)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public native advanced_features_csr()J
.end method

.method public native advanced_features_csr(J)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public native bmode_capable()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394bool_t"
        }
    .end annotation
.end method

.method public native bmode_capable(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public native can_switch_on_off()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394bool_t"
        }
    .end annotation
.end method

.method public native can_switch_on_off(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public native command_registers_base()I
.end method

.method public native command_registers_base(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public native flags()I
.end method

.method public native flags(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public native format7_csr(I)J
.end method

.method public native format7_csr(IJ)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public native guid()J
.end method

.method public native guid(J)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public native has_feature_error_status()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394bool_t"
        }
    .end annotation
.end method

.method public native has_feature_error_status(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public native has_vmode_error_status()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394bool_t"
        }
    .end annotation
.end method

.method public native has_vmode_error_status(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public native iidc_version()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394iidc_version_t"
        }
    .end annotation
.end method

.method public native iidc_version(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public native max_mem_channel()I
.end method

.method public native max_mem_channel(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public native model()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public native model(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public native model_id()I
.end method

.method public native model_id(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public native multi_shot_capable()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394bool_t"
        }
    .end annotation
.end method

.method public native multi_shot_capable(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public native one_shot_capable()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394bool_t"
        }
    .end annotation
.end method

.method public native one_shot_capable(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;->position(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
    .locals 1
    .parameter "position"

    .prologue
    .line 347
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    return-object v0
.end method

.method public native strobe_control_csr()J
.end method

.method public native strobe_control_csr(J)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public native unit()I
.end method

.method public native unit(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public native unit_dependent_directory()I
.end method

.method public native unit_dependent_directory(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public native unit_directory()I
.end method

.method public native unit_directory(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public native unit_spec_ID()I
.end method

.method public native unit_spec_ID(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public native unit_sub_sw_version()I
.end method

.method public native unit_sub_sw_version(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public native unit_sw_version()I
.end method

.method public native unit_sw_version(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public native vendor()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public native vendor(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public native vendor_id()I
.end method

.method public native vendor_id(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method
