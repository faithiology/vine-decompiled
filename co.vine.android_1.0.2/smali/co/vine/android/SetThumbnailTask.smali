.class public Lco/vine/android/SetThumbnailTask;
.super Landroid/os/AsyncTask;
.source "SetThumbnailTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/SetThumbnailTask$SetThumbnailListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportFragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lco/vine/android/SetThumbnailTask;->mFragmentRef:Ljava/lang/ref/WeakReference;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/SetThumbnailTask;->mSupportFragmentRef:Ljava/lang/ref/WeakReference;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lco/vine/android/SetThumbnailTask;->mSupportFragmentRef:Ljava/lang/ref/WeakReference;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/SetThumbnailTask;->mFragmentRef:Ljava/lang/ref/WeakReference;

    .line 28
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, context:Landroid/content/Context;
    iget-object v7, p0, Lco/vine/android/SetThumbnailTask;->mSupportFragmentRef:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_3

    .line 39
    iget-object v7, p0, Lco/vine/android/SetThumbnailTask;->mSupportFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 40
    .local v1, f:Landroid/support/v4/app/Fragment;
    if-nez v1, :cond_1

    .line 63
    .end local v1           #f:Landroid/support/v4/app/Fragment;
    :cond_0
    :goto_0
    return-object v6

    .line 43
    .restart local v1       #f:Landroid/support/v4/app/Fragment;
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 51
    .end local v1           #f:Landroid/support/v4/app/Fragment;
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 55
    aget-object v2, p1, v9

    .line 56
    .local v2, photoUri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 57
    .local v4, resources:Landroid/content/res/Resources;
    const v7, 0x7f0c0004

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float v5, v7, v8

    .line 59
    .local v5, size:F
    invoke-static {v0, v2, v5, v5, v9}, Lco/vine/android/util/image/ImageUtils;->resizeBitmap(Landroid/content/Context;Landroid/net/Uri;FFI)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 60
    .local v3, resizedBitmap:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 61
    invoke-static {v0, v2, v3}, Lco/vine/android/util/image/ImageUtils;->adjustRotation(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    .line 44
    .end local v2           #photoUri:Landroid/net/Uri;
    .end local v3           #resizedBitmap:Landroid/graphics/Bitmap;
    .end local v4           #resources:Landroid/content/res/Resources;
    .end local v5           #size:F
    :cond_3
    iget-object v7, p0, Lco/vine/android/SetThumbnailTask;->mFragmentRef:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_2

    .line 45
    iget-object v7, p0, Lco/vine/android/SetThumbnailTask;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 46
    .local v1, f:Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lco/vine/android/SetThumbnailTask;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, fragment:Ljava/lang/Object;
    iget-object v1, p0, Lco/vine/android/SetThumbnailTask;->mSupportFragmentRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    .line 71
    iget-object v1, p0, Lco/vine/android/SetThumbnailTask;->mSupportFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 76
    .end local v0           #fragment:Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 77
    check-cast v0, Lco/vine/android/SetThumbnailTask$SetThumbnailListener;

    invoke-interface {v0, p1}, Lco/vine/android/SetThumbnailTask$SetThumbnailListener;->setThumbnailImage(Landroid/graphics/Bitmap;)V

    .line 79
    :cond_1
    return-void

    .line 72
    .restart local v0       #fragment:Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lco/vine/android/SetThumbnailTask;->mFragmentRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lco/vine/android/SetThumbnailTask;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lco/vine/android/SetThumbnailTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
