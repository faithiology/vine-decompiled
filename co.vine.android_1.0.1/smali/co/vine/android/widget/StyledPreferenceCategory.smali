.class public Lco/vine/android/widget/StyledPreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "StyledPreferenceCategory.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lco/vine/android/widget/StyledPreferenceCategory;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput-object p1, p0, Lco/vine/android/widget/StyledPreferenceCategory;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object p1, p0, Lco/vine/android/widget/StyledPreferenceCategory;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 35
    .local v1, v:Landroid/view/View;
    iget-object v2, p0, Lco/vine/android/widget/StyledPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 37
    .local v0, padding:I
    return-object v1
.end method
