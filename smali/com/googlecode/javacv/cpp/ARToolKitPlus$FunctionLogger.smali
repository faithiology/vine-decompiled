.class public Lcom/googlecode/javacv/cpp/ARToolKitPlus$FunctionLogger;
.super Lcom/googlecode/javacv/cpp/ARToolKitPlus$Logger;
.source "ARToolKitPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/ARToolKitPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FunctionLogger"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 269
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$Logger;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/ARToolKitPlus$ArtLogFunction;)V
    .locals 0
    .parameter "f"

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$Logger;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$FunctionLogger;->allocate(Lcom/googlecode/javacv/cpp/ARToolKitPlus$ArtLogFunction;)V

    return-void
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/ARToolKitPlus$ArtLogFunction;)V
.end method
