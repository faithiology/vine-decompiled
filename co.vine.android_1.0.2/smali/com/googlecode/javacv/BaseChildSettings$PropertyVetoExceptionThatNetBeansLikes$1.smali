.class Lcom/googlecode/javacv/BaseChildSettings$PropertyVetoExceptionThatNetBeansLikes$1;
.super Ljava/util/ListResourceBundle;
.source "BaseChildSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/javacv/BaseChildSettings$PropertyVetoExceptionThatNetBeansLikes;->call()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/javacv/BaseChildSettings$PropertyVetoExceptionThatNetBeansLikes;


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/BaseChildSettings$PropertyVetoExceptionThatNetBeansLikes;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/googlecode/javacv/BaseChildSettings$PropertyVetoExceptionThatNetBeansLikes$1;->this$0:Lcom/googlecode/javacv/BaseChildSettings$PropertyVetoExceptionThatNetBeansLikes;

    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContents()[[Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    new-array v0, v4, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/googlecode/javacv/BaseChildSettings$PropertyVetoExceptionThatNetBeansLikes$1;->this$0:Lcom/googlecode/javacv/BaseChildSettings$PropertyVetoExceptionThatNetBeansLikes;

    invoke-virtual {v2}, Lcom/googlecode/javacv/BaseChildSettings$PropertyVetoExceptionThatNetBeansLikes;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/googlecode/javacv/BaseChildSettings$PropertyVetoExceptionThatNetBeansLikes$1;->this$0:Lcom/googlecode/javacv/BaseChildSettings$PropertyVetoExceptionThatNetBeansLikes;

    invoke-virtual {v2}, Lcom/googlecode/javacv/BaseChildSettings$PropertyVetoExceptionThatNetBeansLikes;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    return-object v0
.end method
