.class public Lco/vine/android/api/VineTag;
.super Ljava/lang/Object;
.source "VineTag.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public tag:Ljava/lang/String;

.field public tagId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .parameter "tag"
    .parameter "tagId"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lco/vine/android/api/VineTag;->tag:Ljava/lang/String;

    .line 16
    iput-wide p2, p0, Lco/vine/android/api/VineTag;->tagId:J

    .line 17
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 27
    return-void
.end method
