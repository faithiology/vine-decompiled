.class public Lcom/googlecode/javacv/BaseChildSettings;
.super Ljava/beans/beancontext/BeanContextChildSupport;
.source "BaseChildSettings.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/BaseChildSettings$PropertyVetoExceptionThatNetBeansLikes;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/beans/beancontext/BeanContextChildSupport;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/googlecode/javacv/BaseChildSettings;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/beans/beancontext/BeanContextChildSupport;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/googlecode/javacv/BaseChildSettings;->pcSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 40
    return-void
.end method

.method public compareTo(Lcom/googlecode/javacv/BaseChildSettings;)I
    .locals 2
    .parameter "o"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/googlecode/javacv/BaseChildSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/googlecode/javacv/BaseChildSettings;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, Lcom/googlecode/javacv/BaseChildSettings;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/BaseChildSettings;->compareTo(Lcom/googlecode/javacv/BaseChildSettings;)I

    move-result v0

    return v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, ""

    return-object v0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/googlecode/javacv/BaseChildSettings;->pcSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 43
    return-void
.end method
