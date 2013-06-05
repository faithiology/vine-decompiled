.class public final Lco/vine/android/player/R$raw;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/player/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "raw"
.end annotation


# static fields
.field public static cacerts:I

.field public static vine_splash:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 785
    const/high16 v0, 0x7f06

    sput v0, Lco/vine/android/player/R$raw;->cacerts:I

    .line 786
    const v0, 0x7f060001

    sput v0, Lco/vine/android/player/R$raw;->vine_splash:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
