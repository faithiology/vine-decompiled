.class public Lco/vine/android/SignUpPagerActivity;
.super Lco/vine/android/BaseActivity;
.source "SignUpPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/SignUpPagerActivity$1;,
        Lco/vine/android/SignUpPagerActivity$SignUpListener;,
        Lco/vine/android/SignUpPagerActivity$SignUpPagerAdapter;
    }
.end annotation


# static fields
.field public static final EXTRA_LOGIN:Ljava/lang/String; = "user"

.field public static final FLOW_STEP_DETAILS:I = 0x1

.field public static final FLOW_STEP_NAME_AVATAR:I = 0x0

.field private static final NUM_PAGES:I = 0x2

.field private static final STATE_LOGIN:Ljava/lang/String; = "s_login"

.field private static final STATE_NAME:Ljava/lang/String; = "s_name"

.field private static final STATE_PASSWORD:Ljava/lang/String; = "s_password"

.field private static final STATE_PHONE:Ljava/lang/String; = "s_phone"

.field private static final STATE_PROFILE:Ljava/lang/String; = "s_profile"


# instance fields
.field private mLogin:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPager:Lco/vine/android/widget/ConfigurableViewPager;

.field private mPassword:Ljava/lang/String;

.field private mPhone:Ljava/lang/String;

.field private mProfile:Landroid/net/Uri;

.field private mTwitterUser:Lco/vine/android/api/TwitterUser;

.field private mVineLogin:Lco/vine/android/api/VineLogin;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lco/vine/android/BaseActivity;-><init>()V

    .line 195
    return-void
.end method

.method static synthetic access$100(Lco/vine/android/SignUpPagerActivity;)Lco/vine/android/api/VineLogin;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity;->mVineLogin:Lco/vine/android/api/VineLogin;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity;->mPager:Lco/vine/android/widget/ConfigurableViewPager;

    invoke-virtual {v0}, Lco/vine/android/widget/ConfigurableViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-super {p0}, Lco/vine/android/BaseActivity;->onBackPressed()V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity;->mPager:Lco/vine/android/widget/ConfigurableViewPager;

    iget-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mPager:Lco/vine/android/widget/ConfigurableViewPager;

    invoke-virtual {v1}, Lco/vine/android/widget/ConfigurableViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lco/vine/android/widget/ConfigurableViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 52
    const v0, 0x7f030026

    invoke-super {p0, p1, v0, v1}, Lco/vine/android/BaseActivity;->onCreate(Landroid/os/Bundle;IZ)V

    .line 54
    const v0, 0x7f090035

    invoke-virtual {p0, v0}, Lco/vine/android/SignUpPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/ConfigurableViewPager;

    iput-object v0, p0, Lco/vine/android/SignUpPagerActivity;->mPager:Lco/vine/android/widget/ConfigurableViewPager;

    .line 55
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity;->mPager:Lco/vine/android/widget/ConfigurableViewPager;

    invoke-virtual {v0, v1}, Lco/vine/android/widget/ConfigurableViewPager;->setSwipingEnabled(Z)V

    .line 56
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity;->mPager:Lco/vine/android/widget/ConfigurableViewPager;

    new-instance v1, Lco/vine/android/SignUpPagerActivity$SignUpPagerAdapter;

    invoke-virtual {p0}, Lco/vine/android/SignUpPagerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lco/vine/android/SignUpPagerActivity$SignUpPagerAdapter;-><init>(Lco/vine/android/SignUpPagerActivity;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Lco/vine/android/widget/ConfigurableViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 58
    new-instance v0, Lco/vine/android/SignUpPagerActivity$SignUpListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lco/vine/android/SignUpPagerActivity$SignUpListener;-><init>(Lco/vine/android/SignUpPagerActivity;Lco/vine/android/SignUpPagerActivity$1;)V

    iput-object v0, p0, Lco/vine/android/SignUpPagerActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    .line 59
    invoke-virtual {p0}, Lco/vine/android/SignUpPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lco/vine/android/api/VineLogin;

    iput-object v0, p0, Lco/vine/android/SignUpPagerActivity;->mVineLogin:Lco/vine/android/api/VineLogin;

    .line 61
    if-eqz p1, :cond_0

    .line 62
    const-string v0, "s_login"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/SignUpPagerActivity;->mLogin:Ljava/lang/String;

    .line 63
    const-string v0, "s_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/SignUpPagerActivity;->mName:Ljava/lang/String;

    .line 64
    const-string v0, "s_password"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/SignUpPagerActivity;->mPassword:Ljava/lang/String;

    .line 65
    const-string v0, "s_phone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/SignUpPagerActivity;->mPhone:Ljava/lang/String;

    .line 66
    const-string v0, "s_profile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lco/vine/android/SignUpPagerActivity;->mProfile:Landroid/net/Uri;

    .line 69
    :cond_0
    invoke-virtual {p0}, Lco/vine/android/SignUpPagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 70
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 93
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 99
    invoke-super {p0, p1}, Lco/vine/android/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 95
    :pswitch_0
    invoke-virtual {p0}, Lco/vine/android/SignUpPagerActivity;->onBackPressed()V

    .line 96
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lco/vine/android/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 75
    const-string v0, "s_login"

    iget-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mLogin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "s_password"

    iget-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "s_name"

    iget-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "s_phone"

    iget-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mPhone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "s_profile"

    iget-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mProfile:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 80
    return-void
.end method

.method protected setBarTitle(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 135
    invoke-virtual {p0}, Lco/vine/android/SignUpPagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 136
    .local v0, ab:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 137
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 138
    return-void
.end method

.method public setLogin(Ljava/lang/String;)V
    .locals 0
    .parameter "login"

    .prologue
    .line 141
    iput-object p1, p0, Lco/vine/android/SignUpPagerActivity;->mLogin:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 153
    iput-object p1, p0, Lco/vine/android/SignUpPagerActivity;->mName:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 145
    iput-object p1, p0, Lco/vine/android/SignUpPagerActivity;->mPassword:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 149
    iput-object p1, p0, Lco/vine/android/SignUpPagerActivity;->mPhone:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setProfile(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 157
    iput-object p1, p0, Lco/vine/android/SignUpPagerActivity;->mProfile:Landroid/net/Uri;

    .line 158
    return-void
.end method

.method public setTwitterUser(Lco/vine/android/api/TwitterUser;)V
    .locals 0
    .parameter "tUser"

    .prologue
    .line 161
    iput-object p1, p0, Lco/vine/android/SignUpPagerActivity;->mTwitterUser:Lco/vine/android/api/TwitterUser;

    .line 162
    return-void
.end method

.method protected toNextStep()V
    .locals 11

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity;->mPager:Lco/vine/android/widget/ConfigurableViewPager;

    invoke-virtual {v0}, Lco/vine/android/widget/ConfigurableViewPager;->getCurrentItem()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity;->mTwitterUser:Lco/vine/android/api/TwitterUser;

    if-eqz v0, :cond_0

    .line 108
    new-instance v10, Landroid/app/ProgressDialog;

    invoke-direct {v10, p0, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 110
    .local v10, dialog:Landroid/app/ProgressDialog;
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lco/vine/android/SignUpPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v10, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 112
    invoke-virtual {v10}, Landroid/app/ProgressDialog;->show()V

    .line 113
    iput-object v10, p0, Lco/vine/android/SignUpPagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 114
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-object v3, p0, Lco/vine/android/SignUpPagerActivity;->mName:Ljava/lang/String;

    iget-object v5, p0, Lco/vine/android/SignUpPagerActivity;->mProfile:Landroid/net/Uri;

    iget-object v6, p0, Lco/vine/android/SignUpPagerActivity;->mTwitterUser:Lco/vine/android/api/TwitterUser;

    iget-object v7, p0, Lco/vine/android/SignUpPagerActivity;->mVineLogin:Lco/vine/android/api/VineLogin;

    move-object v2, v1

    move-object v4, v1

    invoke-virtual/range {v0 .. v7}, Lco/vine/android/client/AppController;->signUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lco/vine/android/api/TwitterUser;Lco/vine/android/api/VineLogin;)Ljava/lang/String;

    goto :goto_0

    .line 117
    .end local v10           #dialog:Landroid/app/ProgressDialog;
    :cond_0
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity;->mPager:Lco/vine/android/widget/ConfigurableViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lco/vine/android/widget/ConfigurableViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 122
    :pswitch_1
    new-instance v10, Landroid/app/ProgressDialog;

    invoke-direct {v10, p0, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 124
    .restart local v10       #dialog:Landroid/app/ProgressDialog;
    iput-object v10, p0, Lco/vine/android/SignUpPagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 125
    invoke-virtual {v10, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 126
    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lco/vine/android/SignUpPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {v10}, Landroid/app/ProgressDialog;->show()V

    .line 128
    iget-object v2, p0, Lco/vine/android/SignUpPagerActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-object v3, p0, Lco/vine/android/SignUpPagerActivity;->mLogin:Ljava/lang/String;

    iget-object v4, p0, Lco/vine/android/SignUpPagerActivity;->mPassword:Ljava/lang/String;

    iget-object v5, p0, Lco/vine/android/SignUpPagerActivity;->mName:Ljava/lang/String;

    iget-object v6, p0, Lco/vine/android/SignUpPagerActivity;->mPhone:Ljava/lang/String;

    iget-object v7, p0, Lco/vine/android/SignUpPagerActivity;->mProfile:Landroid/net/Uri;

    move-object v8, v1

    move-object v9, v1

    invoke-virtual/range {v2 .. v9}, Lco/vine/android/client/AppController;->signUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lco/vine/android/api/TwitterUser;Lco/vine/android/api/VineLogin;)Ljava/lang/String;

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
