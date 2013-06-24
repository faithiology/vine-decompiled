.class public Lco/vine/android/service/VineService$VineServiceBinder;
.super Landroid/os/Binder;
.source "VineService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/service/VineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VineServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/service/VineService;


# direct methods
.method public constructor <init>(Lco/vine/android/service/VineService;)V
    .locals 0
    .parameter

    .prologue
    .line 1726
    iput-object p1, p0, Lco/vine/android/service/VineService$VineServiceBinder;->this$0:Lco/vine/android/service/VineService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lco/vine/android/service/VineService;
    .locals 1

    .prologue
    .line 1728
    iget-object v0, p0, Lco/vine/android/service/VineService$VineServiceBinder;->this$0:Lco/vine/android/service/VineService;

    return-object v0
.end method
