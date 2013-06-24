.class public Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;
.super Lcom/googlecode/javacpp/Pointer;
.source "ARToolKitPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/ARToolKitPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ARMarkerInfo"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 96
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native area()I
.end method

.method public native area(I)Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;
.end method

.method public native cf()D
.end method

.method public native cf(D)Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;
.end method

.method public native dir()I
.end method

.method public native dir(I)Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;
.end method

.method public native id()I
.end method

.method public native id(I)Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;
.end method

.method public native line()Lcom/googlecode/javacpp/DoublePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "ARFloat(*)[3]"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native pos()Lcom/googlecode/javacpp/DoublePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;->position(I)Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;

    return-object v0
.end method

.method public native vertex()Lcom/googlecode/javacpp/DoublePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "ARFloat(*)[2]"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method
