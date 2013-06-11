.class public final Lcom/twitter/android/R$anim;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/android/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "anim"
.end annotation


# static fields
.field public static activity_close_enter:I

.field public static activity_close_exit:I

.field public static activity_open_enter:I

.field public static activity_open_exit:I

.field public static decelerate_quint:I

.field public static pull_to_refresh:I

.field public static rotate_clockwise:I

.field public static rotate_down:I

.field public static rotate_up:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/high16 v0, 0x7f04

    sput v0, Lcom/twitter/android/R$anim;->activity_close_enter:I

    .line 13
    const v0, 0x7f040001

    sput v0, Lcom/twitter/android/R$anim;->activity_close_exit:I

    .line 14
    const v0, 0x7f040002

    sput v0, Lcom/twitter/android/R$anim;->activity_open_enter:I

    .line 15
    const v0, 0x7f040003

    sput v0, Lcom/twitter/android/R$anim;->activity_open_exit:I

    .line 16
    const v0, 0x7f040004

    sput v0, Lcom/twitter/android/R$anim;->decelerate_quint:I

    .line 17
    const v0, 0x7f040005

    sput v0, Lcom/twitter/android/R$anim;->pull_to_refresh:I

    .line 18
    const v0, 0x7f040006

    sput v0, Lcom/twitter/android/R$anim;->rotate_clockwise:I

    .line 19
    const v0, 0x7f040007

    sput v0, Lcom/twitter/android/R$anim;->rotate_down:I

    .line 20
    const v0, 0x7f040008

    sput v0, Lcom/twitter/android/R$anim;->rotate_up:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
