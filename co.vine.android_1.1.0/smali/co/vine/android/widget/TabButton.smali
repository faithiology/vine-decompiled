.class public Lco/vine/android/widget/TabButton;
.super Landroid/widget/Button;
.source "TabButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/widget/TabButton$TabChanger;
    }
.end annotation


# static fields
.field private static final TAB_SELECTED_STATE_SET:[I


# instance fields
.field private mSelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f01000e

    aput v2, v0, v1

    sput-object v0, Lco/vine/android/widget/TabButton;->TAB_SELECTED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco/vine/android/widget/TabButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lco/vine/android/widget/TabButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 38
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 39
    .local v0, drawableState:[I
    iget-boolean v1, p0, Lco/vine/android/widget/TabButton;->mSelected:Z

    if-eqz v1, :cond_0

    .line 40
    sget-object v1, Lco/vine/android/widget/TabButton;->TAB_SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Lco/vine/android/widget/TabButton;->mergeDrawableStates([I[I)[I

    .line 42
    :cond_0
    return-object v0
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 46
    iput-boolean p1, p0, Lco/vine/android/widget/TabButton;->mSelected:Z

    .line 47
    invoke-virtual {p0}, Lco/vine/android/widget/TabButton;->refreshDrawableState()V

    .line 48
    return-void
.end method
