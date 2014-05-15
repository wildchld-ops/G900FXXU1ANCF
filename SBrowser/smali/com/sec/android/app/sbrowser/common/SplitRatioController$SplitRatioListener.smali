.class public interface abstract Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener;
.super Ljava/lang/Object;
.source "SplitRatioController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/SplitRatioController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SplitRatioListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener$Operation;
    }
.end annotation


# virtual methods
.method public abstract getParentHeight()I
.end method

.method public abstract getParentWidth()I
.end method

.method public abstract onOperation(Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener$Operation;)V
.end method
