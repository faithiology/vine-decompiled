.class public Lcom/googlecode/javacv/BaseSettings;
.super Ljava/beans/beancontext/BeanContextSupport;
.source "BaseSettings.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/beans/beancontext/BeanContextSupport;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/googlecode/javacv/BaseSettings;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/beans/beancontext/BeanContextSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 34
    iget-object v4, p0, Lcom/googlecode/javacv/BaseSettings;->pcSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v4, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 35
    invoke-virtual {p0}, Lcom/googlecode/javacv/BaseSettings;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 36
    .local v3, s:Ljava/lang/Object;
    instance-of v4, v3, Lcom/googlecode/javacv/BaseChildSettings;

    if-eqz v4, :cond_1

    .line 37
    check-cast v3, Lcom/googlecode/javacv/BaseChildSettings;

    .end local v3           #s:Ljava/lang/Object;
    invoke-virtual {v3, p1}, Lcom/googlecode/javacv/BaseChildSettings;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 35
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .restart local v3       #s:Ljava/lang/Object;
    :cond_1
    instance-of v4, v3, Lcom/googlecode/javacv/BaseSettings;

    if-eqz v4, :cond_0

    .line 39
    check-cast v3, Lcom/googlecode/javacv/BaseSettings;

    .end local v3           #s:Ljava/lang/Object;
    invoke-virtual {v3, p1}, Lcom/googlecode/javacv/BaseSettings;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    goto :goto_1

    .line 42
    :cond_2
    return-void
.end method

.method public compareTo(Lcom/googlecode/javacv/BaseSettings;)I
    .locals 2
    .parameter "o"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/googlecode/javacv/BaseSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/googlecode/javacv/BaseSettings;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    check-cast p1, Lcom/googlecode/javacv/BaseSettings;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/BaseSettings;->compareTo(Lcom/googlecode/javacv/BaseSettings;)I

    move-result v0

    return v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, ""

    return-object v0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 44
    iget-object v4, p0, Lcom/googlecode/javacv/BaseSettings;->pcSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v4, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 45
    invoke-virtual {p0}, Lcom/googlecode/javacv/BaseSettings;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 46
    .local v3, s:Ljava/lang/Object;
    instance-of v4, v3, Lcom/googlecode/javacv/BaseChildSettings;

    if-eqz v4, :cond_1

    .line 47
    check-cast v3, Lcom/googlecode/javacv/BaseChildSettings;

    .end local v3           #s:Ljava/lang/Object;
    invoke-virtual {v3, p1}, Lcom/googlecode/javacv/BaseChildSettings;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 45
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .restart local v3       #s:Ljava/lang/Object;
    :cond_1
    instance-of v4, v3, Lcom/googlecode/javacv/BaseSettings;

    if-eqz v4, :cond_0

    .line 49
    check-cast v3, Lcom/googlecode/javacv/BaseSettings;

    .end local v3           #s:Ljava/lang/Object;
    invoke-virtual {v3, p1}, Lcom/googlecode/javacv/BaseSettings;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    goto :goto_1

    .line 52
    :cond_2
    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Ljava/beans/beancontext/BeanContextSupport;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 64
    .local v0, a:[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 65
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .parameter "a"

    .prologue
    .line 68
    invoke-super {p0, p1}, Ljava/beans/beancontext/BeanContextSupport;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 69
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 70
    return-object p1
.end method
