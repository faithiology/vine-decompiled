.class public final Lco/vine/android/player/R$plurals;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/player/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "plurals"
.end annotation


# static fields
.field public static profile_likes:I

.field public static profile_posts:I

.field public static time_days:I

.field public static time_hours:I

.field public static time_mins:I

.field public static time_secs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 769
    const v0, 0x7f0d0004

    sput v0, Lco/vine/android/player/R$plurals;->profile_likes:I

    .line 770
    const v0, 0x7f0d0005

    sput v0, Lco/vine/android/player/R$plurals;->profile_posts:I

    .line 773
    const v0, 0x7f0d0003

    sput v0, Lco/vine/android/player/R$plurals;->time_days:I

    .line 776
    const v0, 0x7f0d0002

    sput v0, Lco/vine/android/player/R$plurals;->time_hours:I

    .line 779
    const v0, 0x7f0d0001

    sput v0, Lco/vine/android/player/R$plurals;->time_mins:I

    .line 782
    const/high16 v0, 0x7f0d

    sput v0, Lco/vine/android/player/R$plurals;->time_secs:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
