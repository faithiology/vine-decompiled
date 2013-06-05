.class public Lco/vine/android/ExploreVideoListActivity;
.super Lco/vine/android/BaseActivity;
.source "ExploreVideoListActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lco/vine/android/BaseActivity;-><init>()V

    return-void
.end method

.method public static getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "context"
    .parameter "category"
    .parameter "item"

    .prologue
    .line 53
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lco/vine/android/ExploreVideoListActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vine://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 17
    const v4, 0x7f030010

    invoke-super {p0, p1, v4, v6}, Lco/vine/android/BaseActivity;->onCreate(Landroid/os/Bundle;IZ)V

    .line 18
    invoke-virtual {p0}, Lco/vine/android/ExploreVideoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 19
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lco/vine/android/ExploreVideoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 20
    .local v1, data:Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 21
    new-instance v4, Ljava/lang/IllegalAccessError;

    const-string v5, "You can\'t access video list without specifying a url."

    invoke-direct {v4, v5}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 23
    :cond_0
    invoke-virtual {p0}, Lco/vine/android/ExploreVideoListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 24
    .local v0, ab:Landroid/app/ActionBar;
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 25
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 27
    const-string v4, "tag"

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 40
    :goto_0
    if-nez p1, :cond_1

    .line 41
    new-instance v2, Lco/vine/android/ExploreTimelineFragment;

    invoke-direct {v2}, Lco/vine/android/ExploreTimelineFragment;-><init>()V

    .line 42
    .local v2, fragment:Lco/vine/android/ExploreTimelineFragment;
    const-string v4, "refresh"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v6, v4, v5}, Lco/vine/android/ExploreTimelineFragment;->prepareArguments(Landroid/content/Intent;ZLjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v4}, Lco/vine/android/ExploreTimelineFragment;->setArguments(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lco/vine/android/ExploreVideoListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f090027

    invoke-virtual {v4, v5, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 50
    .end local v2           #fragment:Lco/vine/android/ExploreTimelineFragment;
    :cond_1
    :goto_1
    return-void

    .line 29
    :cond_2
    const-string v4, "editors-picks"

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 30
    const v4, 0x7f08007f

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 31
    :cond_3
    const-string v4, "popular-now"

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 32
    const v4, 0x7f080080

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 34
    :cond_4
    const-string v4, "All post is not supported at this moment, it\'s just here to tease you. "

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 36
    invoke-virtual {p0}, Lco/vine/android/ExploreVideoListActivity;->finish()V

    goto :goto_1
.end method
