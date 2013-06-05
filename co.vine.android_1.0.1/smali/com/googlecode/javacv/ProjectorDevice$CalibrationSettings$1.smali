.class Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings$1;
.super Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;
.source "ProjectorDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings$1;->this$0:Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;

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
    .line 187
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings$1;->this$0:Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;

    invoke-virtual {v0, p1, p2, p3}, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    return-void
.end method
