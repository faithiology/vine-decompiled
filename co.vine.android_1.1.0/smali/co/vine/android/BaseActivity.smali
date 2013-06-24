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
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 34
    new-instance v0, Lco/vine/android/async/UiTaskManager;

    invoke-direct {v0, p0}, Lco/vine/android/async/UiTaskManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lco/vine/android/BaseActivity;->mTaskManager:Lco/vine/android/async/UiTaskManager;

    return-void
.end method


# virtual methods
.method protected dismissDialog()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/BaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 141
    :cond_0
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mTaskManager:Lco/vine/android/async/UiTaskManager;

    invoke-virtual {v0}, Lco/vine/android/async/UiTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getTaskManager()Lco/vine/android/async/UiTaskManager;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mTaskManager:Lco/vine/android/async/UiTaskManager;

    return-object v0
.end method

.method protected goHome(Ljava/lang/String;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 129
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mParentActivity:Landroid/app/Activity;

    .line 130
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 131
    move-object v0, p0

    .line 133
    :cond_0
    invoke-static {v0, p1}, Lco/vine/android/HomeTabActivity;->start(Landroid/app/Activity;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 162
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 163
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mTaskManager:Lco/vine/android/async/UiTaskManager;

    invoke-virtual {v0, p1, p2, p3}, Lco/vine/android/async/UiTaskManager;->onActivityResult(IILandroid/content/Intent;)V

    .line 164
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 50
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
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lco/vine/android/BaseActivity;->preSetContentView()V

    .line 60
    invoke-virtual {p0, p2}, Lco/vine/android/BaseActivity;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lco/vine/android/BaseActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 63
    .local v1, parent:Landroid/app/Activity;
    invoke-static {p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v0

    .line 65
    .local v0, appController:Lco/vine/android/client/AppController;
    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lco/vine/android/client/AppController;->isLoggedIn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    if-nez v1, :cond_0

    .line 67
    invoke-static {p0}, Lco/vine/android/StartActivity;->toStart(Landroid/app/Activity;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    if-eqz p1, :cond_2

    .line 73
    const-string v2, "pending_reqs"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/BaseActivity;->mPendingRequests:Ljava/util/ArrayList;

    .line 78
    :goto_1
    iput-object v1, p0, Lco/vine/android/BaseActivity;->mParentActivity:Landroid/app/Activity;

    .line 79
    iput-object v0, p0, Lco/vine/android/BaseActivity;->mAppController:Lco/vine/android/client/AppController;

    .line 80
    iget-object v2, p0, Lco/vine/android/BaseActivity;->mTaskManager:Lco/vine/android/async/UiTaskManager;

    invoke-virtual {v2, p1}, Lco/vine/android/async/UiTaskManager;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    .line 75
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
    .line 150
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 151
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mTaskManager:Lco/vine/android/async/UiTaskManager;

    invoke-virtual {v0}, Lco/vine/android/async/UiTaskManager;->onDestroy()V

    .line 152
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 112
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 118
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 114
    :pswitch_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 115
    const/4 v0, 0x1

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 103
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/BaseActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->removeListener(Lco/vine/android/client/AppSessionListener;)V

    .line 106
    :cond_0
    invoke-virtual {p0}, Lco/vine/android/BaseActivity;->dismissDialog()V

    .line 107
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mTaskManager:Lco/vine/android/async/UiTaskManager;

    invoke-virtual {v0}, Lco/vine/android/async/UiTaskManager;->onPause()V

    .line 108
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 157
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mTaskManager:Lco/vine/android/async/UiTaskManager;

    invoke-virtual {v0, p1}, Lco/vine/android/async/UiTaskManager;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 158
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 93
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/BaseActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->addListener(Lco/vine/android/client/AppSessionListener;)V

    .line 96
    :cond_0
    const-string v0, "Activity"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mTaskManager:Lco/vine/android/async/UiTaskManager;

    invoke-virtual {v0}, Lco/vine/android/async/UiTaskManager;->onResume()V

    .line 98
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 86
    const-string v0, "pending_reqs"

    iget-object v1, p0, Lco/vine/android/BaseActivity;->mPendingRequests:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 87
    iget-object v0, p0, Lco/vine/android/BaseActivity;->mTaskManager:Lco/vine/android/async/UiTaskManager;

    invoke-virtual {v0, p1}, Lco/vine/android/async/UiTaskManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 88
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 39
    invoke-static {p0}, Lco/vine/android/util/FlurryUtils;->start(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 45
    invoke-static {p0}, Lco/vine/android/util/FlurryUtils;->stop(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public preSetContentView()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method
