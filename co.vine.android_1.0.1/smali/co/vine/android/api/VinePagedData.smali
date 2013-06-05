.class public Lco/vine/android/api/VinePagedData;
.super Ljava/lang/Object;
.source "VinePagedData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lco/vine/android/api/VinePagedData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public anchor:J

.field public count:I

.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field public nextPage:I

.field public previousPage:I

.field public size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lco/vine/android/api/VinePagedData$1;

    invoke-direct {v0}, Lco/vine/android/api/VinePagedData$1;-><init>()V

    sput-object v0, Lco/vine/android/api/VinePagedData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    .local p0, this:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lco/vine/android/api/VinePagedData;->previousPage:I

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 25
    .local p0, this:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lco/vine/android/api/VinePagedData;->previousPage:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VinePagedData;->anchor:J

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VinePagedData;->count:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VinePagedData;->nextPage:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VinePagedData;->previousPage:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VinePagedData;->size:I

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 36
    .local p0, this:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 41
    .local p0, this:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<TT;>;"
    iget-wide v0, p0, Lco/vine/android/api/VinePagedData;->anchor:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    iget v0, p0, Lco/vine/android/api/VinePagedData;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v0, p0, Lco/vine/android/api/VinePagedData;->nextPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v0, p0, Lco/vine/android/api/VinePagedData;->previousPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v0, p0, Lco/vine/android/api/VinePagedData;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object v0, p0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 47
    return-void
.end method
