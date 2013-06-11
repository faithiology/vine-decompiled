.class public interface abstract Lcom/googlecode/javacv/BufferRing$BufferFactory;
.super Ljava/lang/Object;
.source "BufferRing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/BufferRing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BufferFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lcom/googlecode/javacv/BufferRing$ReleasableBuffer;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract create()Lcom/googlecode/javacv/BufferRing$ReleasableBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method
