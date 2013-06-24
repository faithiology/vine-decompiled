.class public Lco/vine/android/RecordingActivity;
.super Lco/vine/android/BaseActivity;
.source "RecordingActivity.java"

# interfaces
.implements Lco/vine/android/PromptDialogFragment$OnDialogDoneListener;


# static fields
.field private static final DIALOG_UNSAVED_CHANGES:I = 0x0

.field private static final STEP_NONE:I = -0x1

.field private static final STEP_PREVIEW:I = 0x1

.field private static final STEP_RECORD:I


# instance fields
.field public mCurrentDuration:J

.field private mCurrentFragment:Landroid/support/v4/app/Fragment;

.field private mPrefs:Landroid/content/SharedPreferences;

.field public mProgressContainerWidth:I

.field private mStep:I

.field private mUploadFile:Ljava/lang/String;

.field private zoomEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lco/vine/android/BaseActivity;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lco/vine/android/RecordingActivity;->mStep:I

    return-void
.end method

.method private currentlyHoldsRecordingFragment()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lco/vine/android/RecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/RecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lco/vine/android/RecordingFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private discardUpload()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lco/vine/android/RecordingActivity;->mUploadFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lco/vine/android/RecordingActivity;->mUploadFile:Ljava/lang/String;

    invoke-static {p0, v0}, Lco/vine/android/util/UploadManager;->removeFromUploadQueue(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    :cond_0
    return-void
.end method


# virtual methods
.method public initMasks(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .parameter "topMask"
    .parameter "bottomMask"

    .prologue
    const/4 v5, 0x0

    .line 66
    new-instance v2, Lco/vine/android/RecordingActivity$1;

    invoke-direct {v2, p0}, Lco/vine/android/RecordingActivity$1;-><init>(Lco/vine/android/RecordingActivity;)V

    .line 71
    .local v2, onMaskTouchListener:Landroid/view/View$OnTouchListener;
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 75
    const-string v3, "capture"

    invoke-virtual {p0, v3, v5}, Lco/vine/android/RecordingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lco/vine/android/RecordingActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 76
    iget-object v3, p0, Lco/vine/android/RecordingActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "bottomMaskHeightPx"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 78
    .local v0, bottomMaskHeightPx:I
    if-lez v0, :cond_0

    .line 79
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 81
    .local v1, bottomMaskParams:Landroid/widget/RelativeLayout$LayoutParams;
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 83
    new-instance v3, Lco/vine/android/RecordingActivity$2;

    invoke-direct {v3, p0, p2, v1}, Lco/vine/android/RecordingActivity$2;-><init>(Lco/vine/android/RecordingActivity;Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {p0, v3}, Lco/vine/android/RecordingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 90
    .end local v1           #bottomMaskParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 208
    const/16 v0, 0x1f

    if-ne p2, v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lco/vine/android/RecordingActivity;->finish()V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lco/vine/android/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 7

    .prologue
    const v6, 0x7f07009b

    const v5, 0x7f070052

    const/4 v4, 0x0

    .line 103
    iget v2, p0, Lco/vine/android/RecordingActivity;->mStep:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 104
    invoke-super {p0}, Lco/vine/android/BaseActivity;->onBackPressed()V

    .line 131
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-direct {p0}, Lco/vine/android/RecordingActivity;->currentlyHoldsRecordingFragment()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    iget-object v0, p0, Lco/vine/android/RecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lco/vine/android/RecordingFragment;

    .line 109
    .local v0, fragment:Lco/vine/android/RecordingFragment;
    invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->isProgressDirty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->setDiscardChangesOnStop()V

    .line 111
    invoke-super {p0}, Lco/vine/android/BaseActivity;->onBackPressed()V

    goto :goto_0

    .line 115
    .end local v0           #fragment:Lco/vine/android/RecordingFragment;
    :cond_1
    iget v2, p0, Lco/vine/android/RecordingActivity;->mStep:I

    if-nez v2, :cond_2

    .line 116
    invoke-static {v4}, Lco/vine/android/PromptDialogFragment;->newInstance(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v1

    .line 117
    .local v1, p:Lco/vine/android/PromptDialogFragment;
    invoke-virtual {v1, v6}, Lco/vine/android/PromptDialogFragment;->setMessage(I)Lco/vine/android/PromptDialogFragment;

    .line 118
    const v2, 0x7f07009e

    invoke-virtual {v1, v2}, Lco/vine/android/PromptDialogFragment;->setNeutralButton(I)Lco/vine/android/PromptDialogFragment;

    .line 119
    invoke-virtual {v1, v5}, Lco/vine/android/PromptDialogFragment;->setPositiveButton(I)Lco/vine/android/PromptDialogFragment;

    .line 120
    invoke-virtual {v1, p0}, Lco/vine/android/PromptDialogFragment;->setListener(Lco/vine/android/PromptDialogFragment$OnDialogDoneListener;)V

    .line 121
    invoke-virtual {p0}, Lco/vine/android/RecordingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/PromptDialogFragment;->show(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 123
    .end local v1           #p:Lco/vine/android/PromptDialogFragment;
    :cond_2
    invoke-static {v4}, Lco/vine/android/PromptDialogFragment;->newInstance(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v1

    .line 124
    .restart local v1       #p:Lco/vine/android/PromptDialogFragment;
    invoke-virtual {v1, v6}, Lco/vine/android/PromptDialogFragment;->setMessage(I)Lco/vine/android/PromptDialogFragment;

    .line 125
    const v2, 0x7f0700a0

    invoke-virtual {v1, v2}, Lco/vine/android/PromptDialogFragment;->setNegativeButton(I)Lco/vine/android/PromptDialogFragment;

    .line 126
    const v2, 0x7f07009f

    invoke-virtual {v1, v2}, Lco/vine/android/PromptDialogFragment;->setNeutralButton(I)Lco/vine/android/PromptDialogFragment;

    .line 127
    invoke-virtual {v1, v5}, Lco/vine/android/PromptDialogFragment;->setPositiveButton(I)Lco/vine/android/PromptDialogFragment;

    .line 128
    invoke-virtual {v1, p0}, Lco/vine/android/PromptDialogFragment;->setListener(Lco/vine/android/PromptDialogFragment$OnDialogDoneListener;)V

    .line 129
    invoke-virtual {p0}, Lco/vine/android/RecordingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/PromptDialogFragment;->show(Landroid/app/FragmentManager;)V

    goto :goto_0
.end method

.method public onBackPressed(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 98
    invoke-virtual {p0}, Lco/vine/android/RecordingActivity;->onBackPressed()V

    .line 99
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 57
    const v0, 0x7f030011

    invoke-super {p0, p1, v0, v1}, Lco/vine/android/BaseActivity;->onCreate(Landroid/os/Bundle;IZ)V

    .line 58
    new-instance v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    invoke-direct {v0, p0}, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;-><init>(Landroid/content/Context;)V

    iget-boolean v0, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->zoomEnabled:Z

    iput-boolean v0, p0, Lco/vine/android/RecordingActivity;->zoomEnabled:Z

    .line 59
    if-nez p1, :cond_0

    .line 60
    invoke-virtual {p0, v1}, Lco/vine/android/RecordingActivity;->toRecord(Z)V

    .line 62
    :cond_0
    return-void
.end method

.method public onDialogDone(Landroid/content/DialogInterface;II)V
    .locals 1
    .parameter "dialog"
    .parameter "id"
    .parameter "which"

    .prologue
    .line 135
    packed-switch p2, :pswitch_data_0

    .line 165
    :goto_0
    :pswitch_0
    return-void

    .line 137
    :pswitch_1
    packed-switch p3, :pswitch_data_1

    goto :goto_0

    .line 142
    :pswitch_2
    iget v0, p0, Lco/vine/android/RecordingActivity;->mStep:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 144
    :pswitch_3
    invoke-direct {p0}, Lco/vine/android/RecordingActivity;->currentlyHoldsRecordingFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lco/vine/android/RecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lco/vine/android/RecordingFragment;

    invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->setDiscardChangesOnStop()V

    .line 147
    :cond_0
    invoke-direct {p0}, Lco/vine/android/RecordingActivity;->discardUpload()V

    .line 148
    invoke-virtual {p0}, Lco/vine/android/RecordingActivity;->finish()V

    goto :goto_0

    .line 151
    :pswitch_4
    invoke-direct {p0}, Lco/vine/android/RecordingActivity;->discardUpload()V

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/RecordingActivity;->toRecord(Z)V

    goto :goto_0

    .line 158
    :pswitch_5
    invoke-direct {p0}, Lco/vine/android/RecordingActivity;->discardUpload()V

    .line 159
    invoke-virtual {p0}, Lco/vine/android/RecordingActivity;->finish()V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 137
    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_2
        :pswitch_5
        :pswitch_0
    .end packed-switch

    .line 142
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v1, 0x18

    const/4 v2, 0x1

    .line 217
    iget-boolean v0, p0, Lco/vine/android/RecordingActivity;->zoomEnabled:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lco/vine/android/RecordingActivity;->mStep:I

    if-nez v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    const/16 v0, 0xa8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa9

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lco/vine/android/RecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lco/vine/android/RecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lco/vine/android/RecordingFragment;

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lco/vine/android/RecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lco/vine/android/RecordingFragment;

    if-ne p1, v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lco/vine/android/RecordingFragment;->modifyZoom(Z)V

    .line 226
    :goto_1
    return v2

    .line 223
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 226
    :cond_2
    invoke-super {p0, p1, p2}, Lco/vine/android/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method public preSetContentView()V
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lco/vine/android/RecordingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 48
    invoke-static {}, Lco/vine/android/recorder/CameraManager;->hasCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-static {p0}, Lco/vine/android/util/Util;->showNoCameraToast(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0}, Lco/vine/android/RecordingActivity;->finish()V

    .line 53
    :cond_0
    return-void
.end method

.method public toPreview(Lco/vine/android/recorder/RecordingFile;Ljava/lang/String;)V
    .locals 4
    .parameter "finalFile"
    .parameter "thumbNailPath"

    .prologue
    .line 189
    :try_start_0
    invoke-static {p0, p1, p2}, Lco/vine/android/util/UploadManager;->addToUploadQueue(Landroid/content/Context;Lco/vine/android/recorder/RecordingFile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/RecordingActivity;->mUploadFile:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    iget-object v2, p0, Lco/vine/android/RecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    instance-of v2, v2, Lco/vine/android/RecordingFragment;

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lco/vine/android/RecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 196
    :cond_0
    iget-object v2, p0, Lco/vine/android/RecordingActivity;->mUploadFile:Ljava/lang/String;

    invoke-static {p1, v2, p2}, Lco/vine/android/RecordingPreviewFragment;->newInstance(Lco/vine/android/recorder/RecordingFile;Ljava/lang/String;Ljava/lang/String;)Lco/vine/android/RecordingPreviewFragment;

    move-result-object v1

    .line 197
    .local v1, fragment:Lco/vine/android/RecordingPreviewFragment;
    const/4 v2, 0x1

    iput v2, p0, Lco/vine/android/RecordingActivity;->mStep:I

    .line 198
    invoke-virtual {p0}, Lco/vine/android/RecordingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f09002a

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 202
    iput-object v1, p0, Lco/vine/android/RecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    .line 203
    return-void

    .line 190
    .end local v1           #fragment:Lco/vine/android/RecordingPreviewFragment;
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/Exception;
    const v2, 0x7f0700a1

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public toRecord(Z)V
    .locals 4
    .parameter "isNew"

    .prologue
    const v3, 0x7f09002a

    .line 174
    const/4 v2, 0x0

    iput v2, p0, Lco/vine/android/RecordingActivity;->mStep:I

    .line 175
    new-instance v0, Lco/vine/android/RecordingFragment;

    invoke-direct {v0}, Lco/vine/android/RecordingFragment;-><init>()V

    .line 176
    .local v0, fragment:Lco/vine/android/RecordingFragment;
    invoke-virtual {p0}, Lco/vine/android/RecordingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 177
    .local v1, ft:Landroid/support/v4/app/FragmentTransaction;
    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {v1, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 182
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 183
    iput-object v0, p0, Lco/vine/android/RecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    .line 184
    return-void

    .line 180
    :cond_0
    invoke-virtual {v1, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method
