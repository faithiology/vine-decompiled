.class public Lcom/googlecode/javacv/CameraSettings;
.super Lcom/googlecode/javacv/BaseSettings;
.source "CameraSettings.java"


# instance fields
.field calibrated:Z

.field frameGrabber:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/googlecode/javacv/FrameGrabber;",
            ">;"
        }
    .end annotation
.end field

.field monitorWindowsScale:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/googlecode/javacv/CameraSettings;-><init>(Z)V

    .line 33
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter "calibrated"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/googlecode/javacv/BaseSettings;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlecode/javacv/CameraSettings;->calibrated:Z

    .line 39
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/googlecode/javacv/CameraSettings;->monitorWindowsScale:D

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/CameraSettings;->frameGrabber:Ljava/lang/Class;

    .line 35
    iput-boolean p1, p0, Lcom/googlecode/javacv/CameraSettings;->calibrated:Z

    .line 36
    return-void
.end method


# virtual methods
.method public getFrameGrabber()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/googlecode/javacv/FrameGrabber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/googlecode/javacv/CameraSettings;->frameGrabber:Ljava/lang/Class;

    return-object v0
.end method

.method public getMonitorWindowsScale()D
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/googlecode/javacv/CameraSettings;->monitorWindowsScale:D

    return-wide v0
.end method

.method public getQuantity()I
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/googlecode/javacv/CameraSettings;->size()I

    move-result v0

    return v0
.end method

.method public setFrameGrabber(Ljava/lang/Class;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/googlecode/javacv/FrameGrabber;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, frameGrabber:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/googlecode/javacv/FrameGrabber;>;"
    iget-object v0, p0, Lcom/googlecode/javacv/CameraSettings;->pcSupport:Ljava/beans/PropertyChangeSupport;

    const-string v1, "frameGrabber"

    iget-object v2, p0, Lcom/googlecode/javacv/CameraSettings;->frameGrabber:Ljava/lang/Class;

    iput-object p1, p0, Lcom/googlecode/javacv/CameraSettings;->frameGrabber:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public setMonitorWindowsScale(D)V
    .locals 0
    .parameter "monitorWindowsScale"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/googlecode/javacv/CameraSettings;->monitorWindowsScale:D

    .line 70
    return-void
.end method

.method public setQuantity(I)V
    .locals 9
    .parameter "quantity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 46
    invoke-static {v8, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 47
    invoke-virtual {p0}, Lcom/googlecode/javacv/CameraSettings;->toArray()[Lcom/googlecode/javacv/CameraDevice$Settings;

    move-result-object v0

    .line 48
    .local v0, a:[Ljava/lang/Object;
    array-length v2, v0

    .line 49
    .local v2, i:I
    :goto_0
    if-le v2, p1, :cond_0

    .line 50
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    invoke-virtual {p0, v3}, Lcom/googlecode/javacv/CameraSettings;->remove(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 53
    :cond_0
    :goto_1
    if-ge v2, p1, :cond_2

    .line 54
    iget-boolean v3, p0, Lcom/googlecode/javacv/CameraSettings;->calibrated:Z

    if-eqz v3, :cond_1

    new-instance v1, Lcom/googlecode/javacv/CameraDevice$CalibratedSettings;

    invoke-direct {v1}, Lcom/googlecode/javacv/CameraDevice$CalibratedSettings;-><init>()V

    :goto_2
    check-cast v1, Lcom/googlecode/javacv/CameraDevice$Settings;

    .line 56
    .local v1, c:Lcom/googlecode/javacv/CameraDevice$Settings;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%2d"

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/googlecode/javacv/CameraDevice$Settings;->setName(Ljava/lang/String;)V

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/googlecode/javacv/CameraDevice$Settings;->setDeviceNumber(Ljava/lang/Integer;)V

    .line 58
    iget-object v3, p0, Lcom/googlecode/javacv/CameraSettings;->frameGrabber:Ljava/lang/Class;

    invoke-interface {v1, v3}, Lcom/googlecode/javacv/CameraDevice$Settings;->setFrameGrabber(Ljava/lang/Class;)V

    .line 59
    invoke-virtual {p0, v1}, Lcom/googlecode/javacv/CameraSettings;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 61
    goto :goto_1

    .line 54
    .end local v1           #c:Lcom/googlecode/javacv/CameraDevice$Settings;
    :cond_1
    new-instance v1, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;

    invoke-direct {v1}, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;-><init>()V

    goto :goto_2

    .line 62
    :cond_2
    iget-object v3, p0, Lcom/googlecode/javacv/CameraSettings;->pcSupport:Ljava/beans/PropertyChangeSupport;

    const-string v4, "quantity"

    array-length v5, v0

    invoke-virtual {v3, v4, v5, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;II)V

    .line 63
    return-void
.end method

.method public toArray()[Lcom/googlecode/javacv/CameraDevice$Settings;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/googlecode/javacv/CameraSettings;->size()I

    move-result v0

    new-array v0, v0, [Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/CameraSettings;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/googlecode/javacv/CameraDevice$Settings;

    check-cast v0, [Lcom/googlecode/javacv/CameraDevice$Settings;

    return-object v0
.end method

.method public bridge synthetic toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/googlecode/javacv/CameraSettings;->toArray()[Lcom/googlecode/javacv/CameraDevice$Settings;

    move-result-object v0

    return-object v0
.end method
