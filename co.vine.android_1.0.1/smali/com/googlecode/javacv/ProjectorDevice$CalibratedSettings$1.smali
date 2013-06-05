.class Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings$1;
.super Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;
.source "ProjectorDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings$1;->this$0:Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;

    invoke-direct {p0}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "propertyName"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings$1;->this$0:Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;

    invoke-virtual {v0, p1, p2, p3}, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 246
    return-void
.end method
