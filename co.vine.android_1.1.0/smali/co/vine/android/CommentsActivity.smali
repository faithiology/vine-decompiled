.class public Lco/vine/android/CommentsActivity;
.super Lco/vine/android/BaseActivity;
.source "CommentsActivity.java"


# static fields
.field public static final EXTRA_HIDE_KEYBOARD:Ljava/lang/String; = "hide_keyboard"

.field public static final EXTRA_POST_ID:Ljava/lang/String; = "post_id"

.field private static final TAG:Ljava/lang/String; = "commentsthread"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lco/vine/android/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 22
    const v4, 0x7f030011

    invoke-super {p0, p1, v4, v5}, Lco/vine/android/BaseActivity;->onCreate(Landroid/os/Bundle;IZ)V

    .line 24
    iget-object v4, p0, Lco/vine/android/CommentsActivity;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v4}, Lco/vine/android/client/AppController;->isLoggedIn()Z

    move-result v4

    if-nez v4, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-virtual {p0}, Lco/vine/android/CommentsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 29
    .local v0, ab:Landroid/app/ActionBar;
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 30
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 31
    const v4, 0x7f07006c

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 33
    invoke-virtual {p0}, Lco/vine/android/CommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 35
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "hide_keyboard"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 36
    invoke-virtual {p0}, Lco/vine/android/CommentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 42
    :goto_1
    if-nez p1, :cond_0

    .line 43
    new-instance v3, Lco/vine/android/CommentsFragment;

    invoke-direct {v3}, Lco/vine/android/CommentsFragment;-><init>()V

    .line 44
    .local v3, threadFragment:Lco/vine/android/CommentsFragment;
    invoke-static {v2, v6}, Lco/vine/android/CommentsFragment;->prepareArguments(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v1

    .line 46
    .local v1, args:Landroid/os/Bundle;
    const-string v4, "post_id"

    const-string v5, "post_id"

    const-wide/16 v6, -0x1

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 48
    const-string v4, "empty_desc"

    const v5, 0x7f07006e

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    invoke-virtual {v3, v1}, Lco/vine/android/CommentsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lco/vine/android/CommentsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f09002a

    const-string v6, "commentsthread"

    invoke-virtual {v4, v5, v3, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 39
    .end local v1           #args:Landroid/os/Bundle;
    .end local v3           #threadFragment:Lco/vine/android/CommentsFragment;
    :cond_2
    invoke-virtual {p0}, Lco/vine/android/CommentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_1
.end method
