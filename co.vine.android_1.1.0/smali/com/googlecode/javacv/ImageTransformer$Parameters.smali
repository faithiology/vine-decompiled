.class public interface abstract Lcom/googlecode/javacv/ImageTransformer$Parameters;
.super Ljava/lang/Object;
.source "ImageTransformer.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/ImageTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Parameters"
.end annotation


# virtual methods
.method public abstract clone()Lcom/googlecode/javacv/ImageTransformer$Parameters;
.end method

.method public abstract compose(Lcom/googlecode/javacv/ImageTransformer$Parameters;ZLcom/googlecode/javacv/ImageTransformer$Parameters;Z)V
.end method

.method public abstract get(I)D
.end method

.method public abstract get()[D
.end method

.method public abstract getConstraintError()D
.end method

.method public abstract getSubspace()[D
.end method

.method public abstract preoptimize()Z
.end method

.method public abstract reset(Z)V
.end method

.method public abstract set(ID)V
.end method

.method public abstract set(Lcom/googlecode/javacv/ImageTransformer$Parameters;)V
.end method

.method public varargs abstract set([D)V
.end method

.method public varargs abstract setSubspace([D)V
.end method

.method public abstract size()I
.end method
