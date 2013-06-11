.class Lco/vine/android/player/GLTextureView$SimpleEGLConfigChooser;
.super Lco/vine/android/player/GLTextureView$ComponentSizeChooser;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/player/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/player/GLTextureView;


# direct methods
.method public constructor <init>(Lco/vine/android/player/GLTextureView;Z)V
    .locals 8
    .parameter
    .parameter "withDepthBuffer"

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 1006
    iput-object p1, p0, Lco/vine/android/player/GLTextureView$SimpleEGLConfigChooser;->this$0:Lco/vine/android/player/GLTextureView;

    .line 1007
    if-eqz p2, :cond_0

    const/16 v6, 0x10

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lco/vine/android/player/GLTextureView$ComponentSizeChooser;-><init>(Lco/vine/android/player/GLTextureView;IIIIII)V

    .line 1008
    return-void

    :cond_0
    move v6, v5

    .line 1007
    goto :goto_0
.end method
