.class public Lco/vine/android/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# instance fields
.field private SETTINGS_TAG:Ljava/lang/String;

.field private mFrag:Lco/vine/android/SettingsFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 15
    const-string v0, "settings"

    iput-object v0, p0, Lco/vine/android/SettingsActivity;->SETTINGS_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 73
    iget-object v0, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lco/vine/android/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/SettingsActivity;->SETTINGS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lco/vine/android/SettingsFragment;

    iput-object v0, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;

    .line 76
    :cond_0
    iget-object v0, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;

    invoke-virtual {v0, p1, p2, p3}, Lco/vine/android/SettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lco/vine/android/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/SettingsActivity;->SETTINGS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lco/vine/android/SettingsFragment;

    iput-object v0, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;

    .line 59
    :cond_0
    iget-object v0, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;

    invoke-virtual {v0}, Lco/vine/android/SettingsFragment;->onBackPressed()V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 19
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lco/vine/android/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 22
    .local v0, ab:Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 23
    const v1, 0x7f080064

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 24
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 25
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v1, Lco/vine/android/SettingsFragment;

    invoke-direct {v1}, Lco/vine/android/SettingsFragment;-><init>()V

    iput-object v1, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;

    .line 29
    invoke-virtual {p0}, Lco/vine/android/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    iget-object v3, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;

    iget-object v4, p0, Lco/vine/android/SettingsActivity;->SETTINGS_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 34
    :cond_0
    return-void
.end method

.method public onFinishedWithBackPress()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 68
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 38
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 49
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 40
    :pswitch_0
    iget-object v0, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lco/vine/android/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/SettingsActivity;->SETTINGS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lco/vine/android/SettingsFragment;

    iput-object v0, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;

    .line 43
    :cond_0
    iget-object v0, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;

    invoke-virtual {v0}, Lco/vine/android/SettingsFragment;->onBackPressed()V

    .line 46
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
