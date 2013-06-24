.class Lco/vine/android/service/VineUploadService$1;
.super Ljava/lang/Object;
.source "VineUploadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/service/VineUploadService;->processCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/service/VineUploadService;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lco/vine/android/service/VineUploadService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lco/vine/android/service/VineUploadService$1;->this$0:Lco/vine/android/service/VineUploadService;

    iput-object p2, p0, Lco/vine/android/service/VineUploadService$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lco/vine/android/service/VineUploadService$1;->this$0:Lco/vine/android/service/VineUploadService;

    iget-object v1, p0, Lco/vine/android/service/VineUploadService$1;->val$path:Ljava/lang/String;

    #calls: Lco/vine/android/service/VineUploadService;->showFailedNotification(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lco/vine/android/service/VineUploadService;->access$200(Lco/vine/android/service/VineUploadService;Ljava/lang/String;)V

    .line 322
    return-void
.end method
