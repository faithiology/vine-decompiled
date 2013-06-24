.class public Lco/vine/android/UsersActivity;
.super Lco/vine/android/BaseActivity;
.source "UsersActivity.java"


# static fields
.field public static final EXTRA_POST_ID:Ljava/lang/String; = "post_id"

.field public static final EXTRA_USERS_TYPE:Ljava/lang/String; = "u_type"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "p_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lco/vine/android/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 20
    const v5, 0x7f030032

    invoke-super {p0, p1, v5, v6}, Lco/vine/android/BaseActivity;->onCreate(Landroid/os/Bundle;IZ)V

    .line 22
    invoke-virtual {p0}, Lco/vine/android/UsersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 23
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lco/vine/android/UsersActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 24
    .local v0, ab:Landroid/app/ActionBar;
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 25
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 27
    const-string v5, "u_type"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 29
    .local v3, type:I
    packed-switch v3, :pswitch_data_0

    .line 44
    :goto_0
    :pswitch_0
    if-nez p1, :cond_0

    .line 45
    new-instance v4, Lco/vine/android/UsersFragment;

    invoke-direct {v4}, Lco/vine/android/UsersFragment;-><init>()V

    .line 46
    .local v4, users:Lco/vine/android/UsersFragment;
    invoke-static {v2, v7}, Lco/vine/android/UsersFragment;->prepareArguments(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v1

    .line 47
    .local v1, b:Landroid/os/Bundle;
    const-string v5, "refresh"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    invoke-virtual {v4, v1}, Lco/vine/android/UsersFragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lco/vine/android/UsersActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    const v6, 0x7f09002a

    invoke-virtual {v5, v6, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 54
    .end local v1           #b:Landroid/os/Bundle;
    .end local v4           #users:Lco/vine/android/UsersFragment;
    :cond_0
    return-void

    .line 31
    :pswitch_1
    const v5, 0x7f070072

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 35
    :pswitch_2
    const v5, 0x7f070071

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 39
    :pswitch_3
    const v5, 0x7f070073

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
