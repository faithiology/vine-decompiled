.class public Lco/vine/android/EditProfileCropActivity;
.super Lco/vine/android/CropActivity;
.source "EditProfileCropActivity.java"


# instance fields
.field private mSaveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lco/vine/android/CropActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBitmapProcessingDone(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bmp"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lco/vine/android/CropActivity;->onBitmapProcessingDone(Landroid/graphics/Bitmap;)V

    .line 30
    iget-object v0, p0, Lco/vine/android/EditProfileCropActivity;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 31
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 17
    const v1, 0x7f030005

    invoke-super {p0, p1, v1}, Lco/vine/android/CropActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 18
    const v1, 0x7f090018

    invoke-virtual {p0, v1}, Lco/vine/android/EditProfileCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lco/vine/android/EditProfileCropActivity;->mSaveButton:Landroid/widget/Button;

    .line 19
    iget-object v1, p0, Lco/vine/android/EditProfileCropActivity;->mSaveButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 20
    iget-object v1, p0, Lco/vine/android/EditProfileCropActivity;->mView:Lco/vine/android/widget/CroppableImageView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lco/vine/android/widget/CroppableImageView;->setCropType(I)V

    .line 22
    invoke-virtual {p0}, Lco/vine/android/EditProfileCropActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 23
    .local v0, ab:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 24
    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 25
    return-void
.end method
