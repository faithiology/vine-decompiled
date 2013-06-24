.class public interface abstract Lcom/googlecode/javacv/ImageTransformer;
.super Ljava/lang/Object;
.source "ImageTransformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/ImageTransformer$Parameters;,
        Lcom/googlecode/javacv/ImageTransformer$Data;
    }
.end annotation


# virtual methods
.method public abstract createParameters()Lcom/googlecode/javacv/ImageTransformer$Parameters;
.end method

.method public abstract transform(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/ImageTransformer$Parameters;Z)V
.end method

.method public abstract transform([Lcom/googlecode/javacv/ImageTransformer$Data;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;[Lcom/googlecode/javacv/ImageTransformer$Parameters;[Z)V
.end method
