.class public Lco/vine/android/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field protected mAppController:Lco/vine/android/client/AppController;

.field protected mAppSessionListener:Lco/vine/android/client/AppSessionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 22
    return-void
.end method

.method public static prepareArguments(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 1
    .parameter "intent"

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 38
    .local v0, args:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #args:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .restart local v0       #args:Landroid/os/Bundle;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lco/vine/android/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/BaseFragment;->mAppController:Lco/vine/android/client/AppController;

    .line 28
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 56
    iget-object v0, p0, Lco/vine/android/BaseFragment;->mAppController:Lco/vine/android/client/AppController;

    .line 57
    .local v0, appController:Lco/vine/android/client/AppController;
    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Lco/vine/android/BaseFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lco/vine/android/BaseFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->removeListener(Lco/vine/android/client/AppSessionListener;)V

    .line 62
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 47
    iget-object v0, p0, Lco/vine/android/BaseFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lco/vine/android/BaseFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/BaseFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->addListener(Lco/vine/android/client/AppSessionListener;)V

    .line 50
    :cond_0
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->onPageView()V

    .line 51
    return-void
.end method
