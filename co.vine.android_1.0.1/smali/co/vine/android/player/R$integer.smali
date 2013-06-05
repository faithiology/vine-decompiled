.class public final Lco/vine/android/player/R$integer;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/player/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field public static activity_anim_duration:I

.field public static bounceAnimTime:I

.field public static rotateAnimTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 703
    const v0, 0x7f0a0002

    sput v0, Lco/vine/android/player/R$integer;->activity_anim_duration:I

    .line 704
    const v0, 0x7f0a0001

    sput v0, Lco/vine/android/player/R$integer;->bounceAnimTime:I

    .line 705
    const/high16 v0, 0x7f0a

    sput v0, Lco/vine/android/player/R$integer;->rotateAnimTime:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
