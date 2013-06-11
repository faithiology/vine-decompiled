.class public Lco/vine/android/PostActivity;
.super Lco/vine/android/BaseActivity;
.source "PostActivity.java"

# interfaces
.implements Lco/vine/android/PromptDialogSupportFragment$OnDialogDoneListener;


# static fields
.field private static final AG_PREVIEW_PATH:Ljava/lang/String; = "preview_path"

.field private static final AG_THUMBNAIL_PATH:Ljava/lang/String; = "pic_path"

.field private static final DIALOG_UNSAVED_CHANGES:I = 0x124

.field private static final POST_TAG:Ljava/lang/String; = "post"


# instance fields
.field private mCantBackEasily:Z

.field private mFrag:Lco/vine/android/PostFragment;

.field private mVideoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lco/vine/android/BaseActivity;-><init>()V

    return-void
.end method

.method public static getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "videoPath"
    .parameter "thumbnailPath"
    .parameter "previewPath"

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/vine/android/PostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 34
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Well, you should give two paths that are not null you know..."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 37
    const-string v1, "pic_path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v1, "preview_path"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 127
    iget-object v0, p0, Lco/vine/android/PostActivity;->mFrag:Lco/vine/android/PostFragment;

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lco/vine/android/PostActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "post"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lco/vine/android/PostFragment;

    iput-object v0, p0, Lco/vine/android/PostActivity;->mFrag:Lco/vine/android/PostFragment;

    .line 130
    :cond_0
    iget-object v0, p0, Lco/vine/android/PostActivity;->mFrag:Lco/vine/android/PostFragment;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lco/vine/android/PostActivity;->mFrag:Lco/vine/android/PostFragment;

    invoke-virtual {v0, p1, p2, p3}, Lco/vine/android/PostFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lco/vine/android/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 93
    iget-boolean v1, p0, Lco/vine/android/PostActivity;->mCantBackEasily:Z

    if-eqz v1, :cond_0

    .line 94
    const/16 v1, 0x124

    invoke-static {v1}, Lco/vine/android/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/PromptDialogSupportFragment;

    move-result-object v0

    .line 95
    .local v0, p:Lco/vine/android/PromptDialogSupportFragment;
    const v1, 0x7f08008a

    invoke-virtual {v0, v1}, Lco/vine/android/PromptDialogSupportFragment;->setMessage(I)Lco/vine/android/PromptDialogSupportFragment;

    .line 96
    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Lco/vine/android/PromptDialogSupportFragment;->setNegativeButton(I)Lco/vine/android/PromptDialogSupportFragment;

    .line 97
    const v1, 0x7f08008d

    invoke-virtual {v0, v1}, Lco/vine/android/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/PromptDialogSupportFragment;

    .line 98
    invoke-virtual {v0, p0}, Lco/vine/android/PromptDialogSupportFragment;->setListener(Lco/vine/android/PromptDialogSupportFragment$OnDialogDoneListener;)V

    .line 99
    invoke-virtual {p0}, Lco/vine/android/PostActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/vine/android/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    .line 103
    .end local v0           #p:Lco/vine/android/PromptDialogSupportFragment;
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-super {p0}, Lco/vine/android/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    .line 44
    const v4, 0x7f030010

    invoke-super {p0, p1, v4, v7}, Lco/vine/android/BaseActivity;->onCreate(Landroid/os/Bundle;IZ)V

    .line 46
    if-nez p1, :cond_1

    .line 47
    invoke-virtual {p0}, Lco/vine/android/PostActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 48
    .local v0, ab:Landroid/app/ActionBar;
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 49
    const v4, 0x7f0800c8

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 50
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 51
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 53
    invoke-virtual {p0}, Lco/vine/android/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 54
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lco/vine/android/PostActivity;->mVideoPath:Ljava/lang/String;

    .line 55
    new-instance v2, Lco/vine/android/PostFragment;

    invoke-direct {v2}, Lco/vine/android/PostFragment;-><init>()V

    .line 57
    .local v2, frag:Lco/vine/android/PostFragment;
    iget-object v4, p0, Lco/vine/android/PostActivity;->mVideoPath:Ljava/lang/String;

    const-string v5, "pic_path"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "preview_path"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lco/vine/android/PostFragment;->prepareArguments(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 62
    .local v1, args:Landroid/os/Bundle;
    const-string v4, "preview_path"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 63
    iput-boolean v7, p0, Lco/vine/android/PostActivity;->mCantBackEasily:Z

    .line 66
    :cond_0
    const-string v4, "Post activity started for {}."

    iget-object v5, p0, Lco/vine/android/PostActivity;->mVideoPath:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    invoke-virtual {v2, v1}, Lco/vine/android/PostFragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    iput-object v2, p0, Lco/vine/android/PostActivity;->mFrag:Lco/vine/android/PostFragment;

    .line 70
    invoke-virtual {p0}, Lco/vine/android/PostActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f090027

    const-string v6, "post"

    invoke-virtual {v4, v5, v2, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 75
    .end local v0           #ab:Landroid/app/ActionBar;
    .end local v1           #args:Landroid/os/Bundle;
    .end local v2           #frag:Lco/vine/android/PostFragment;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onDialogDone(Landroid/content/DialogInterface;II)V
    .locals 1
    .parameter "dialog"
    .parameter "id"
    .parameter "which"

    .prologue
    .line 108
    packed-switch p2, :pswitch_data_0

    .line 123
    :goto_0
    return-void

    .line 110
    :pswitch_0
    packed-switch p3, :pswitch_data_1

    goto :goto_0

    .line 117
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 112
    :pswitch_2
    iget-object v0, p0, Lco/vine/android/PostActivity;->mVideoPath:Ljava/lang/String;

    invoke-static {p0, v0}, Lco/vine/android/util/UploadManager;->removeFromUploadQueue(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lco/vine/android/PostActivity;->finish()V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x124
        :pswitch_0
    .end packed-switch

    .line 110
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 78
    iget-boolean v0, p0, Lco/vine/android/PostActivity;->mCantBackEasily:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 84
    invoke-super {p0, p1}, Lco/vine/android/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 87
    :goto_0
    return v0

    .line 81
    :pswitch_0
    invoke-virtual {p0}, Lco/vine/android/PostActivity;->onBackPressed()V

    .line 82
    const/4 v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    invoke-super {p0, p1}, Lco/vine/android/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
