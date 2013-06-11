.class Lco/vine/android/CropActivity$LoadImageTask;
.super Landroid/os/AsyncTask;
.source "CropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/CropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lco/vine/android/CropActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lco/vine/android/CropActivity;


# direct methods
.method constructor <init>(Lco/vine/android/CropActivity;Lco/vine/android/CropActivity;)V
    .locals 1
    .parameter
    .parameter "activity"

    .prologue
    .line 169
    iput-object p1, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 170
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lco/vine/android/CropActivity$LoadImageTask;->mActivity:Ljava/lang/ref/WeakReference;

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p1, Lco/vine/android/CropActivity;->mBitmapLoaded:Z

    .line 172
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "voids"

    .prologue
    .line 181
    iget-object v3, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;

    invoke-virtual {v3}, Lco/vine/android/CropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 182
    .local v1, metrics:Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;

    iget-object v4, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;

    iget-object v4, v4, Lco/vine/android/CropActivity;->mUri:Landroid/net/Uri;

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lco/vine/android/util/image/ImageUtils;->safeDecode(Landroid/content/Context;Landroid/net/Uri;IIZ)Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    move-result-object v0

    .line 184
    .local v0, bmpInfo:Lco/vine/android/util/image/ImageUtils$BitmapInfo;
    if-eqz v0, :cond_0

    .line 185
    iget v2, v0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->scale:I

    .line 186
    .local v2, scale:I
    iget-object v3, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;

    iget v4, v0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->origWidth:I

    iput v4, v3, Lco/vine/android/CropActivity;->mBitmapWidth:I

    .line 187
    iget-object v3, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;

    iget v4, v0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->origHeight:I

    iput v4, v3, Lco/vine/android/CropActivity;->mBitmapHeight:I

    .line 188
    iget-object v3, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;

    iget v4, v0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->origWidth:I

    rem-int/2addr v4, v2

    iput v4, v3, Lco/vine/android/CropActivity;->mBitmapWidthOffset:I

    .line 189
    iget-object v3, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;

    iget v4, v0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->origHeight:I

    rem-int/2addr v4, v2

    iput v4, v3, Lco/vine/android/CropActivity;->mBitmapHeightOffset:I

    .line 190
    iget-object v3, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;

    iput v2, v3, Lco/vine/android/CropActivity;->mFileToViewScale:I

    .line 191
    iget-object v3, v0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 193
    .end local v2           #scale:I
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lco/vine/android/CropActivity$LoadImageTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bmp"

    .prologue
    const/4 v3, 0x1

    .line 198
    iget-object v1, p0, Lco/vine/android/CropActivity$LoadImageTask;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/CropActivity;

    .line 199
    .local v0, activity:Lco/vine/android/CropActivity;
    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 202
    :cond_0
    if-eqz p1, :cond_1

    .line 203
    iput-boolean v3, v0, Lco/vine/android/CropActivity;->mBitmapLoaded:Z

    .line 204
    invoke-virtual {v0, p1}, Lco/vine/android/CropActivity;->onBitmapProcessingDone(Landroid/graphics/Bitmap;)V

    .line 212
    :goto_1
    iget-object v1, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;

    invoke-virtual {v1, v3}, Lco/vine/android/CropActivity;->removeDialog(I)V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v1, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;

    const v2, 0x7f080041

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 208
    iget-object v1, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;

    invoke-virtual {v1, v3}, Lco/vine/android/CropActivity;->removeDialog(I)V

    .line 209
    iget-object v1, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lco/vine/android/CropActivity;->setResult(I)V

    .line 210
    iget-object v1, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;

    invoke-virtual {v1}, Lco/vine/android/CropActivity;->finish()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lco/vine/android/CropActivity$LoadImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lco/vine/android/CropActivity;->showDialog(I)V

    .line 177
    return-void
.end method
