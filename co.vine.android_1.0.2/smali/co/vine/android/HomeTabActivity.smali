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
        Lco/vine/android/HomeTabActivity$TabInfo;
    }
.end annotation


# static fields
.field public static final SCHEME_HTTP:Ljava/lang/String; = "http"

.field public static final SCHEME_VINE:Ljava/lang/String; = "vine"

.field public static final TAB_PROFILE:Ljava/lang/String; = "profile"

.field public static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final TAG_EXPLORE:Ljava/lang/String; = "explore"

.field public static final TAG_HOME:Ljava/lang/String; = "home"


# instance fields
.field private mScrollBar:Lco/vine/android/widget/ViewPagerScrollBar;

.field private mTabHost:Lco/vine/android/widget/IconTabHost;

.field private mTabsAdapter:Lco/vine/android/HomeTabActivity$TabsAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lco/vine/android/BaseActivity;-><init>()V

    .line 537
    return-void
.end method

.method public static start(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "tag"

    .prologue
    .line 221
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lco/vine/android/HomeTabActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 223
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 224
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 225
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 190
    if-nez p1, :cond_1

    .line 191
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 192
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "inviteBannerWasClicked"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 194
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

    .line 195
    .local v3, tag:Ljava/lang/String;
    invoke-virtual {p0}, Lco/vine/android/HomeTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lco/vine/android/HomeTimelineFragment;

    .line 197
    .local v1, homeTimeline:Lco/vine/android/HomeTimelineFragment;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lco/vine/android/HomeTimelineFragment;->removeHeader()V

    .line 205
    .end local v1           #homeTimeline:Lco/vine/android/HomeTimelineFragment;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 199
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

    .line 200
    .restart local v3       #tag:Ljava/lang/String;
    invoke-virtual {p0}, Lco/vine/android/HomeTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 201
    .local v0, frag:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Lco/vine/android/BaseActivity;->onContentChanged()V

    .line 210
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lco/vine/android/HomeTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/IconTabHost;

    iput-object v0, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/IconTabHost;

    .line 211
    iget-object v0, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/IconTabHost;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a TabHost whose id attribute is \'android.R.id.tabhost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    iget-object v0, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/IconTabHost;

    invoke-virtual {v0}, Lco/vine/android/widget/IconTabHost;->setup()V

    .line 217
    const v0, 0x7f090035

    invoke-virtual {p0, v0}, Lco/vine/android/HomeTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lco/vine/android/HomeTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 218
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 25
    .parameter "savedInstanceState"

    .prologue
    .line 64
    const v21, 0x7f030017

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-super {v0, v1, v2, v3}, Lco/vine/android/BaseActivity;->onCreate(Landroid/os/Bundle;IZ)V

    .line 65
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lco/vine/android/HomeTabActivity;->setRequestedOrientation(I)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/HomeTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 69
    invoke-static/range {p0 .. p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;

    .line 72
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;

    .line 74
    .local v9, appController:Lco/vine/android/client/AppController;
    invoke-virtual {v9}, Lco/vine/android/client/AppController;->isLoggedIn()Z

    move-result v21

    if-nez v21, :cond_2

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 78
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/IconTabHost;

    move-object/from16 v19, v0

    .line 79
    .local v19, tabHost:Lco/vine/android/widget/IconTabHost;
    const v21, 0x7f090034

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lco/vine/android/HomeTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lco/vine/android/widget/ViewPagerScrollBar;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/HomeTabActivity;->mScrollBar:Lco/vine/android/widget/ViewPagerScrollBar;

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mScrollBar:Lco/vine/android/widget/ViewPagerScrollBar;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lco/vine/android/widget/ViewPagerScrollBar;->setRange(I)V

    .line 82
    const v21, 0x7f090035

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lco/vine/android/HomeTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/HomeTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/HomeTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0c001c

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v21, v0

    const v22, 0x7f070005

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(I)V

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 87
    new-instance v21, Lco/vine/android/HomeTabActivity$TabsAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mScrollBar:Lco/vine/android/widget/ViewPagerScrollBar;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/HomeTabActivity$TabsAdapter;-><init>(Lco/vine/android/HomeTabActivity;Landroid/widget/TabHost;Landroid/support/v4/view/ViewPager;Lco/vine/android/widget/ViewPagerScrollBar;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/HomeTabActivity$TabsAdapter;

    .line 89
    new-instance v21, Lco/vine/android/HomeTabActivity$ChangesListener;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/vine/android/HomeTabActivity$ChangesListener;-><init>(Lco/vine/android/HomeTabActivity;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/HomeTabActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lco/vine/android/client/AppController;->addListener(Lco/vine/android/client/AppSessionListener;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v6

    .line 94
    .local v6, activeId:J
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    .line 95
    .local v13, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lco/vine/android/widget/IconTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 96
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lco/vine/android/widget/IconTabHost;->setOnTabClickedListener(Lco/vine/android/widget/IconTabHost$OnTabClickedListener;)V

    .line 99
    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v20, timelineBundle:Landroid/os/Bundle;
    const-string v21, "empty_desc"

    const v22, 0x7f0800ab

    invoke-virtual/range {v20 .. v22}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/HomeTabActivity$TabsAdapter;

    move-object/from16 v21, v0

    const-string v22, "home"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lco/vine/android/widget/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v22

    const v23, 0x7f030011

    const v24, 0x7f080053

    move/from16 v0, v23

    move-object/from16 v1, v19

    move/from16 v2, v24

    invoke-static {v13, v0, v1, v2}, Lco/vine/android/widget/TabIndicator;->newTextIndicator(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;I)Lco/vine/android/widget/TabIndicator;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v22

    const-class v23, Lco/vine/android/HomeTimelineFragment;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/HomeTabActivity$TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 108
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v8, activityBundle:Landroid/os/Bundle;
    const-string v21, "empty_desc"

    const v22, 0x7f0800bc

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/HomeTabActivity$TabsAdapter;

    move-object/from16 v21, v0

    const-string v22, "activity"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lco/vine/android/widget/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v22

    const v23, 0x7f030011

    const v24, 0x7f080054

    move/from16 v0, v23

    move-object/from16 v1, v19

    move/from16 v2, v24

    invoke-static {v13, v0, v1, v2}, Lco/vine/android/widget/TabIndicator;->newTextIndicator(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;I)Lco/vine/android/widget/TabIndicator;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v22

    const-class v23, Lco/vine/android/ActivityFragment;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v8}, Lco/vine/android/HomeTabActivity$TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 116
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v11, exploreBundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/HomeTabActivity$TabsAdapter;

    move-object/from16 v21, v0

    const-string v22, "explore"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lco/vine/android/widget/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v22

    const v23, 0x7f030011

    const v24, 0x7f080055

    move/from16 v0, v23

    move-object/from16 v1, v19

    move/from16 v2, v24

    invoke-static {v13, v0, v1, v2}, Lco/vine/android/widget/TabIndicator;->newTextIndicator(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;I)Lco/vine/android/widget/TabIndicator;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v22

    const-class v23, Lco/vine/android/ExploreFragment;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v11}, Lco/vine/android/HomeTabActivity$TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 125
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 127
    .local v17, profileBundle:Landroid/os/Bundle;
    const-string v21, "user_id"

    invoke-virtual {v9}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 128
    const-string v21, "refresh"

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/HomeTabActivity$TabsAdapter;

    move-object/from16 v21, v0

    const-string v22, "profile"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lco/vine/android/widget/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v22

    const v23, 0x7f030011

    const v24, 0x7f080056

    move/from16 v0, v23

    move-object/from16 v1, v19

    move/from16 v2, v24

    invoke-static {v13, v0, v1, v2}, Lco/vine/android/widget/TabIndicator;->newTextIndicator(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;I)Lco/vine/android/widget/TabIndicator;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v22

    const-class v23, Lco/vine/android/ProfileFragment;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/HomeTabActivity$TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lco/vine/android/client/AppController;->determineCleanup(Lco/vine/android/client/Session;)V

    .line 137
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/HomeTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 138
    .local v14, intent:Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 139
    .local v10, data:Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, action:Ljava/lang/String;
    if-eqz v5, :cond_3

    if-eqz v10, :cond_3

    const-string v21, "view_post"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 143
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v21

    const-string v22, "vine"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 144
    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 145
    .local v15, postId:J
    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Lco/vine/android/SingleActivity;->start(Landroid/content/Context;J)V

    .line 155
    .end local v15           #postId:J
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/HomeTabActivity;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 156
    .local v12, h:Landroid/os/Handler;
    if-eqz v12, :cond_1

    .line 157
    new-instance v21, Lco/vine/android/HomeTabActivity$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v7}, Lco/vine/android/HomeTabActivity$1;-><init>(Lco/vine/android/HomeTabActivity;J)V

    const-wide/32 v22, 0xea60

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v12, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 148
    .end local v12           #h:Landroid/os/Handler;
    :cond_4
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v21

    const-string v22, "http"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 149
    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v18

    .line 150
    .local v18, shareId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lco/vine/android/SingleActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 229
    invoke-virtual {p0}, Lco/vine/android/HomeTabActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method public onCurrentTabClicked()V
    .locals 0

    .prologue
    .line 260
    invoke-virtual {p0}, Lco/vine/android/HomeTabActivity;->scrollTop()V

    .line 261
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Lco/vine/android/BaseActivity;->onDestroy()V

    .line 183
    iget-object v0, p0, Lco/vine/android/HomeTabActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/HomeTabActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->removeListener(Lco/vine/android/client/AppSessionListener;)V

    .line 186
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 235
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 253
    invoke-super {p0, p1}, Lco/vine/android/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 237
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lco/vine/android/FindFriendsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lco/vine/android/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 241
    :pswitch_1
    invoke-static {}, Lco/vine/android/recorder/CameraManager;->hasCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    invoke-direct {v1, p0}, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;-><init>(Landroid/content/Context;)V

    iget-boolean v1, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->recordingEnabled:Z

    if-eqz v1, :cond_0

    .line 242
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lco/vine/android/RecordingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lco/vine/android/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 244
    :cond_0
    invoke-static {p0}, Lco/vine/android/util/Util;->showNoCameraToast(Landroid/content/Context;)V

    goto :goto_0

    .line 249
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lco/vine/android/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lco/vine/android/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x7f09008a
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lco/vine/android/BaseActivity;->onResume()V

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/vine/android/service/VineUploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lco/vine/android/HomeTabActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 177
    iget-object v0, p0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/HomeTabActivity$TabsAdapter;

    iget-object v1, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/IconTabHost;

    invoke-virtual {v1}, Lco/vine/android/widget/IconTabHost;->getCurrentTab()I

    move-result v1

    iput v1, v0, Lco/vine/android/HomeTabActivity$TabsAdapter;->previousTab:I

    .line 178
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 169
    iget-object v0, p0, Lco/vine/android/HomeTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/IconTabHost;

    invoke-virtual {v1}, Lco/vine/android/widget/IconTabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 170
    const-string v0, "Current Tab"

    invoke-static {v0, p1}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public scrollTop()V
    .locals 5

    .prologue
    .line 264
    iget-object v3, p0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/HomeTabActivity$TabsAdapter;

    iget-object v4, p0, Lco/vine/android/HomeTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v3, v4}, Lco/vine/android/HomeTabActivity$TabsAdapter;->getTab(I)Lco/vine/android/HomeTabActivity$TabInfo;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/HomeTabActivity$TabInfo;->fragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 268
    .local v0, fragment:Landroid/support/v4/app/Fragment;
    instance-of v3, v0, Lco/vine/android/BaseListFragment;

    if-nez v3, :cond_1

    .line 285
    .end local v0           #fragment:Landroid/support/v4/app/Fragment;
    :cond_0
    :goto_0
    return-void

    .line 272
    .restart local v0       #fragment:Landroid/support/v4/app/Fragment;
    :cond_1
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 276
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 279
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/widget/TopScrollable;

    .line 281
    .local v1, list:Lcom/twitter/android/widget/TopScrollable;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/twitter/android/widget/TopScrollable;->scrollTop()Z

    move-result v3

    if-nez v3, :cond_0

    .line 283
    check-cast v0, Lco/vine/android/BaseListFragment;

    .end local v0           #fragment:Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lco/vine/android/BaseListFragment;->invokeScrollFirstItem()V

    goto :goto_0
.end method
