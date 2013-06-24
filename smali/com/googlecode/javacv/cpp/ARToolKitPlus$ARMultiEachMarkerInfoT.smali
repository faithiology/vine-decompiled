.class public Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiEachMarkerInfoT;
.super Lcom/googlecode/javacpp/Pointer;
.source "ARToolKitPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/ARToolKitPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ARMultiEachMarkerInfoT"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 120
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiEachMarkerInfoT;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiEachMarkerInfoT;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native center()Lcom/googlecode/javacpp/DoublePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native itrans()Lcom/googlecode/javacpp/DoublePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "ARFloat(*)[4]"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native patt_id()I
.end method

.method public native patt_id(I)Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiEachMarkerInfoT;
.end method

.method public native pos3d()Lcom/googlecode/javacpp/DoublePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "ARFloat(*)[3]"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiEachMarkerInfoT;->position(I)Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiEachMarkerInfoT;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiEachMarkerInfoT;
    .locals 1
    .parameter "position"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiEachMarkerInfoT;

    return-object v0
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

.method public native visible()I
.end method

.method public native visible(I)Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiEachMarkerInfoT;
.end method

.method public native visibleR()I
.end method

.method public native visibleR(I)Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiEachMarkerInfoT;
.end method

.method public native width()D
.end method

.method public native width(D)Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiEachMarkerInfoT;
.end method
