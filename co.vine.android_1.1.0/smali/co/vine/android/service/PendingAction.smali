.class public Lco/vine/android/service/PendingAction;
.super Ljava/lang/Object;
.source "PendingAction.java"


# instance fields
.field public final actionCode:I

.field public final bundle:Landroid/os/Bundle;

.field public final responder:Lco/vine/android/service/VineServiceResponder;


# direct methods
.method public constructor <init>(ILandroid/os/Bundle;Lco/vine/android/service/VineServiceResponder;)V
    .locals 2
    .parameter "actionCode"
    .parameter "bundle"
    .parameter "responder"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    if-nez p2, :cond_0

    .line 12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bundle cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_0
    iput p1, p0, Lco/vine/android/service/PendingAction;->actionCode:I

    .line 15
    iput-object p2, p0, Lco/vine/android/service/PendingAction;->bundle:Landroid/os/Bundle;

    .line 16
    iput-object p3, p0, Lco/vine/android/service/PendingAction;->responder:Lco/vine/android/service/VineServiceResponder;

    .line 17
    return-void
.end method
