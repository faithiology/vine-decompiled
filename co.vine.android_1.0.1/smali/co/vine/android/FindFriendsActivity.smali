.class public Lco/vine/android/FindFriendsActivity;
.super Lco/vine/android/BaseActivity;
.source "FindFriendsActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lco/vine/android/widget/IconTabHost$OnTabClickedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/FindFriendsActivity$1;,
        Lco/vine/android/FindFriendsActivity$FindFriendsListener;,
        Lco/vine/android/FindFriendsActivity$TabSavedState;,
        Lco/vine/android/FindFriendsActivity$TabsAdapter;,
        Lco/vine/android/FindFriendsActivity$DummyTabFactory;,
        Lco/vine/android/FindFriendsActivity$TabInfo;
    }
.end annotation


# static fields
.field private static final STATE_CURRENT_TAB:Ljava/lang/String; = "currentTab"

.field public static final TAG_ADDRESS_BOOK:Ljava/lang/String; = "address"

.field public static final TAG_SEARCH:Ljava/lang/String; = "search"

.field public static final TAG_TWITTER:Ljava/lang/String; = "twitter"


# instance fields
.field private mScrollBar:Lco/vine/android/widget/ViewPagerScrollBar;

.field private mTabHost:Lco/vine/android/widget/IconTabHost;

.field private mTabsAdapter:Lco/vine/android/FindFriendsActivity$TabsAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lco/vine/android/BaseActivity;-><init>()V

    .line 392
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 383
    packed-switch p1, :pswitch_data_0

    .line 390
    :goto_0
    return-void

    .line 385
    :pswitch_0
    iget-object v1, p0, Lco/vine/android/FindFriendsActivity;->mTabsAdapter:Lco/vine/android/FindFriendsActivity$TabsAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lco/vine/android/FindFriendsActivity$TabsAdapter;->getTab(I)Lco/vine/android/FindFriendsActivity$TabInfo;

    move-result-object v1

    invoke-virtual {v1}, Lco/vine/android/FindFriendsActivity$TabInfo;->fragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 386
    .local v0, frag:Landroid/support/v4/app/Fragment;
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lco/vine/android/BaseActivity;->onContentChanged()V

    .line 122
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lco/vine/android/FindFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/IconTabHost;

    iput-object v0, p0, Lco/vine/android/FindFriendsActivity;->mTabHost:Lco/vine/android/widget/IconTabHost;

    .line 123
    iget-object v0, p0, Lco/vine/android/FindFriendsActivity;->mTabHost:Lco/vine/android/widget/IconTabHost;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a TabHost whose id attribute is \'android.R.id.tabhost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iget-object v0, p0, Lco/vine/android/FindFriendsActivity;->mTabHost:Lco/vine/android/widget/IconTabHost;

    invoke-virtual {v0}, Lco/vine/android/widget/IconTabHost;->setup()V

    .line 129
    const v0, 0x7f090035

    invoke-virtual {p0, v0}, Lco/vine/android/FindFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lco/vine/android/FindFriendsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 130
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x7f03000c

    const/4 v7, 0x1

    .line 47
    const v6, 0x7f030018

    invoke-super {p0, p1, v6, v7}, Lco/vine/android/BaseActivity;->onCreate(Landroid/os/Bundle;IZ)V

    .line 49
    invoke-virtual {p0}, Lco/vine/android/FindFriendsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 50
    .local v0, ab:Landroid/app/ActionBar;
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 51
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 52
    const v6, 0x7f080057

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(I)V

    .line 54
    iget-object v4, p0, Lco/vine/android/FindFriendsActivity;->mTabHost:Lco/vine/android/widget/IconTabHost;

    .line 55
    .local v4, tabHost:Lco/vine/android/widget/IconTabHost;
    const v6, 0x7f090034

    invoke-virtual {p0, v6}, Lco/vine/android/FindFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lco/vine/android/widget/ViewPagerScrollBar;

    iput-object v6, p0, Lco/vine/android/FindFriendsActivity;->mScrollBar:Lco/vine/android/widget/ViewPagerScrollBar;

    .line 56
    iget-object v6, p0, Lco/vine/android/FindFriendsActivity;->mScrollBar:Lco/vine/android/widget/ViewPagerScrollBar;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lco/vine/android/widget/ViewPagerScrollBar;->setRange(I)V

    .line 58
    const v6, 0x7f090035

    invoke-virtual {p0, v6}, Lco/vine/android/FindFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager;

    iput-object v6, p0, Lco/vine/android/FindFriendsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 59
    iget-object v6, p0, Lco/vine/android/FindFriendsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lco/vine/android/FindFriendsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c001c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 60
    iget-object v6, p0, Lco/vine/android/FindFriendsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v7, 0x7f070005

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(I)V

    .line 61
    iget-object v6, p0, Lco/vine/android/FindFriendsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 63
    new-instance v6, Lco/vine/android/FindFriendsActivity$TabsAdapter;

    iget-object v7, p0, Lco/vine/android/FindFriendsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v8, p0, Lco/vine/android/FindFriendsActivity;->mScrollBar:Lco/vine/android/widget/ViewPagerScrollBar;

    invoke-direct {v6, p0, v4, v7, v8}, Lco/vine/android/FindFriendsActivity$TabsAdapter;-><init>(Lco/vine/android/BaseActivity;Landroid/widget/TabHost;Landroid/support/v4/view/ViewPager;Lco/vine/android/widget/ViewPagerScrollBar;)V

    iput-object v6, p0, Lco/vine/android/FindFriendsActivity;->mTabsAdapter:Lco/vine/android/FindFriendsActivity$TabsAdapter;

    .line 65
    new-instance v6, Lco/vine/android/FindFriendsActivity$FindFriendsListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lco/vine/android/FindFriendsActivity$FindFriendsListener;-><init>(Lco/vine/android/FindFriendsActivity;Lco/vine/android/FindFriendsActivity$1;)V

    iput-object v6, p0, Lco/vine/android/FindFriendsActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    .line 67
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 68
    .local v2, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v4, p0}, Lco/vine/android/widget/IconTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 69
    invoke-virtual {v4, p0}, Lco/vine/android/widget/IconTabHost;->setOnTabClickedListener(Lco/vine/android/widget/IconTabHost$OnTabClickedListener;)V

    .line 72
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v1, addressBundle:Landroid/os/Bundle;
    iget-object v6, p0, Lco/vine/android/FindFriendsActivity;->mTabsAdapter:Lco/vine/android/FindFriendsActivity$TabsAdapter;

    const-string v7, "address"

    invoke-virtual {v4, v7}, Lco/vine/android/widget/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const v8, 0x7f02005d

    invoke-static {v2, v9, v4, v8}, Lco/vine/android/widget/TabIndicator;->newIconIndicator(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;I)Lco/vine/android/widget/TabIndicator;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const-class v8, Lco/vine/android/FindFriendsAddressFragment;

    invoke-virtual {v6, v7, v8, v1}, Lco/vine/android/FindFriendsActivity$TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 80
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v5, twitterBundle:Landroid/os/Bundle;
    iget-object v6, p0, Lco/vine/android/FindFriendsActivity;->mTabsAdapter:Lco/vine/android/FindFriendsActivity$TabsAdapter;

    const-string v7, "twitter"

    invoke-virtual {v4, v7}, Lco/vine/android/widget/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const v8, 0x7f02005f

    invoke-static {v2, v9, v4, v8}, Lco/vine/android/widget/TabIndicator;->newIconIndicator(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;I)Lco/vine/android/widget/TabIndicator;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const-class v8, Lco/vine/android/FindFriendsTwitterFragment;

    invoke-virtual {v6, v7, v8, v5}, Lco/vine/android/FindFriendsActivity$TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 89
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v3, searchBundle:Landroid/os/Bundle;
    const-string v6, "layout"

    const v7, 0x7f03000b

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    iget-object v6, p0, Lco/vine/android/FindFriendsActivity;->mTabsAdapter:Lco/vine/android/FindFriendsActivity$TabsAdapter;

    const-string v7, "search"

    invoke-virtual {v4, v7}, Lco/vine/android/widget/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const v8, 0x7f02005e

    invoke-static {v2, v9, v4, v8}, Lco/vine/android/widget/TabIndicator;->newIconIndicator(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;I)Lco/vine/android/widget/TabIndicator;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const-class v8, Lco/vine/android/FindFriendsSearchFragment;

    invoke-virtual {v6, v7, v8, v3}, Lco/vine/android/FindFriendsActivity$TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 98
    return-void
.end method

.method public onCurrentTabClicked()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 102
    invoke-super {p0, p1}, Lco/vine/android/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 103
    const-string v1, "currentTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, cur:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0, v0}, Lco/vine/android/FindFriendsActivity;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lco/vine/android/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 113
    iget-object v1, p0, Lco/vine/android/FindFriendsActivity;->mTabHost:Lco/vine/android/widget/IconTabHost;

    invoke-virtual {v1}, Lco/vine/android/widget/IconTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, cur:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 115
    const-string v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 148
    iget-object v0, p0, Lco/vine/android/FindFriendsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lco/vine/android/FindFriendsActivity;->mTabHost:Lco/vine/android/widget/IconTabHost;

    invoke-virtual {v1}, Lco/vine/android/widget/IconTabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 149
    return-void
.end method

.method setCurrentTabByTag(Ljava/lang/String;)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 139
    iget-object v0, p0, Lco/vine/android/FindFriendsActivity;->mTabHost:Lco/vine/android/widget/IconTabHost;

    .line 140
    .local v0, tabHost:Landroid/widget/TabHost;
    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 143
    :cond_0
    iget-object v1, p0, Lco/vine/android/FindFriendsActivity;->mScrollBar:Lco/vine/android/widget/ViewPagerScrollBar;

    iget-object v2, p0, Lco/vine/android/FindFriendsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lco/vine/android/widget/ViewPagerScrollBar;->setPosition(I)V

    .line 144
    return-void
.end method
