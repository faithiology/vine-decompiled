.class public Lcom/amazonaws/javax/xml/stream/XMLStreamException2;
.super Lcom/amazonaws/javax/xml/stream/XMLStreamException;
.source "XMLStreamException2.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/Location;)V
    .locals 0
    .parameter "msg"
    .parameter "location"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/Location;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "msg"
    .parameter "location"
    .parameter "th"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/Location;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "msg"
    .parameter "th"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "th"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;->getNestedException()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method
