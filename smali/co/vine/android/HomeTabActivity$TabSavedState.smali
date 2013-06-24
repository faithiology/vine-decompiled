.class Lco/vine/android/HomeTabActivity$TabSavedState;
.super Ljava/lang/Object;
.source "HomeTabActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/HomeTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabSavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lco/vine/android/HomeTabActivity$TabSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final tags:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 573
    new-instance v0, Lco/vine/android/HomeTabActivity$TabSavedState$1;

    invoke-direct {v0}, Lco/vine/android/HomeTabActivity$TabSavedState$1;-><init>()V

    sput-object v0, Lco/vine/android/HomeTabActivity$TabSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/HomeTabActivity$TabSavedState;->tags:[Ljava/lang/String;

    .line 561
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/HomeTabActivity$TabInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 549
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/HomeTabActivity$TabInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 551
    .local v2, size:I
    new-array v3, v2, [Ljava/lang/String;

    .line 552
    .local v3, tabs:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 553
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/HomeTabActivity$TabInfo;

    .line 554
    .local v1, info:Lco/vine/android/HomeTabActivity$TabInfo;
    invoke-virtual {v1}, Lco/vine/android/HomeTabActivity$TabInfo;->getTag()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 556
    .end local v1           #info:Lco/vine/android/HomeTabActivity$TabInfo;
    :cond_0
    iput-object v3, p0, Lco/vine/android/HomeTabActivity$TabSavedState;->tags:[Ljava/lang/String;

    .line 557
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 565
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 570
    iget-object v0, p0, Lco/vine/android/HomeTabActivity$TabSavedState;->tags:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 571
    return-void
.end method
