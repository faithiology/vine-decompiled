.class public Lco/vine/android/HomeTabActivity;
.super Lco/vine/android/BaseActivity;
.source "HomeTabActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lco/vine/android/widget/IconTabHost$OnTabClickedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/HomeTabActivity$ChangesListener;,
        Lco/vine/android/HomeTabActivity$TabScrollListener;,
        Lco/vine/android/HomeTabActivity$TabSavedState;,
        Lco/vine/android/HomeTabActivity$TabsAdapter;,
        Lco/vine/android/HomeTabActivity$DummyTabFactory;,
        Lco/vine/android/HomeTabActivity$TabInfo;,
        Lco/vine/android/HomeTabActivity$DelayHandler;
    }
.end annotation


# static fields
.field public static final PATH_SEGMENT_VIDEO:Ljava/lang/String; = "v"

.field public static final SCHEME_HTTP:Ljava/lang/String; = "http"

.field public static final SCHEME_VINE:Ljava/lang/String; = "vine"

.field public static final TAB_PROFILE:Ljava/lang/String; = "profile"

.field public static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final TAG_EXPLORE:Ljava/lang/String; = "explore"

.field public static final TAG_HOME:Ljava/lang/String; = "home"


# instance fields
.field private mHandler:Lco/vine/android/HomeTabActivity$DelayHandler;

.field private mScrollBar:Lco/vine/android/widget/ViewPagerScrollBar;

.field private mTabHost:Lco/vine/android/widget/IconTabHost;

.field private mTabsAdapter:Lco/vine/android/HomeTabActivity$TabsAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lco/vine/android/BaseActivity;-><init>()V

    .line 599
    return-void
.end method

.method public static start(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "tag"

    .prologue
    .line 277
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lco/vine/android/HomeTabActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 279
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 280
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 281
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 245
    if-nez p1, :cond_1

    .line 246
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 247
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "inviteBannerWasClicked"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 249
    iget-object v4, p0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/HomeTabActivity$TabsAdapter;

    #getter for: Lco/vine/android/HomeTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;
    invoke-static {v4}, Lco/vine/android/HomeTabActivity$TabsAdapter;->access$000(Lco/vine/android/HomeTabActivity$TabsAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/IconTabHost;

    invoke-virtual {v5}, Lco/vine/android/widget/IconTabHost;->getCurrentTab()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/vine/android/HomeTabActivity$TabInfo;

    #getter for: Lco/vine/android/HomeTabActivity$TabInfo;->mTag:Ljava/lang/String;
    invoke-static {v4}, Lco/vine/android/HomeTabActivity$TabInfo;->access$100(Lco/vine/android/HomeTabActivity$TabInfo;)Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, tag:Ljava/lang/String;
    invoke-virtual {p0}, Lco/vine/android/HomeTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 251
    .local v1, homeTimeline:Landroid/support/v4/app/Fragment;
    instance-of v4, v1, Lco/vine/android/HomeTimelineFragment;

    if-eqz v4, :cond_0

    .line 252
    check-cast v1, Lco/vine/android/HomeTimelineFragment;

    .end local v1           #homeTimeline:Landroid/support/v4/app/Fragment;
    invoke-virtual {v1}, Lco/vine/android/HomeTimelineFragment;->removeHeader()V

    .line 261
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 255
    .end local v3           #tag:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/HomeTabActivity$TabsAdapter;

    #getter for: Lco/vine/android/HomeTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;
    invoke-static {v4}, Lco/vine/android/HomeTabActivity$TabsAdapter;->access$000(Lco/vine/android/HomeTabActivity$TabsAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/IconTabHost;

    invoke-virtual {v5}, Lco/vine/android/widget/IconTabHost;->getCurrentTab()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/vine/android/HomeTabActivity$TabInfo;

    #getter for: Lco/vine/android/HomeTabActivity$TabInfo;->mTag:Ljava/lang/String;
    invoke-static {v4}, Lco/vine/android/HomeTabActivity$TabInfo;->access$100(Lco/vine/android/HomeTabActivity$TabInfo;)Ljava/lang/String;

    move-result-object v3

    .line 256
    .restart local v3       #tag:Ljava/lang/String;
    invoke-virtual {p0}, Lco/vine/android/HomeTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 257
    .local v0, frag:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 265
    invoke-super {p0}, Lco/vine/android/BaseActivity;->onContentChanged()V

    .line 266
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lco/vine/android/HomeTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/IconTabHost;

    iput-object v0, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/IconTabHost;

    .line 267
    iget-object v0, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/IconTabHost;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a TabHost whose id attribute is \'android.R.id.tabhost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    iget-object v0, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/IconTabHost;

    invoke-virtual {v0}, Lco/vine/android/widget/IconTabHost;->setup()V

    .line 273
    const v0, 0x7f090038

    invoke-virtual {p0, v0}, Lco/vine/android/HomeTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lco/vine/android/HomeTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 274
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 28
    .parameter "savedInstanceState"

    .prologue
    .line 71
    const v24, 0x7f030018

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-super {v0, v1, v2, v3}, Lco/vine/android/BaseActivity;->onCreate(Landroid/os/Bundle;IZ)V

    .line 72
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lco/vine/android/HomeTabActivity;->setRequestedOrientation(I)V

    .line 73
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/HomeTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    .line 76
    invoke-static/range {p0 .. p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;

    .line 79
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;

    .line 81
    .local v9, appController:Lco/vine/android/client/AppController;
    invoke-virtual {v9}, Lco/vine/android/client/AppController;->isLoggedIn()Z

    move-result v24

    if-nez v24, :cond_2

    .line 185
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/IconTabHost;

    move-object/from16 v22, v0

    .line 86
    .local v22, tabHost:Lco/vine/android/widget/IconTabHost;
    const v24, 0x7f090037

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lco/vine/android/HomeTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lco/vine/android/widget/ViewPagerScrollBar;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/HomeTabActivity;->mScrollBar:Lco/vine/android/widget/ViewPagerScrollBar;

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mScrollBar:Lco/vine/android/widget/ViewPagerScrollBar;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lco/vine/android/widget/ViewPagerScrollBar;->setRange(I)V

    .line 89
    const v24, 0x7f090038

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lco/vine/android/HomeTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/HomeTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/HomeTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0c001d

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v24, v0

    const v25, 0x7f080005

    invoke-virtual/range {v24 .. v25}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(I)V

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    invoke-virtual/range {v24 .. v25}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 94
    new-instance v24, Lco/vine/android/HomeTabActivity$TabsAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mScrollBar:Lco/vine/android/widget/ViewPagerScrollBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/HomeTabActivity$TabsAdapter;-><init>(Lco/vine/android/HomeTabActivity;Landroid/widget/TabHost;Landroid/support/v4/view/ViewPager;Lco/vine/android/widget/ViewPagerScrollBar;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/HomeTabActivity$TabsAdapter;

    .line 96
    new-instance v24, Lco/vine/android/HomeTabActivity$ChangesListener;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/vine/android/HomeTabActivity$ChangesListener;-><init>(Lco/vine/android/HomeTabActivity;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/HomeTabActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lco/vine/android/client/AppController;->addListener(Lco/vine/android/client/AppSessionListener;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v6

    .line 101
    .local v6, activeId:J
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    .line 102
    .local v15, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lco/vine/android/widget/IconTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 103
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lco/vine/android/widget/IconTabHost;->setOnTabClickedListener(Lco/vine/android/widget/IconTabHost$OnTabClickedListener;)V

    .line 106
    new-instance v23, Landroid/os/Bundle;

    invoke-direct/range {v23 .. v23}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v23, timelineBundle:Landroid/os/Bundle;
    const-string v24, "empty_desc"

    const v25, 0x7f0700bf

    invoke-virtual/range {v23 .. v25}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/HomeTabActivity$TabsAdapter;

    move-object/from16 v24, v0

    const-string v25, "home"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lco/vine/android/widget/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v25

    const v26, 0x7f030012

    const v27, 0x7f070061

    move/from16 v0, v26

    move-object/from16 v1, v22

    move/from16 v2, v27

    invoke-static {v15, v0, v1, v2}, Lco/vine/android/widget/TabIndicator;->newTextIndicator(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;I)Lco/vine/android/widget/TabIndicator;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v25

    const-class v26, Lco/vine/android/HomeTimelineFragment;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/HomeTabActivity$TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 115
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v8, activityBundle:Landroid/os/Bundle;
    const-string v24, "empty_desc"

    const v25, 0x7f0700d0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/HomeTabActivity$TabsAdapter;

    move-object/from16 v24, v0

    const-string v25, "activity"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lco/vine/android/widget/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v25

    const v26, 0x7f030012

    const v27, 0x7f070062

    move/from16 v0, v26

    move-object/from16 v1, v22

    move/from16 v2, v27

    invoke-static {v15, v0, v1, v2}, Lco/vine/android/widget/TabIndicator;->newTextIndicator(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;I)Lco/vine/android/widget/TabIndicator;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v25

    const-class v26, Lco/vine/android/ActivityFragment;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v8}, Lco/vine/android/HomeTabActivity$TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 123
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 126
    .local v11, exploreBundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/HomeTabActivity$TabsAdapter;

    move-object/from16 v24, v0

    const-string v25, "explore"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lco/vine/android/widget/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v25

    const v26, 0x7f030012

    const v27, 0x7f070063

    move/from16 v0, v26

    move-object/from16 v1, v22

    move/from16 v2, v27

    invoke-static {v15, v0, v1, v2}, Lco/vine/android/widget/TabIndicator;->newTextIndicator(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;I)Lco/vine/android/widget/TabIndicator;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v25

    const-class v26, Lco/vine/android/ExploreFragment;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v11}, Lco/vine/android/HomeTabActivity$TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 132
    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v20, profileBundle:Landroid/os/Bundle;
    const-string v24, "user_id"

    invoke-virtual {v9}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v25

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-wide/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 135
    const-string v24, "refresh"

    const/16 v25, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/HomeTabActivity$TabsAdapter;

    move-object/from16 v24, v0

    const-string v25, "profile"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lco/vine/android/widget/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v25

    const v26, 0x7f030012

    const v27, 0x7f070064

    move/from16 v0, v26

    move-object/from16 v1, v22

    move/from16 v2, v27

    invoke-static {v15, v0, v1, v2}, Lco/vine/android/widget/TabIndicator;->newTextIndicator(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;I)Lco/vine/android/widget/TabIndicator;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v25

    const-class v26, Lco/vine/android/ProfileFragment;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/HomeTabActivity$TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lco/vine/android/client/AppController;->determineCleanup(Lco/vine/android/client/Session;)V

    .line 144
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/HomeTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    .line 145
    .local v16, intent:Landroid/content/Intent;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 146
    .local v10, data:Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, action:Ljava/lang/String;
    if-eqz v5, :cond_3

    if-eqz v10, :cond_3

    const-string v24, "view_post"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 150
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v24

    const-string v25, "vine"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 151
    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 152
    .local v18, postId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lco/vine/android/SingleActivity;->start(Landroid/content/Context;J)V

    .line 167
    .end local v18           #postId:J
    :cond_3
    :goto_1
    new-instance v12, Lco/vine/android/HomeTabActivity$DelayHandler;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lco/vine/android/HomeTabActivity$DelayHandler;-><init>(Landroid/content/Context;)V

    .line 168
    .local v12, handler:Lco/vine/android/HomeTabActivity$DelayHandler;
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Lco/vine/android/HomeTabActivity$DelayHandler;->hasMessages(I)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 169
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Lco/vine/android/HomeTabActivity$DelayHandler;->removeMessages(I)V

    .line 171
    :cond_4
    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Lco/vine/android/HomeTabActivity$DelayHandler;->hasMessages(I)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 172
    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Lco/vine/android/HomeTabActivity$DelayHandler;->removeMessages(I)V

    .line 174
    :cond_5
    const/16 v24, 0x1

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Lco/vine/android/HomeTabActivity$DelayHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    const-wide/32 v25, 0xea60

    move-object/from16 v0, v24

    move-wide/from16 v1, v25

    invoke-virtual {v12, v0, v1, v2}, Lco/vine/android/HomeTabActivity$DelayHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 176
    const/16 v24, 0x2

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Lco/vine/android/HomeTabActivity$DelayHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    const-wide/32 v25, 0xea60

    move-object/from16 v0, v24

    move-wide/from16 v1, v25

    invoke-virtual {v12, v0, v1, v2}, Lco/vine/android/HomeTabActivity$DelayHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 178
    const/16 v24, 0x3

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Lco/vine/android/HomeTabActivity$DelayHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    const-wide/32 v25, 0xea60

    move-object/from16 v0, v24

    move-wide/from16 v1, v25

    invoke-virtual {v12, v0, v1, v2}, Lco/vine/android/HomeTabActivity$DelayHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 180
    move-object/from16 v0, p0

    iput-object v12, v0, Lco/vine/android/HomeTabActivity;->mHandler:Lco/vine/android/HomeTabActivity$DelayHandler;

    .line 182
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/HomeTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lco/vine/android/recorder/RecordConfigUtils;->loadWasEverSuccessful(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 183
    new-instance v24, Lco/vine/android/recorder/PreloaderThread;

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/HomeTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lco/vine/android/recorder/PreloaderThread;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v24 .. v24}, Lco/vine/android/recorder/PreloaderThread;->start()V

    goto/16 :goto_0

    .line 155
    .end local v12           #handler:Lco/vine/android/HomeTabActivity$DelayHandler;
    :cond_6
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v24

    const-string v25, "http"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 156
    invoke-virtual {v10}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v17

    .line 157
    .local v17, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v24, "v"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 158
    .local v14, indexVideoSegment:I
    add-int/lit8 v13, v14, 0x1

    .line 160
    .local v13, indexShareId:I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-le v14, v0, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v13, :cond_3

    .line 161
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const-string v25, "\\s+"

    const-string v26, ""

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 162
    .local v21, shareId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lco/vine/android/SingleActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 285
    invoke-virtual {p0}, Lco/vine/android/HomeTabActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 286
    const/4 v0, 0x1

    return v0
.end method

.method public onCurrentTabClicked()V
    .locals 0

    .prologue
    .line 322
    invoke-virtual {p0}, Lco/vine/android/HomeTabActivity;->scrollTop()V

    .line 323
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 237
    invoke-super {p0}, Lco/vine/android/BaseActivity;->onDestroy()V

    .line 238
    iget-object v0, p0, Lco/vine/android/HomeTabActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/HomeTabActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->removeListener(Lco/vine/android/client/AppSessionListener;)V

    .line 241
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 291
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 315
    invoke-super {p0, p1}, Lco/vine/android/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 293
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lco/vine/android/FindFriendsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lco/vine/android/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 297
    :pswitch_1
    invoke-static {}, Lco/vine/android/recorder/CameraManager;->hasCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    invoke-direct {v1, p0}, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;-><init>(Landroid/content/Context;)V

    iget-boolean v1, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->recordingEnabled:Z

    if-eqz v1, :cond_0

    .line 299
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lco/vine/android/RecordingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lco/vine/android/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 302
    :cond_0
    invoke-static {p0}, Lco/vine/android/util/Util;->showNoCameraToast(Landroid/content/Context;)V

    goto :goto_0

    .line 307
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lco/vine/android/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lco/vine/android/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 311
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lco/vine/android/SearchActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lco/vine/android/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 291
    :pswitch_data_0
    .packed-switch 0x7f0900a0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 230
    invoke-super {p0}, Lco/vine/android/BaseActivity;->onResume()V

    .line 231
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/vine/android/service/VineUploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lco/vine/android/HomeTabActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 232
    iget-object v0, p0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/HomeTabActivity$TabsAdapter;

    iget-object v1, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/IconTabHost;

    invoke-virtual {v1}, Lco/vine/android/widget/IconTabHost;->getCurrentTab()I

    move-result v1

    iput v1, v0, Lco/vine/android/HomeTabActivity$TabsAdapter;->previousTab:I

    .line 233
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 224
    iget-object v0, p0, Lco/vine/android/HomeTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/IconTabHost;

    invoke-virtual {v1}, Lco/vine/android/widget/IconTabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 225
    const-string v0, "Current Tab"

    invoke-static {v0, p1}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public scrollTop()V
    .locals 5

    .prologue
    .line 326
    iget-object v3, p0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/HomeTabActivity$TabsAdapter;

    iget-object v4, p0, Lco/vine/android/HomeTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v3, v4}, Lco/vine/android/HomeTabActivity$TabsAdapter;->getTab(I)Lco/vine/android/HomeTabActivity$TabInfo;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/HomeTabActivity$TabInfo;->fragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 330
    .local v0, fragment:Landroid/support/v4/app/Fragment;
    instance-of v3, v0, Lco/vine/android/BaseListFragment;

    if-nez v3, :cond_1

    .line 347
    .end local v0           #fragment:Landroid/support/v4/app/Fragment;
    :cond_0
    :goto_0
    return-void

    .line 334
    .restart local v0       #fragment:Landroid/support/v4/app/Fragment;
    :cond_1
    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 338
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 341
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/widget/TopScrollable;

    .line 343
    .local v1, list:Lcom/twitter/android/widget/TopScrollable;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/twitter/android/widget/TopScrollable;->scrollTop()Z

    move-result v3

    if-nez v3, :cond_0

    .line 345
    check-cast v0, Lco/vine/android/BaseListFragment;

    .end local v0           #fragment:Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lco/vine/android/BaseListFragment;->invokeScrollFirstItem()V

    goto :goto_0
.end method
