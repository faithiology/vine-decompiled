.class Lcom/googlecode/javacv/CameraDevice$CalibrationSettings$1;
.super Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;
.source "CameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings$1;->this$0:Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;

    invoke-direct {p0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "propertyName"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings$1;->this$0:Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;

    invoke-virtual {v0, p1, p2, p3}, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 354
    return-void
.end method
