.class Lco/vine/android/FindFriendsActivity$TabsAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "FindFriendsActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/FindFriendsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TabsAdapter"
.end annotation


# instance fields
.field private final mActivity:Lco/vine/android/BaseActivity;

.field private final mScrollBar:Lco/vine/android/widget/ViewPagerScrollBar;

.field private final mTabFactory:Lco/vine/android/FindFriendsActivity$DummyTabFactory;

.field private final mTabHost:Landroid/widget/TabHost;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/FindFriendsActivity$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Lco/vine/android/BaseActivity;Landroid/widget/TabHost;Landroid/support/v4/view/ViewPager;Lco/vine/android/widget/ViewPagerScrollBar;)V
    .locals 2
    .parameter "activity"
    .parameter "tabHost"
    .parameter "pager"
    .parameter "scrollBar"

    .prologue
    .line 227
    invoke-virtual {p1}, Lco/vine/android/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    .line 228
    iput-object p1, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mActivity:Lco/vine/android/BaseActivity;

    .line 229
    iput-object p2, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    .line 230
    iput-object p3, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 231
    iget-object v0, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 232
    iget-object v0, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 233
    iput-object p4, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mScrollBar:Lco/vine/android/widget/ViewPagerScrollBar;

    .line 234
    new-instance v0, Lco/vine/android/FindFriendsActivity$DummyTabFactory;

    iget-object v1, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mActivity:Lco/vine/android/BaseActivity;

    invoke-direct {v0, v1}, Lco/vine/android/FindFriendsActivity$DummyTabFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mTabFactory:Lco/vine/android/FindFriendsActivity$DummyTabFactory;

    .line 235
    return-void
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
    .line 238
    .local p2, clss:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Lco/vine/android/FindFriendsActivity$TabInfo;

    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, p3, v1}, Lco/vine/android/FindFriendsActivity$TabInfo;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 239
    .local v0, info:Lco/vine/android/FindFriendsActivity$TabInfo;
    iget-object v1, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mTabFactory:Lco/vine/android/FindFriendsActivity$DummyTabFactory;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 240
    iget-object v1, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v1, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 242
    invoke-virtual {p0}, Lco/vine/android/FindFriendsActivity$TabsAdapter;->notifyDataSetChanged()V

    .line 243
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .parameter "position"

    .prologue
    .line 289
    iget-object v1, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mActivity:Lco/vine/android/BaseActivity;

    iget-object v0, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/FindFriendsActivity$TabInfo;

    iget-object v0, v0, Lco/vine/android/FindFriendsActivity$TabInfo;->clss:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/FindFriendsActivity$TabInfo;

    iget-object v0, v0, Lco/vine/android/FindFriendsActivity$TabInfo;->bundle:Landroid/os/Bundle;

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 4
    .parameter "object"

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, found:Z
    iget-object v3, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/FindFriendsActivity$TabInfo;

    .line 254
    .local v2, info:Lco/vine/android/FindFriendsActivity$TabInfo;
    invoke-virtual {v2}, Lco/vine/android/FindFriendsActivity$TabInfo;->fragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 255
    const/4 v0, 0x1

    .line 259
    .end local v2           #info:Lco/vine/android/FindFriendsActivity$TabInfo;
    :cond_1
    if-eqz v0, :cond_2

    .line 260
    const/4 v3, -0x1

    .line 262
    :goto_0
    return v3

    :cond_2
    const/4 v3, -0x2

    goto :goto_0
.end method

.method public getTab(I)Lco/vine/android/FindFriendsActivity$TabInfo;
    .locals 1
    .parameter "pos"

    .prologue
    .line 222
    iget-object v0, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/FindFriendsActivity$TabInfo;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .parameter "container"
    .parameter "position"

    .prologue
    .line 295
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 297
    .local v0, blf:Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/FindFriendsActivity$TabInfo;

    invoke-virtual {v1, v0}, Lco/vine/android/FindFriendsActivity$TabInfo;->setFragment(Landroid/support/v4/app/Fragment;)V

    .line 302
    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 339
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 306
    iget-object v0, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 307
    iget-object v0, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mScrollBar:Lco/vine/android/widget/ViewPagerScrollBar;

    neg-int v1, p3

    invoke-virtual {v0, p1, v1}, Lco/vine/android/widget/ViewPagerScrollBar;->scroll(II)V

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mScrollBar:Lco/vine/android/widget/ViewPagerScrollBar;

    invoke-virtual {v0, p1, p3}, Lco/vine/android/widget/ViewPagerScrollBar;->scroll(II)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 318
    iget-object v4, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    .line 319
    .local v3, widget:Landroid/widget/TabWidget;
    invoke-virtual {v3}, Landroid/widget/TabWidget;->getDescendantFocusability()I

    move-result v1

    .line 320
    .local v1, descendantFocusability:I
    const/high16 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 321
    iget-object v4, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 322
    .local v0, current:I
    if-eq p1, v0, :cond_1

    .line 323
    iget-object v4, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    check-cast v4, Lco/vine/android/widget/IconTabHost;

    invoke-virtual {v4, p1}, Lco/vine/android/widget/IconTabHost;->setTabExplicit(I)V

    .line 324
    iget-object v4, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/vine/android/FindFriendsActivity$TabInfo;

    invoke-virtual {v4}, Lco/vine/android/FindFriendsActivity$TabInfo;->fragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 325
    .local v2, fragment:Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_0

    instance-of v4, v2, Lco/vine/android/widget/OnTabChangedListener;

    if-eqz v4, :cond_0

    .line 326
    check-cast v2, Lco/vine/android/widget/OnTabChangedListener;

    .end local v2           #fragment:Landroid/support/v4/app/Fragment;
    invoke-interface {v2, p1}, Lco/vine/android/widget/OnTabChangedListener;->onMoveAway(I)V

    .line 328
    :cond_0
    iget-object v4, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/vine/android/FindFriendsActivity$TabInfo;

    invoke-virtual {v4}, Lco/vine/android/FindFriendsActivity$TabInfo;->fragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 329
    .restart local v2       #fragment:Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_1

    instance-of v4, v2, Lco/vine/android/widget/OnTabChangedListener;

    if-eqz v4, :cond_1

    .line 330
    check-cast v2, Lco/vine/android/widget/OnTabChangedListener;

    .end local v2           #fragment:Landroid/support/v4/app/Fragment;
    invoke-interface {v2, v0}, Lco/vine/android/widget/OnTabChangedListener;->onMoveTo(I)V

    .line 334
    :cond_1
    iget-object v4, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mScrollBar:Lco/vine/android/widget/ViewPagerScrollBar;

    invoke-virtual {v4, p1}, Lco/vine/android/widget/ViewPagerScrollBar;->setPageColor(I)V

    .line 335
    invoke-virtual {v3, v1}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 336
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 6
    .parameter "state"
    .parameter "loader"

    .prologue
    .line 273
    move-object v2, p1

    check-cast v2, Lco/vine/android/FindFriendsActivity$TabSavedState;

    .line 274
    .local v2, savedState:Lco/vine/android/FindFriendsActivity$TabSavedState;
    iget-object v4, v2, Lco/vine/android/FindFriendsActivity$TabSavedState;->tags:[Ljava/lang/String;

    .line 275
    .local v4, tags:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 276
    aget-object v3, v4, v1

    .line 277
    .local v3, tag:Ljava/lang/String;
    iget-object v5, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mActivity:Lco/vine/android/BaseActivity;

    invoke-virtual {v5}, Lco/vine/android/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 280
    .local v0, fragment:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 281
    iget-object v5, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/vine/android/FindFriendsActivity$TabInfo;

    invoke-virtual {v5, v0}, Lco/vine/android/FindFriendsActivity$TabInfo;->setFragment(Landroid/support/v4/app/Fragment;)V

    .line 275
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    .end local v0           #fragment:Landroid/support/v4/app/Fragment;
    .end local v3           #tag:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 268
    new-instance v0, Lco/vine/android/FindFriendsActivity$TabSavedState;

    iget-object v1, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lco/vine/android/FindFriendsActivity$TabSavedState;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public tabs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/FindFriendsActivity$TabInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lco/vine/android/FindFriendsActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method
