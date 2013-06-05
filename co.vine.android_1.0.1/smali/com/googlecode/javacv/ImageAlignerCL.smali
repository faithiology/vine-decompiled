.class public interface abstract Lcom/googlecode/javacv/ImageAlignerCL;
.super Ljava/lang/Object;
.source "ImageAlignerCL.java"

# interfaces
.implements Lcom/googlecode/javacv/ImageAligner;


# virtual methods
.method public abstract getImagesCL()[Lcom/jogamp/opencl/CLImage2d;
.end method

.method public abstract getMaskImageCL()Lcom/jogamp/opencl/CLImage2d;
.end method

.method public abstract getResidualImageCL()Lcom/jogamp/opencl/CLImage2d;
.end method

.method public abstract getTargetImageCL()Lcom/jogamp/opencl/CLImage2d;
.end method

.method public abstract getTemplateImageCL()Lcom/jogamp/opencl/CLImage2d;
.end method

.method public abstract getTransformedImageCL()Lcom/jogamp/opencl/CLImage2d;
.end method

.method public abstract setTargetImageCL(Lcom/jogamp/opencl/CLImage2d;)V
.end method

.method public abstract setTemplateImageCL(Lcom/jogamp/opencl/CLImage2d;[D)V
.end method
