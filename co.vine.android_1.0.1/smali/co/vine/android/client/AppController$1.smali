.class Lco/vine/android/client/AppController$1;
.super Lco/vine/android/service/VineServiceResponder;
.source "AppController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/client/AppController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/client/AppController;


# direct methods
.method constructor <init>(Lco/vine/android/client/AppController;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lco/vine/android/client/AppController$1;->this$0:Lco/vine/android/client/AppController;

    invoke-direct {p0}, Lco/vine/android/service/VineServiceResponder;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceResponse(IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "actionCode"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "bundle"

    .prologue
    .line 109
    iget-object v0, p0, Lco/vine/android/client/AppController$1;->this$0:Lco/vine/android/client/AppController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lco/vine/android/client/AppController;->handleServiceResponse(IILjava/lang/String;Landroid/os/Bundle;)V

    .line 110
    return-void
.end method
