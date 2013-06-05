.class public Lcom/googlecode/javacv/cpp/ARToolKitPlus$Camera;
.super Lcom/googlecode/javacpp/Pointer;
.source "ARToolKitPlus.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Opaque;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/ARToolKitPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Camera"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method
