.class Lco/vine/android/HomeTabActivity$TabsAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "HomeTabActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/HomeTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TabsAdapter"
.end annotation


# instance fields
.field private final mActivity:Lco/vine/android/HomeTabActivity;

.field private final mScrollBar:Lco/vine/android/widget/ViewPagerScrollBar;

.field private final mTabFactory:Lco/vine/android/HomeTabActivity$DummyTabFactory;

.field private final mTabHost:Landroid/widget/TabHost;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/HomeTabActivity$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewPager:Landroid/support/v4/view/ViewPager;

.field public previousTab:I


# direct methods
.method public constructor <init>(Lco/vine/android/HomeTabActivity;Landroid/widget/TabHost;Landroid/support/v4/view/ViewPager;Lco/vine/android/widget/ViewPagerScrollBar;)V
    .locals 2
    .parameter "activity"
    .parameter "tabHost"
    .parameter "pager"
    .parameter "scrollBar"

    .prologue
    .line 352
    invoke-virtual {p1}, Lco/vine/android/HomeTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    .line 353
    iput-object p1, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mActivity:Lco/vine/android/HomeTabActivity;

    .line 354
    iput-object p2, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    .line 355
    iput-object p3, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 356
    iget-object v0, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 357
    iget-object v0, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 358
    iput-object p4, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mScrollBar:Lco/vine/android/widget/ViewPagerScrollBar;

    .line 359
    new-instance v0, Lco/vine/android/HomeTabActivity$DummyTabFactory;

    iget-object v1, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mActivity:Lco/vine/android/HomeTabActivity;

    invoke-direct {v0, v1}, Lco/vine/android/HomeTabActivity$DummyTabFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mTabFactory:Lco/vine/android/HomeTabActivity$DummyTabFactory;

    .line 360
    return-void
.end method

.method static synthetic access$000(Lco/vine/android/HomeTabActivity$TabsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 332
    iget-object v0, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .parameter "tabSpec"
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 363
    .local p2, clss:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Lco/vine/android/HomeTabActivity$TabInfo;

    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, p3, v1}, Lco/vine/android/HomeTabActivity$TabInfo;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 364
    .local v0, info:Lco/vine/android/HomeTabActivity$TabInfo;
    iget-object v1, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mTabFactory:Lco/vine/android/HomeTabActivity$DummyTabFactory;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 365
    iget-object v1, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v1, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 367
    invoke-virtual {p0}, Lco/vine/android/HomeTabActivity$TabsAdapter;->notifyDataSetChanged()V

    .line 368
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .parameter "position"

    .prologue
    .line 416
    iget-object v1, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mActivity:Lco/vine/android/HomeTabActivity;

    iget-object v0, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/HomeTabActivity$TabInfo;

    iget-object v0, v0, Lco/vine/android/HomeTabActivity$TabInfo;->clss:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/HomeTabActivity$TabInfo;

    iget-object v0, v0, Lco/vine/android/HomeTabActivity$TabInfo;->bundle:Landroid/os/Bundle;

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 4
    .parameter "object"

    .prologue
    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, found:Z
    iget-object v3, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/HomeTabActivity$TabInfo;

    .line 379
    .local v2, info:Lco/vine/android/HomeTabActivity$TabInfo;
    invoke-virtual {v2}, Lco/vine/android/HomeTabActivity$TabInfo;->fragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 380
    const/4 v0, 0x1

    .line 384
    .end local v2           #info:Lco/vine/android/HomeTabActivity$TabInfo;
    :cond_1
    if-eqz v0, :cond_2

    .line 385
    const/4 v3, -0x1

    .line 387
    :goto_0
    return v3

    :cond_2
    const/4 v3, -0x2

    goto :goto_0
.end method

.method public getTab(I)Lco/vine/android/HomeTabActivity$TabInfo;
    .locals 1
    .parameter "pos"

    .prologue
    .line 347
    iget-object v0, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/HomeTabActivity$TabInfo;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .parameter "container"
    .parameter "position"

    .prologue
    .line 422
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 424
    .local v0, blf:Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/HomeTabActivity$TabInfo;

    invoke-virtual {v1, v0}, Lco/vine/android/HomeTabActivity$TabInfo;->setFragment(Landroid/support/v4/app/Fragment;)V

    .line 426
    instance-of v1, v0, Lco/vine/android/BaseListFragment;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 427
    check-cast v1, Lco/vine/android/BaseListFragment;

    new-instance v2, Lco/vine/android/HomeTabActivity$TabScrollListener;

    iget-object v3, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mActivity:Lco/vine/android/HomeTabActivity;

    invoke-direct {v2, v3, p2}, Lco/vine/android/HomeTabActivity$TabScrollListener;-><init>(Lco/vine/android/HomeTabActivity;I)V

    invoke-virtual {v1, v2}, Lco/vine/android/BaseListFragment;->setScrollListener(Lco/vine/android/BaseListFragment$OnScrollListener;)V

    .line 429
    iget-object v1, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 434
    :cond_0
    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 469
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 438
    iget-object v0, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 439
    iget-object v0, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mScrollBar:Lco/vine/android/widget/ViewPagerScrollBar;

    neg-int v1, p3

    invoke-virtual {v0, p1, v1}, Lco/vine/android/widget/ViewPagerScrollBar;->scroll(II)V

    .line 443
    :goto_0
    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mScrollBar:Lco/vine/android/widget/ViewPagerScrollBar;

    invoke-virtual {v0, p1, p3}, Lco/vine/android/widget/ViewPagerScrollBar;->scroll(II)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 450
    iget-object v3, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    .line 451
    .local v2, widget:Landroid/widget/TabWidget;
    invoke-virtual {v2}, Landroid/widget/TabWidget;->getDescendantFocusability()I

    move-result v0

    .line 452
    .local v0, descendantFocusability:I
    const/high16 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 453
    iget v3, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->previousTab:I

    if-eq p1, v3, :cond_1

    .line 454
    iget-object v3, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    check-cast v3, Lco/vine/android/widget/IconTabHost;

    invoke-virtual {v3, p1}, Lco/vine/android/widget/IconTabHost;->setTabExplicit(I)V

    .line 455
    iget-object v3, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    iget v4, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->previousTab:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/HomeTabActivity$TabInfo;

    invoke-virtual {v3}, Lco/vine/android/HomeTabActivity$TabInfo;->fragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 456
    .local v1, fragment:Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lco/vine/android/widget/OnTabChangedListener;

    if-eqz v3, :cond_0

    .line 457
    check-cast v1, Lco/vine/android/widget/OnTabChangedListener;

    .end local v1           #fragment:Landroid/support/v4/app/Fragment;
    invoke-interface {v1, p1}, Lco/vine/android/widget/OnTabChangedListener;->onMoveAway(I)V

    .line 459
    :cond_0
    iget-object v3, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/HomeTabActivity$TabInfo;

    invoke-virtual {v3}, Lco/vine/android/HomeTabActivity$TabInfo;->fragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 460
    .restart local v1       #fragment:Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lco/vine/android/widget/OnTabChangedListener;

    if-eqz v3, :cond_1

    .line 461
    check-cast v1, Lco/vine/android/widget/OnTabChangedListener;

    .end local v1           #fragment:Landroid/support/v4/app/Fragment;
    iget v3, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->previousTab:I

    invoke-interface {v1, v3}, Lco/vine/android/widget/OnTabChangedListener;->onMoveTo(I)V

    .line 464
    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 465
    iget-object v3, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v3

    iput v3, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->previousTab:I

    .line 466
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 7
    .parameter "state"
    .parameter "loader"

    .prologue
    .line 398
    move-object v2, p1

    check-cast v2, Lco/vine/android/HomeTabActivity$TabSavedState;

    .line 399
    .local v2, savedState:Lco/vine/android/HomeTabActivity$TabSavedState;
    iget-object v4, v2, Lco/vine/android/HomeTabActivity$TabSavedState;->tags:[Ljava/lang/String;

    .line 400
    .local v4, tags:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 401
    aget-object v3, v4, v1

    .line 402
    .local v3, tag:Ljava/lang/String;
    iget-object v5, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mActivity:Lco/vine/android/HomeTabActivity;

    invoke-virtual {v5}, Lco/vine/android/HomeTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 404
    .local v0, fragment:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 405
    iget-object v5, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/vine/android/HomeTabActivity$TabInfo;

    invoke-virtual {v5, v0}, Lco/vine/android/HomeTabActivity$TabInfo;->setFragment(Landroid/support/v4/app/Fragment;)V

    .line 406
    instance-of v5, v0, Lco/vine/android/BaseListFragment;

    if-eqz v5, :cond_0

    .line 407
    check-cast v0, Lco/vine/android/BaseListFragment;

    .end local v0           #fragment:Landroid/support/v4/app/Fragment;
    new-instance v5, Lco/vine/android/HomeTabActivity$TabScrollListener;

    iget-object v6, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mActivity:Lco/vine/android/HomeTabActivity;

    invoke-direct {v5, v6, v1}, Lco/vine/android/HomeTabActivity$TabScrollListener;-><init>(Lco/vine/android/HomeTabActivity;I)V

    invoke-virtual {v0, v5}, Lco/vine/android/BaseListFragment;->setScrollListener(Lco/vine/android/BaseListFragment$OnScrollListener;)V

    .line 400
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    .end local v3           #tag:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 393
    new-instance v0, Lco/vine/android/HomeTabActivity$TabSavedState;

    iget-object v1, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lco/vine/android/HomeTabActivity$TabSavedState;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public tabs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/HomeTabActivity$TabInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lco/vine/android/HomeTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method
