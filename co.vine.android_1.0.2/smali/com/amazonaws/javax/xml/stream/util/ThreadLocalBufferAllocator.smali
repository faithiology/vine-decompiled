.class public Lcom/amazonaws/javax/xml/stream/util/ThreadLocalBufferAllocator;
.super Ljava/lang/Object;
.source "ThreadLocalBufferAllocator.java"


# static fields
.field private static tlba:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/amazonaws/javax/xml/stream/util/ThreadLocalBufferAllocator;->tlba:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBufferAllocator()Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;
    .locals 2

    .prologue
    .line 62
    sget-object v1, Lcom/amazonaws/javax/xml/stream/util/ThreadLocalBufferAllocator;->tlba:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 63
    .local v0, bAllocatorRef:Ljava/lang/ref/SoftReference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    .end local v0           #bAllocatorRef:Ljava/lang/ref/SoftReference;
    new-instance v1, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;

    invoke-direct {v1}, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 65
    .restart local v0       #bAllocatorRef:Ljava/lang/ref/SoftReference;
    sget-object v1, Lcom/amazonaws/javax/xml/stream/util/ThreadLocalBufferAllocator;->tlba:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 68
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;

    return-object v1
.end method
