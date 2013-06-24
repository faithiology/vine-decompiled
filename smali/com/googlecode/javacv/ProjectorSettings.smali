.class public Lcom/googlecode/javacv/ProjectorSettings;
.super Lcom/googlecode/javacv/BaseSettings;
.source "ProjectorSettings.java"


# instance fields
.field calibrated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/googlecode/javacv/ProjectorSettings;-><init>(Z)V

    .line 33
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "calibrated"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/googlecode/javacv/BaseSettings;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlecode/javacv/ProjectorSettings;->calibrated:Z

    .line 35
    iput-boolean p1, p0, Lcom/googlecode/javacv/ProjectorSettings;->calibrated:Z

    .line 36
    return-void
.end method


# virtual methods
.method public getQuantity()I
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectorSettings;->size()I

    move-result v0

    return v0
.end method

.method public setQuantity(I)V
    .locals 12
    .parameter "quantity"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectorSettings;->toArray()[Lcom/googlecode/javacv/ProjectorDevice$Settings;

    move-result-object v0

    .line 45
    .local v0, a:[Ljava/lang/Object;
    array-length v3, v0

    .line 46
    .local v3, i:I
    :goto_0
    if-le v3, p1, :cond_1

    .line 47
    add-int/lit8 v7, v3, -0x1

    aget-object v7, v0, v7

    invoke-virtual {p0, v7}, Lcom/googlecode/javacv/ProjectorSettings;->remove(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 59
    .local v1, arr$:[Ljava/beans/PropertyChangeListener;
    .local v2, c:Lcom/googlecode/javacv/ProjectorDevice$Settings;
    .local v4, i$:I
    .local v6, len$:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 50
    .end local v1           #arr$:[Ljava/beans/PropertyChangeListener;
    .end local v2           #c:Lcom/googlecode/javacv/ProjectorDevice$Settings;
    .end local v4           #i$:I
    .end local v6           #len$:I
    :cond_1
    if-ge v3, p1, :cond_3

    .line 51
    iget-boolean v7, p0, Lcom/googlecode/javacv/ProjectorSettings;->calibrated:Z

    if-eqz v7, :cond_2

    new-instance v2, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;

    invoke-direct {v2}, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;-><init>()V

    :goto_1
    check-cast v2, Lcom/googlecode/javacv/ProjectorDevice$Settings;

    .line 53
    .restart local v2       #c:Lcom/googlecode/javacv/ProjectorDevice$Settings;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Projector "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%2d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/googlecode/javacv/ProjectorDevice$Settings;->setName(Ljava/lang/String;)V

    .line 54
    invoke-interface {v2}, Lcom/googlecode/javacv/ProjectorDevice$Settings;->getScreenNumber()I

    move-result v7

    add-int/2addr v7, v3

    invoke-interface {v2, v7}, Lcom/googlecode/javacv/ProjectorDevice$Settings;->setScreenNumber(I)V

    .line 55
    invoke-virtual {p0, v2}, Lcom/googlecode/javacv/ProjectorSettings;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v7, p0, Lcom/googlecode/javacv/ProjectorSettings;->pcSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v7}, Ljava/beans/PropertyChangeSupport;->getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;

    move-result-object v1

    .restart local v1       #arr$:[Ljava/beans/PropertyChangeListener;
    array-length v6, v1

    .restart local v6       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_2
    if-ge v4, v6, :cond_0

    aget-object v5, v1, v4

    .local v5, l:Ljava/beans/PropertyChangeListener;
    move-object v7, v2

    .line 57
    check-cast v7, Lcom/googlecode/javacv/BaseChildSettings;

    invoke-virtual {v7, v5}, Lcom/googlecode/javacv/BaseChildSettings;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 56
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 51
    .end local v1           #arr$:[Ljava/beans/PropertyChangeListener;
    .end local v2           #c:Lcom/googlecode/javacv/ProjectorDevice$Settings;
    .end local v4           #i$:I
    .end local v5           #l:Ljava/beans/PropertyChangeListener;
    .end local v6           #len$:I
    :cond_2
    new-instance v2, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;

    invoke-direct {v2}, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;-><init>()V

    goto :goto_1

    .line 61
    :cond_3
    iget-object v7, p0, Lcom/googlecode/javacv/ProjectorSettings;->pcSupport:Ljava/beans/PropertyChangeSupport;

    const-string v8, "quantity"

    array-length v9, v0

    invoke-virtual {v7, v8, v9, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;II)V

    .line 62
    return-void
.end method

.method public toArray()[Lcom/googlecode/javacv/ProjectorDevice$Settings;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectorSettings;->size()I

    move-result v0

    new-array v0, v0, [Lcom/googlecode/javacv/ProjectorDevice$Settings;

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/ProjectorSettings;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/googlecode/javacv/ProjectorDevice$Settings;

    check-cast v0, [Lcom/googlecode/javacv/ProjectorDevice$Settings;

    return-object v0
.end method

.method public bridge synthetic toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectorSettings;->toArray()[Lcom/googlecode/javacv/ProjectorDevice$Settings;

    move-result-object v0

    return-object v0
.end method
