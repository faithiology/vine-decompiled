.class Lcom/twitter/android/widget/RefreshableListView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "RefreshableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/android/widget/RefreshableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/twitter/android/widget/RefreshableListView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mode:I

.field public refreshable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1107
    new-instance v0, Lcom/twitter/android/widget/RefreshableListView$SavedState$1;

    invoke-direct {v0}, Lcom/twitter/android/widget/RefreshableListView$SavedState$1;-><init>()V

    sput-object v0, Lcom/twitter/android/widget/RefreshableListView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    .line 1095
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1096
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/widget/RefreshableListView$SavedState;->refreshable:Z

    .line 1097
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView$SavedState;->mode:I

    .line 1098
    return-void

    .line 1096
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 1091
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1092
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1102
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1103
    iget-boolean v0, p0, Lcom/twitter/android/widget/RefreshableListView$SavedState;->refreshable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1104
    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView$SavedState;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1105
    return-void

    .line 1103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
