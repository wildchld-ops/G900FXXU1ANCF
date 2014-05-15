.class public interface abstract Lcom/sec/android/app/sbrowser/common/UrlHandler$Environment;
.super Ljava/lang/Object;
.source "UrlHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/UrlHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Environment"
.end annotation


# virtual methods
.method public abstract canResolveActivity(Landroid/content/Intent;)Z
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract isSpecializedHandlerAvailable(Landroid/content/Intent;)Z
.end method

.method public abstract startActivity(Landroid/content/Intent;)V
.end method

.method public abstract startActivityIfNeeded(Landroid/content/Intent;)Z
.end method

.method public abstract startIncognitoIntent(Landroid/content/Intent;)V
.end method

.method public abstract willChromeHandleIntent(Landroid/content/Intent;)Z
.end method
