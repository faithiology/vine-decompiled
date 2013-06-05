.class public Lco/vine/android/CropActivity;
.super Lco/vine/android/BaseActivity;
.source "CropActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/CropActivity$CropImageTask;,
        Lco/vine/android/CropActivity$LoadImageTask;
    }
.end annotation


# static fields
.field private static final DIALOG_CROPPING_PROGRESS_ID:I = 0x0

.field private static final DIALOG_LOADING_PROGRESS_ID:I = 0x1

.field public static final EXTRA_CROP_RECT:Ljava/lang/String; = "cropped_rect"

.field public static final EXTRA_CROP_TYPE:Ljava/lang/String; = "crop_type"

.field public static final EXTRA_URI:Ljava/lang/String; = "uri"

.field private static final STATE_DEGREES:Ljava/lang/String; = "degrees"


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field mBitmapHeight:I

.field mBitmapHeightOffset:I

.field protected mBitmapLoaded:Z

.field mBitmapWidth:I

.field mBitmapWidthOffset:I

.field protected mCropTask:Lco/vine/android/CropActivity$CropImageTask;

.field private mCurrDegrees:I

.field mFileToViewScale:I

.field protected mUri:Landroid/net/Uri;

.field protected mView:Lco/vine/android/widget/CroppableImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lco/vine/android/BaseActivity;-><init>()V

    .line 226
    return-void
.end method


# virtual methods
.method protected doCrop()V
    .locals 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lco/vine/android/CropActivity;->mBitmapLoaded:Z

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lco/vine/android/CropActivity;->mCropTask:Lco/vine/android/CropActivity$CropImageTask;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lco/vine/android/CropActivity;->mCropTask:Lco/vine/android/CropActivity$CropImageTask;

    invoke-virtual {v0}, Lco/vine/android/CropActivity$CropImageTask;->detachActivity()V

    .line 94
    :cond_1
    new-instance v0, Lco/vine/android/CropActivity$CropImageTask;

    invoke-direct {v0, p0}, Lco/vine/android/CropActivity$CropImageTask;-><init>(Lco/vine/android/CropActivity;)V

    iput-object v0, p0, Lco/vine/android/CropActivity;->mCropTask:Lco/vine/android/CropActivity$CropImageTask;

    .line 95
    iget-object v0, p0, Lco/vine/android/CropActivity;->mCropTask:Lco/vine/android/CropActivity$CropImageTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lco/vine/android/CropActivity$CropImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onBitmapProcessingDone(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bmp"

    .prologue
    .line 137
    iget-object v0, p0, Lco/vine/android/CropActivity;->mView:Lco/vine/android/widget/CroppableImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/vine/android/widget/CroppableImageView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lco/vine/android/CropActivity;->mView:Lco/vine/android/widget/CroppableImageView;

    invoke-virtual {v0, p1}, Lco/vine/android/widget/CroppableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 139
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 331
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/CropActivity;->setResult(I)V

    .line 332
    invoke-virtual {p0}, Lco/vine/android/CropActivity;->finish()V

    .line 333
    return-void
.end method

.method public onClickHandler(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 101
    :pswitch_0
    invoke-virtual {p0}, Lco/vine/android/CropActivity;->doCrop()V

    goto :goto_0

    .line 105
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/CropActivity;->setResult(I)V

    .line 106
    invoke-virtual {p0}, Lco/vine/android/CropActivity;->finish()V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x7f090017
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;I)V
    .locals 3
    .parameter "savedInstanceState"
    .parameter "layout"

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-super {p0, p1, p2, v2}, Lco/vine/android/BaseActivity;->onCreate(Landroid/os/Bundle;IZ)V

    .line 53
    invoke-virtual {p0}, Lco/vine/android/CropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lco/vine/android/CropActivity;->mUri:Landroid/net/Uri;

    .line 54
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lco/vine/android/CropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/CroppableImageView;

    iput-object v0, p0, Lco/vine/android/CropActivity;->mView:Lco/vine/android/widget/CroppableImageView;

    .line 55
    iget-object v0, p0, Lco/vine/android/CropActivity;->mView:Lco/vine/android/widget/CroppableImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lco/vine/android/widget/CroppableImageView;->setVisibility(I)V

    .line 56
    if-eqz p1, :cond_0

    .line 57
    const-string v0, "degrees"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lco/vine/android/CropActivity;->mCurrDegrees:I

    .line 61
    :goto_0
    invoke-virtual {p0}, Lco/vine/android/CropActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/CropActivity$CropImageTask;

    iput-object v0, p0, Lco/vine/android/CropActivity;->mCropTask:Lco/vine/android/CropActivity$CropImageTask;

    .line 62
    iget-object v0, p0, Lco/vine/android/CropActivity;->mCropTask:Lco/vine/android/CropActivity$CropImageTask;

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Lco/vine/android/CropActivity$LoadImageTask;

    invoke-direct {v0, p0, p0}, Lco/vine/android/CropActivity$LoadImageTask;-><init>(Lco/vine/android/CropActivity;Lco/vine/android/CropActivity;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lco/vine/android/CropActivity$LoadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    :goto_1
    return-void

    .line 59
    :cond_0
    iput v2, p0, Lco/vine/android/CropActivity;->mCurrDegrees:I

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lco/vine/android/CropActivity;->mCropTask:Lco/vine/android/CropActivity$CropImageTask;

    invoke-virtual {v0, p0}, Lco/vine/android/CropActivity$CropImageTask;->attachActivity(Lco/vine/android/CropActivity;)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 117
    new-instance v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 118
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 119
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 120
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 121
    packed-switch p1, :pswitch_data_0

    .line 131
    invoke-super {p0, p1}, Lco/vine/android/BaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    .line 123
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    :pswitch_0
    const v1, 0x7f08003e

    invoke-virtual {p0, v1}, Lco/vine/android/CropActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 127
    :pswitch_1
    const v1, 0x7f08003f

    invoke-virtual {p0, v1}, Lco/vine/android/CropActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCropDone(ZLandroid/content/Intent;)V
    .locals 2
    .parameter "success"
    .parameter "intent"

    .prologue
    .line 217
    if-eqz p1, :cond_0

    .line 218
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2}, Lco/vine/android/CropActivity;->setResult(ILandroid/content/Intent;)V

    .line 223
    :goto_0
    invoke-virtual {p0}, Lco/vine/android/CropActivity;->finish()V

    .line 224
    return-void

    .line 220
    :cond_0
    const v0, 0x7f080041

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/CropActivity;->setResult(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Lco/vine/android/BaseActivity;->onPause()V

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/CropActivity;->removeDialog(I)V

    .line 163
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lco/vine/android/CropActivity;->removeDialog(I)V

    .line 164
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lco/vine/android/CropActivity;->mCropTask:Lco/vine/android/CropActivity$CropImageTask;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lco/vine/android/CropActivity;->mCropTask:Lco/vine/android/CropActivity$CropImageTask;

    invoke-virtual {v0}, Lco/vine/android/CropActivity$CropImageTask;->detachActivity()V

    .line 79
    :cond_0
    iget-object v0, p0, Lco/vine/android/CropActivity;->mCropTask:Lco/vine/android/CropActivity$CropImageTask;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 71
    const-string v0, "degrees"

    iget v1, p0, Lco/vine/android/CropActivity;->mCurrDegrees:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method protected rotateImage()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lco/vine/android/CropActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 143
    .local v0, orig:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 144
    .local v5, matrix:Landroid/graphics/Matrix;
    iget v2, p0, Lco/vine/android/CropActivity;->mCurrDegrees:I

    add-int/lit8 v2, v2, 0x5a

    iput v2, p0, Lco/vine/android/CropActivity;->mCurrDegrees:I

    .line 145
    iget v2, p0, Lco/vine/android/CropActivity;->mCurrDegrees:I

    const/16 v3, 0x168

    if-lt v2, v3, :cond_0

    .line 146
    iput v1, p0, Lco/vine/android/CropActivity;->mCurrDegrees:I

    .line 148
    :cond_0
    iget v2, p0, Lco/vine/android/CropActivity;->mCurrDegrees:I

    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 149
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 152
    .local v7, result:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lco/vine/android/CropActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v7, v1, :cond_1

    .line 153
    iget-object v1, p0, Lco/vine/android/CropActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 155
    :cond_1
    iput-object v7, p0, Lco/vine/android/CropActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 156
    iget-object v1, p0, Lco/vine/android/CropActivity;->mView:Lco/vine/android/widget/CroppableImageView;

    iget-object v2, p0, Lco/vine/android/CropActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lco/vine/android/widget/CroppableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    return-void
.end method
