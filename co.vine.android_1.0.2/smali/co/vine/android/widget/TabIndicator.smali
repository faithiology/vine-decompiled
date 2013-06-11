.class public Lco/vine/android/widget/TabIndicator;
.super Landroid/widget/RelativeLayout;
.source "TabIndicator.java"


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mNew:Z

.field private mNewIndicator:Landroid/widget/ImageView;

.field private mTabText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public static newIconIndicator(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;I)Lco/vine/android/widget/TabIndicator;
    .locals 3
    .parameter "inflater"
    .parameter "layout"
    .parameter "tabHost"
    .parameter "iconResId"

    .prologue
    .line 48
    invoke-virtual {p2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/TabIndicator;

    .line 50
    .local v0, indicator:Lco/vine/android/widget/TabIndicator;
    if-lez p3, :cond_0

    .line 51
    invoke-virtual {v0, p3}, Lco/vine/android/widget/TabIndicator;->setTabIcon(I)V

    .line 53
    :cond_0
    return-object v0
.end method

.method public static newTextIndicator(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;I)Lco/vine/android/widget/TabIndicator;
    .locals 3
    .parameter "inflater"
    .parameter "layout"
    .parameter "tabHost"
    .parameter "tabTextId"

    .prologue
    .line 38
    invoke-virtual {p2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/TabIndicator;

    .line 40
    .local v0, indicator:Lco/vine/android/widget/TabIndicator;
    if-lez p3, :cond_0

    .line 41
    invoke-virtual {v0, p3}, Lco/vine/android/widget/TabIndicator;->setTabText(I)V

    .line 43
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/widget/RelativeLayout;->drawableStateChanged()V

    .line 103
    iget-object v0, p0, Lco/vine/android/widget/TabIndicator;->mTabText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 108
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 60
    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lco/vine/android/widget/TabIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/TabIndicator;->mTabText:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lco/vine/android/widget/TabIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/widget/TabIndicator;->mNewIndicator:Landroid/widget/ImageView;

    .line 62
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lco/vine/android/widget/TabIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/widget/TabIndicator;->mIcon:Landroid/widget/ImageView;

    .line 63
    return-void
.end method

.method public setNew(Z)V
    .locals 2
    .parameter "isNew"

    .prologue
    .line 66
    iget-boolean v0, p0, Lco/vine/android/widget/TabIndicator;->mNew:Z

    if-ne p1, v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 70
    :cond_0
    if-eqz p1, :cond_1

    .line 71
    iget-object v0, p0, Lco/vine/android/widget/TabIndicator;->mNewIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    :goto_1
    iput-boolean p1, p0, Lco/vine/android/widget/TabIndicator;->mNew:Z

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lco/vine/android/widget/TabIndicator;->mNewIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setTabIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 90
    iget-object v0, p0, Lco/vine/android/widget/TabIndicator;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 91
    if-lez p1, :cond_1

    .line 92
    iget-object v0, p0, Lco/vine/android/widget/TabIndicator;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object v0, p0, Lco/vine/android/widget/TabIndicator;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lco/vine/android/widget/TabIndicator;->mIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTabText(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 79
    iget-object v0, p0, Lco/vine/android/widget/TabIndicator;->mTabText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 80
    if-lez p1, :cond_1

    .line 81
    iget-object v0, p0, Lco/vine/android/widget/TabIndicator;->mTabText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lco/vine/android/widget/TabIndicator;->mTabText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lco/vine/android/widget/TabIndicator;->mTabText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
