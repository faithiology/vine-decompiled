.class public Lcom/twitter/android/widget/ItemPosition;
.super Ljava/lang/Object;
.source "ItemPosition.java"


# instance fields
.field public final itemId:J

.field public final offset:I

.field public final position:I


# direct methods
.method public constructor <init>(IJI)V
    .locals 0
    .parameter "position"
    .parameter "itemId"
    .parameter "offset"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/twitter/android/widget/ItemPosition;->position:I

    .line 28
    iput-wide p2, p0, Lcom/twitter/android/widget/ItemPosition;->itemId:J

    .line 29
    iput p4, p0, Lcom/twitter/android/widget/ItemPosition;->offset:I

    .line 30
    return-void
.end method
