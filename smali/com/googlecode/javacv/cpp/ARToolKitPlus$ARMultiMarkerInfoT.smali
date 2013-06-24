.class public Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiMarkerInfoT;
.super Lcom/googlecode/javacpp/Pointer;
.source "ARToolKitPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/ARToolKitPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ARMultiMarkerInfoT"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 147
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiMarkerInfoT;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiMarkerInfoT;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native marker()Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiEachMarkerInfoT;
.end method

.method public native marker(Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiEachMarkerInfoT;)Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiMarkerInfoT;
.end method

.method public native marker_num()I
.end method

.method public native marker_num(I)Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiMarkerInfoT;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiMarkerInfoT;->position(I)Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiMarkerInfoT;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiMarkerInfoT;
    .locals 1
    .parameter "position"

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiMarkerInfoT;

    return-object v0
.end method

.method public native prevF()I
.end method

.method public native prevF(I)Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiMarkerInfoT;
.end method

.method public native trans()Lcom/googlecode/javacpp/DoublePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "ARFloat(*)[4]"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native transR()Lcom/googlecode/javacpp/DoublePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "ARFloat(*)[4]"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method
