.class public Lco/vine/android/widget/ConfigurableViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "ConfigurableViewPager.java"


# instance fields
.field private mSwipingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco/vine/android/widget/ConfigurableViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/widget/ConfigurableViewPager;->mSwipingEnabled:Z

    .line 21
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 29
    iget-boolean v0, p0, Lco/vine/android/widget/ConfigurableViewPager;->mSwipingEnabled:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 32
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 37
    iget-boolean v0, p0, Lco/vine/android/widget/ConfigurableViewPager;->mSwipingEnabled:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSwipingEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 24
    iput-boolean p1, p0, Lco/vine/android/widget/ConfigurableViewPager;->mSwipingEnabled:Z

    .line 25
    return-void
.end method
