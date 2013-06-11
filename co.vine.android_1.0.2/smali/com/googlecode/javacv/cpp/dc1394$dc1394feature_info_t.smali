.class public Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.super Lcom/googlecode/javacpp/Pointer;
.source "dc1394.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/dc1394;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dc1394feature_info_t"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 576
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 579
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native BU_value()I
.end method

.method public native BU_value(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method

.method public native B_value()I
.end method

.method public native B_value(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method

.method public native G_value()I
.end method

.method public native G_value(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method

.method public native RV_value()I
.end method

.method public native RV_value(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method

.method public native R_value()I
.end method

.method public native R_value(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method

.method public native abs_control()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394switch_t"
        }
    .end annotation
.end method

.method public native abs_control(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method

.method public native abs_max()F
.end method

.method public native abs_max(F)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method

.method public native abs_min()F
.end method

.method public native abs_min(F)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method

.method public native abs_value()F
.end method

.method public native abs_value(F)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method

.method public native absolute_capable()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394bool_t"
        }
    .end annotation
.end method

.method public native absolute_capable(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method

.method public native available()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394bool_t"
        }
    .end annotation
.end method

.method public native available(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method

.method public native current_mode()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394feature_mode_t"
        }
    .end annotation
.end method

.method public native current_mode(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method

.method public native id()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394feature_t"
        }
    .end annotation
.end method

.method public native id(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method

.method public native is_on()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394switch_t"
        }
    .end annotation
.end method

.method public native is_on(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method

.method public native max()I
.end method

.method public native max(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method

.method public native min()I
.end method

.method public native min(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method

.method public native modes(Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_modes_t;)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method

.method public native modes()Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_modes_t;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native on_off_capable()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394bool_t"
        }
    .end annotation
.end method

.method public native on_off_capable(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method

.method public native polarity_capable()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394bool_t"
        }
    .end annotation
.end method

.method public native polarity_capable(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 575
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;->position(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
    .locals 1
    .parameter "position"

    .prologue
    .line 584
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;

    return-object v0
.end method

.method public native readout_capable()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394bool_t"
        }
    .end annotation
.end method

.method public native readout_capable(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method

.method public native target_value()I
.end method

.method public native target_value(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method

.method public native trigger_mode()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394trigger_mode_t"
        }
    .end annotation
.end method

.method public native trigger_mode(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method

.method public native trigger_modes(Lcom/googlecode/javacv/cpp/dc1394$dc1394trigger_modes_t;)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method

.method public native trigger_modes()Lcom/googlecode/javacv/cpp/dc1394$dc1394trigger_modes_t;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native trigger_polarity()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394trigger_polarity_t"
        }
    .end annotation
.end method

.method public native trigger_polarity(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method

.method public native trigger_source()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394trigger_source_t"
        }
    .end annotation
.end method

.method public native trigger_source(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method

.method public native trigger_sources(Lcom/googlecode/javacv/cpp/dc1394$dc1394trigger_sources_t;)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method

.method public native trigger_sources()Lcom/googlecode/javacv/cpp/dc1394$dc1394trigger_sources_t;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native value()I
.end method

.method public native value(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;
.end method
