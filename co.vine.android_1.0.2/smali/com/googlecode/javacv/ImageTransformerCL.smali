.class public interface abstract Lcom/googlecode/javacv/ImageTransformerCL;
.super Ljava/lang/Object;
.source "ImageTransformerCL.java"

# interfaces
.implements Lcom/googlecode/javacv/ImageTransformer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/ImageTransformerCL$OutputData;,
        Lcom/googlecode/javacv/ImageTransformerCL$InputData;
    }
.end annotation


# virtual methods
.method public abstract getContext()Lcom/googlecode/javacv/JavaCVCL;
.end method

.method public abstract transform(Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;[Lcom/googlecode/javacv/ImageTransformer$Parameters;[ZLcom/googlecode/javacv/ImageTransformerCL$InputData;Lcom/googlecode/javacv/ImageTransformerCL$OutputData;)V
.end method
