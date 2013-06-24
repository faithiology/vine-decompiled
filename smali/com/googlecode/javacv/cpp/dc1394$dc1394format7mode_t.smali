.class public Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;
.super Lcom/googlecode/javacpp/Pointer;
.source "dc1394.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/dc1394;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dc1394format7mode_t"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 966
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 967
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 968
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 969
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native color_coding()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394color_coding_t"
        }
    .end annotation
.end method

.method public native color_coding(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;
.end method

.method public native color_codings()Lcom/googlecode/javacv/cpp/dc1394$dc1394color_codings_t;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native color_codings(Lcom/googlecode/javacv/cpp/dc1394$dc1394color_codings_t;)Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;
.end method

.method public native color_filter()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394color_filter_t"
        }
    .end annotation
.end method

.method public native color_filter(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;
.end method

.method public native max_packet_size()I
.end method

.method public native max_packet_size(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;
.end method

.method public native max_size_x()I
.end method

.method public native max_size_x(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;
.end method

.method public native max_size_y()I
.end method

.method public native max_size_y(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;
.end method

.method public native packet_size()I
.end method

.method public native packet_size(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;
.end method

.method public native pixnum()I
.end method

.method public native pixnum(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;
.end method

.method public native pos_x()I
.end method

.method public native pos_x(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;
.end method

.method public native pos_y()I
.end method

.method public native pos_y(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 965
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;->position(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;
    .locals 1
    .parameter "position"

    .prologue
    .line 974
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;

    return-object v0
.end method

.method public native present()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394bool_t"
        }
    .end annotation
.end method

.method public native present(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;
.end method

.method public native size_x()I
.end method

.method public native size_x(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;
.end method

.method public native size_y()I
.end method

.method public native size_y(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;
.end method

.method public native total_bytes()J
.end method

.method public native total_bytes(J)Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;
.end method

.method public native unit_packet_size()I
.end method

.method public native unit_packet_size(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;
.end method

.method public native unit_pos_x()I
.end method

.method public native unit_pos_x(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;
.end method

.method public native unit_pos_y()I
.end method

.method public native unit_pos_y(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;
.end method

.method public native unit_size_x()I
.end method

.method public native unit_size_x(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;
.end method

.method public native unit_size_y()I
.end method

.method public native unit_size_y(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;
.end method
