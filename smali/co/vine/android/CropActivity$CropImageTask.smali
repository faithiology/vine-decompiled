.class Lco/vine/android/CropActivity$CropImageTask;
.super Landroid/os/AsyncTask;
.source "CropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/CropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CropImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mActivity:Lco/vine/android/CropActivity;

.field final mBitmapHeight:I

.field final mBitmapHeightOffset:I

.field final mBitmapWidth:I

.field final mBitmapWidthOffset:I

.field final mContext:Landroid/content/Context;

.field final mCropRect:Landroid/graphics/Rect;

.field final mFileToViewScale:I

.field final mIntent:Landroid/content/Intent;

.field final mUri:Landroid/net/Uri;

.field mView:Landroid/widget/ImageView;

.field mViewBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lco/vine/android/CropActivity;)V
    .locals 6
    .parameter "activity"

    .prologue
    .line 240
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 241
    iput-object p1, p0, Lco/vine/android/CropActivity$CropImageTask;->mActivity:Lco/vine/android/CropActivity;

    .line 242
    invoke-virtual {p1}, Lco/vine/android/CropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mContext:Landroid/content/Context;

    .line 243
    iget v1, p1, Lco/vine/android/CropActivity;->mFileToViewScale:I

    iput v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mFileToViewScale:I

    .line 244
    iget v1, p1, Lco/vine/android/CropActivity;->mBitmapWidthOffset:I

    iput v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mBitmapWidthOffset:I

    .line 245
    iget v1, p1, Lco/vine/android/CropActivity;->mBitmapHeightOffset:I

    iput v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mBitmapHeightOffset:I

    .line 246
    iget v1, p1, Lco/vine/android/CropActivity;->mBitmapHeight:I

    iput v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mBitmapHeight:I

    .line 247
    iget v1, p1, Lco/vine/android/CropActivity;->mBitmapWidth:I

    iput v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mBitmapWidth:I

    .line 248
    iget-object v1, p1, Lco/vine/android/CropActivity;->mUri:Landroid/net/Uri;

    iput-object v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mUri:Landroid/net/Uri;

    .line 249
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mIntent:Landroid/content/Intent;

    .line 250
    iget-object v1, p1, Lco/vine/android/CropActivity;->mView:Lco/vine/android/widget/CroppableImageView;

    iput-object v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mView:Landroid/widget/ImageView;

    .line 252
    iget-object v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mView:Landroid/widget/ImageView;

    check-cast v1, Lco/vine/android/widget/CroppableImageView;

    invoke-virtual {v1}, Lco/vine/android/widget/CroppableImageView;->getCropRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 253
    .local v0, rectF:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mCropRect:Landroid/graphics/Rect;

    .line 255
    return-void
.end method

.method private basicCrop()Ljava/lang/Boolean;
    .locals 17

    .prologue
    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/CropActivity$CropImageTask;->mContext:Landroid/content/Context;

    .line 277
    .local v1, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/CropActivity$CropImageTask;->mCropRect:Landroid/graphics/Rect;

    .line 278
    .local v12, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/CropActivity$CropImageTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 279
    .local v2, bmp:Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 280
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 309
    :goto_0
    return-object v3

    .line 282
    :cond_0
    new-instance v7, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v7, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 284
    .local v7, bitmapRect:Landroid/graphics/Rect;
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 285
    .local v9, height:I
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v15

    .line 286
    .local v15, width:I
    const/4 v3, 0x1

    if-le v15, v3, :cond_1

    const/4 v3, 0x1

    if-gt v9, v3, :cond_2

    .line 287
    :cond_1
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 291
    :cond_2
    invoke-virtual {v7, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 292
    iget v3, v12, Landroid/graphics/Rect;->left:I

    iget v4, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static/range {v1 .. v6}, Lco/vine/android/util/image/ImageUtils;->createBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 294
    .local v8, cropped:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_3

    .line 295
    invoke-static {v1}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v10

    .line 296
    .local v10, ownerId:J
    invoke-static {v1, v8, v10, v11}, Lco/vine/android/util/image/ImageUtils;->writePicToFile(Landroid/content/Context;Landroid/graphics/Bitmap;J)Landroid/net/Uri;

    move-result-object v14

    .line 297
    .local v14, uri:Landroid/net/Uri;
    if-eqz v14, :cond_3

    .line 298
    move-object/from16 v0, p0

    iget v13, v0, Lco/vine/android/CropActivity$CropImageTask;->mFileToViewScale:I

    .line 299
    .local v13, scale:I
    iget v3, v12, Landroid/graphics/Rect;->left:I

    mul-int/2addr v3, v13

    iget v4, v12, Landroid/graphics/Rect;->top:I

    mul-int/2addr v4, v13

    iget v5, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v6, v0, Lco/vine/android/CropActivity$CropImageTask;->mBitmapWidthOffset:I

    sub-int/2addr v5, v6

    mul-int/2addr v5, v13

    iget v6, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/CropActivity$CropImageTask;->mBitmapHeightOffset:I

    move/from16 v16, v0

    sub-int v6, v6, v16

    mul-int/2addr v6, v13

    invoke-virtual {v12, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 303
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/CropActivity$CropImageTask;->mIntent:Landroid/content/Intent;

    const-string v4, "cropped_rect"

    invoke-virtual {v3, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 304
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/CropActivity$CropImageTask;->mIntent:Landroid/content/Intent;

    const-string v4, "uri"

    invoke-virtual {v3, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 305
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 309
    .end local v8           #cropped:Landroid/graphics/Bitmap;
    .end local v10           #ownerId:J
    .end local v13           #scale:I
    .end local v14           #uri:Landroid/net/Uri;
    :cond_3
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public attachActivity(Lco/vine/android/CropActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 258
    iput-object p1, p0, Lco/vine/android/CropActivity$CropImageTask;->mActivity:Lco/vine/android/CropActivity;

    .line 259
    return-void
.end method

.method public detachActivity()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lco/vine/android/CropActivity$CropImageTask;->mActivity:Lco/vine/android/CropActivity;

    .line 263
    iput-object v0, p0, Lco/vine/android/CropActivity$CropImageTask;->mView:Landroid/widget/ImageView;

    .line 264
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .parameter "voids"

    .prologue
    .line 314
    iget-object v0, p0, Lco/vine/android/CropActivity$CropImageTask;->mContext:Landroid/content/Context;

    .line 316
    .local v0, context:Landroid/content/Context;
    invoke-direct {p0}, Lco/vine/android/CropActivity$CropImageTask;->basicCrop()Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lco/vine/android/CropActivity$CropImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "success"

    .prologue
    .line 323
    iget-object v0, p0, Lco/vine/android/CropActivity$CropImageTask;->mActivity:Lco/vine/android/CropActivity;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lco/vine/android/CropActivity$CropImageTask;->mActivity:Lco/vine/android/CropActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/vine/android/CropActivity;->removeDialog(I)V

    .line 325
    iget-object v0, p0, Lco/vine/android/CropActivity$CropImageTask;->mActivity:Lco/vine/android/CropActivity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lco/vine/android/CropActivity$CropImageTask;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lco/vine/android/CropActivity;->onCropDone(ZLandroid/content/Intent;)V

    .line 327
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lco/vine/android/CropActivity$CropImageTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lco/vine/android/CropActivity$CropImageTask;->mView:Landroid/widget/ImageView;

    .line 269
    .local v0, view:Landroid/widget/ImageView;
    iget-object v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mActivity:Lco/vine/android/CropActivity;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 271
    iget-object v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mActivity:Lco/vine/android/CropActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lco/vine/android/CropActivity;->showDialog(I)V

    .line 273
    :cond_0
    return-void
.end method
