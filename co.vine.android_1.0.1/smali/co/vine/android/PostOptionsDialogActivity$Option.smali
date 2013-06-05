.class public Lco/vine/android/PostOptionsDialogActivity$Option;
.super Ljava/lang/Object;
.source "PostOptionsDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/PostOptionsDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Option"
.end annotation


# instance fields
.field public id:I

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "text"

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput p1, p0, Lco/vine/android/PostOptionsDialogActivity$Option;->id:I

    .line 176
    iput-object p2, p0, Lco/vine/android/PostOptionsDialogActivity$Option;->text:Ljava/lang/String;

    .line 177
    return-void
.end method
