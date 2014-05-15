.class public Lcom/sec/android/app/sbrowser/common/SBrowserPhoneCVHolder;
.super Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;
.source "SBrowserPhoneCVHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/SBrowserPhoneCVHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserPhoneCVHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method
