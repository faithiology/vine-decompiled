.class public Lco/vine/android/widget/IconTabHost;
.super Landroid/widget/TabHost;
.source "IconTabHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/widget/IconTabHost$OnTabClickedListener;
    }
.end annotation


# instance fields
.field private mOnTabClickedListener:Lco/vine/android/widget/IconTabHost$OnTabClickedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method public dispatchWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 26
    invoke-virtual {p0}, Lco/vine/android/widget/IconTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-super {p0, p1}, Landroid/widget/TabHost;->dispatchWindowFocusChanged(Z)V

    .line 29
    :cond_0
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 33
    invoke-virtual {p0}, Lco/vine/android/widget/IconTabHost;->getCurrentTab()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 34
    iget-object v0, p0, Lco/vine/android/widget/IconTabHost;->mOnTabClickedListener:Lco/vine/android/widget/IconTabHost$OnTabClickedListener;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lco/vine/android/widget/IconTabHost;->mOnTabClickedListener:Lco/vine/android/widget/IconTabHost$OnTabClickedListener;

    invoke-interface {v0}, Lco/vine/android/widget/IconTabHost$OnTabClickedListener;->onCurrentTabClicked()V

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method public setOnTabClickedListener(Lco/vine/android/widget/IconTabHost$OnTabClickedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 20
    iput-object p1, p0, Lco/vine/android/widget/IconTabHost;->mOnTabClickedListener:Lco/vine/android/widget/IconTabHost$OnTabClickedListener;

    .line 21
    return-void
.end method

.method public setTabExplicit(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 44
    return-void
.end method
