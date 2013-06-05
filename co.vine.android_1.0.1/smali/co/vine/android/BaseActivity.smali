.class public Lco/vine/android/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"


# static fields
.field private static final STATE_PENDING_REQUESTS:Ljava/lang/String; = "pending_reqs"


# instance fields
.field protected mAppController:Lco/vine/android/client/AppController;

.field protected mAppSessionListener:Lco/vine/android/client/AppSessionListener;

.field private mParentActivity:Landroid/app/Activity;

.field private mPendingRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mProgressDialog:Landroid/app/ProgressDialog;

.field private final mTaskManager:Lco/vine/android/async/UiTaskManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 32
    new-instance v0, Lco/vine/android/async/UiTaskManager;

    invoke-direct {v0, p0}, Lco/vine/android/async/UiTaskManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lco/vine/android/BaseActivity;->mTaskManager:Lco/vine/android/async/UiTaskManager;

    return-void
.end method


# virtual methods
.method protected dismissDialog()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/BaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 138
    :cond_0
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mTaskManager:Lco/vine/android/async/UiTaskManager;

    invoke-virtual {v0}, Lco/vine/android/async/UiTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getTaskManager()Lco/vine/android/async/UiTaskManager;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mTaskManager:Lco/vine/android/async/UiTaskManager;

    return-object v0
.end method

.method protected goHome(Ljava/lang/String;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 126
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mParentActivity:Landroid/app/Activity;

    .line 127
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 128
    move-object v0, p0

    .line 130
    :cond_0
    invoke-static {v0, p1}, Lco/vine/android/HomeTabActivity;->start(Landroid/app/Activity;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 159
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 160
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mTaskManager:Lco/vine/android/async/UiTaskManager;

    invoke-virtual {v0, p1, p2, p3}, Lco/vine/android/async/UiTaskManager;->onActivityResult(IILandroid/content/Intent;)V

    .line 161
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "If extending BaseActivity, please use multiple parameter version of this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;IZ)V
    .locals 4
    .parameter "savedInstanceState"
    .parameter "layout"
    .parameter "loginRequired"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lco/vine/android/BaseActivity;->preSetContentView()V

    .line 58
    invoke-virtual {p0, p2}, Lco/vine/android/BaseActivity;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Lco/vine/android/BaseActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 61
    .local v1, parent:Landroid/app/Activity;
    invoke-static {p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v0

    .line 63
    .local v0, appController:Lco/vine/android/client/AppController;
    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lco/vine/android/client/AppController;->isLoggedIn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    if-nez v1, :cond_0

    .line 65
    invoke-static {p0}, Lco/vine/android/StartActivity;->toStart(Landroid/app/Activity;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    if-eqz p1, :cond_2

    .line 71
    const-string v2, "pending_reqs"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/BaseActivity;->mPendingRequests:Ljava/util/ArrayList;

    .line 76
    :goto_1
    iput-object v1, p0, Lco/vine/android/BaseActivity;->mParentActivity:Landroid/app/Activity;

    .line 77
    iput-object v0, p0, Lco/vine/android/BaseActivity;->mAppController:Lco/vine/android/client/AppController;

    .line 78
    iget-object v2, p0, Lco/vine/android/BaseActivity;->mTaskManager:Lco/vine/android/async/UiTaskManager;

    invoke-virtual {v2, p1}, Lco/vine/android/async/UiTaskManager;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    .line 73
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lco/vine/android/BaseActivity;->mPendingRequests:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 148
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mTaskManager:Lco/vine/android/async/UiTaskManager;

    invoke-virtual {v0}, Lco/vine/android/async/UiTaskManager;->onDestroy()V

    .line 149
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 109
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 115
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 111
    :pswitch_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 112
    const/4 v0, 0x1

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 100
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/BaseActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->removeListener(Lco/vine/android/client/AppSessionListener;)V

    .line 103
    :cond_0
    invoke-virtual {p0}, Lco/vine/android/BaseActivity;->dismissDialog()V

    .line 104
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mTaskManager:Lco/vine/android/async/UiTaskManager;

    invoke-virtual {v0}, Lco/vine/android/async/UiTaskManager;->onPause()V

    .line 105
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 154
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mTaskManager:Lco/vine/android/async/UiTaskManager;

    invoke-virtual {v0, p1}, Lco/vine/android/async/UiTaskManager;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 155
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 91
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/BaseActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->addListener(Lco/vine/android/client/AppSessionListener;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mTaskManager:Lco/vine/android/async/UiTaskManager;

    invoke-virtual {v0}, Lco/vine/android/async/UiTaskManager;->onResume()V

    .line 95
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 84
    const-string v0, "pending_reqs"

    iget-object v1, p0, Lco/vine/android/BaseActivity;->mPendingRequests:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 85
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mTaskManager:Lco/vine/android/async/UiTaskManager;

    invoke-virtual {v0, p1}, Lco/vine/android/async/UiTaskManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 86
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 37
    invoke-static {p0}, Lco/vine/android/util/FlurryUtils;->start(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 43
    invoke-static {p0}, Lco/vine/android/util/FlurryUtils;->stop(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public preSetContentView()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method
