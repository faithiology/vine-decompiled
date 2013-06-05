.class public Lco/vine/android/widget/ConversationList;
.super Landroid/widget/ListView;
.source "ConversationList.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 28
    invoke-virtual {p0}, Lco/vine/android/widget/ConversationList;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lco/vine/android/widget/ConversationList;->setSelection(I)V

    .line 29
    return-void
.end method
