.class public Lco/vine/android/ProfileActivity;
.super Lco/vine/android/BaseActivity;
.source "ProfileActivity.java"


# static fields
.field private static final EXTRA_USER_ID:Ljava/lang/String; = "user_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lco/vine/android/BaseActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "userId"

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/vine/android/ProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v0, i:Landroid/content/Intent;
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 22
    const v3, 0x7f030011

    invoke-super {p0, p1, v3, v4}, Lco/vine/android/BaseActivity;->onCreate(Landroid/os/Bundle;IZ)V

    .line 23
    invoke-virtual {p0, v4}, Lco/vine/android/ProfileActivity;->setRequestedOrientation(I)V

    .line 25
    invoke-virtual {p0}, Lco/vine/android/ProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 27
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lco/vine/android/ProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 28
    .local v0, ab:Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 29
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 30
    const v3, 0x7f0700da

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 32
    if-nez p1, :cond_0

    .line 33
    new-instance v1, Lco/vine/android/ProfileFragment;

    invoke-direct {v1}, Lco/vine/android/ProfileFragment;-><init>()V

    .line 34
    .local v1, fragment:Lco/vine/android/ProfileFragment;
    const-string v3, "refresh"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 35
    const-string v3, "take_focus"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36
    invoke-static {v2, v4}, Lco/vine/android/BaseListFragment;->prepareArguments(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lco/vine/android/ProfileFragment;->setArguments(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lco/vine/android/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f09002a

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 42
    .end local v1           #fragment:Lco/vine/android/ProfileFragment;
    :cond_0
    return-void
.end method
