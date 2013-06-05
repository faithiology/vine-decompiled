.class public interface abstract Lcom/googlecode/javacv/ImageAligner;
.super Ljava/lang/Object;
.source "ImageAligner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/ImageAligner$Settings;
    }
.end annotation


# virtual methods
.method public abstract getImages()[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public abstract getMaskImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public abstract getParameters()Lcom/googlecode/javacv/ImageTransformer$Parameters;
.end method

.method public abstract getPyramidLevel()I
.end method

.method public abstract getRMSE()D
.end method

.method public abstract getResidualImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public abstract getRoi()Lcom/googlecode/javacv/cpp/opencv_core$CvRect;
.end method

.method public abstract getSettings()Lcom/googlecode/javacv/ImageAligner$Settings;
.end method

.method public abstract getTargetImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public abstract getTemplateImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public abstract getTransformedImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public abstract getTransformedRoiPts()[D
.end method

.method public abstract iterate([D)Z
.end method

.method public abstract setParameters(Lcom/googlecode/javacv/ImageTransformer$Parameters;)V
.end method

.method public abstract setPyramidLevel(I)V
.end method

.method public abstract setSettings(Lcom/googlecode/javacv/ImageAligner$Settings;)V
.end method

.method public abstract setTargetImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
.end method

.method public abstract setTemplateImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[D)V
.end method
