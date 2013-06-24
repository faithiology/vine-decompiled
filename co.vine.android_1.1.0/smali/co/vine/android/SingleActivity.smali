.class public Lco/vine/android/SingleActivity;
.super Lco/vine/android/BaseActivity;
.source "SingleActivity.java"


# static fields
.field private static final EXTRA_POST_ID:Ljava/lang/String; = "post_id"

.field private static final EXTRA_SHARE_ID:Ljava/lang/String; = "post_share_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lco/vine/android/BaseActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "postId"

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/vine/android/SingleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, i:Landroid/content/Intent;
    const-string v1, "post_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "shareId"

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/vine/android/SingleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v0, i:Landroid/content/Intent;
    const-string v1, "post_share_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 19
    const v3, 0x7f030011

    invoke-super {p0, p1, v3, v4}, Lco/vine/android/BaseActivity;->onCreate(Landroid/os/Bundle;IZ)V

    .line 20
    invoke-virtual {p0, v4}, Lco/vine/android/SingleActivity;->setRequestedOrientation(I)V

    .line 22
    invoke-virtual {p0}, Lco/vine/android/SingleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 24
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lco/vine/android/SingleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 25
    .local v0, ab:Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 26
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 27
    const v3, 0x7f0700c4

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v1, Lco/vine/android/SingleFragment;

    invoke-direct {v1}, Lco/vine/android/SingleFragment;-><init>()V

    .line 31
    .local v1, fragment:Lco/vine/android/SingleFragment;
    const-string v3, "take_focus"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lco/vine/android/BaseListFragment;->prepareArguments(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lco/vine/android/SingleFragment;->setArguments(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lco/vine/android/SingleActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f09002a

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 38
    .end local v1           #fragment:Lco/vine/android/SingleFragment;
    :cond_0
    return-void
.end method
