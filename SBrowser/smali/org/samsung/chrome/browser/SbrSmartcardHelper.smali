.class public Lorg/samsung/chrome/browser/SbrSmartcardHelper;
.super Ljava/lang/Object;
.source "SbrSmartcardHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/samsung/chrome/browser/SbrSmartcardHelper$OnSslContextChangedCb;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "net"
.end annotation


# static fields
.field public static final SSL_NORMAL_CONTEXT:I = 0x0

.field public static final SSL_SMARTCARD_CONTEXT:I = 0x1

.field public static mOnSslContextChangedCb:Lorg/samsung/chrome/browser/SbrSmartcardHelper$OnSslContextChangedCb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/samsung/chrome/browser/SbrSmartcardHelper;->mOnSslContextChangedCb:Lorg/samsung/chrome/browser/SbrSmartcardHelper$OnSslContextChangedCb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeSetSslContextState(ILjava/lang/String;)V
.end method

.method public static onSslContextChanged(I)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-object v0, Lorg/samsung/chrome/browser/SbrSmartcardHelper;->mOnSslContextChangedCb:Lorg/samsung/chrome/browser/SbrSmartcardHelper$OnSslContextChangedCb;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/samsung/chrome/browser/SbrSmartcardHelper;->mOnSslContextChangedCb:Lorg/samsung/chrome/browser/SbrSmartcardHelper$OnSslContextChangedCb;

    invoke-interface {v0, p0}, Lorg/samsung/chrome/browser/SbrSmartcardHelper$OnSslContextChangedCb;->onSslContextChanged(I)V

    :cond_0
    return-void
.end method

.method public static setOnSslContextChangedCallback(Lorg/samsung/chrome/browser/SbrSmartcardHelper$OnSslContextChangedCb;)V
    .locals 0

    sput-object p0, Lorg/samsung/chrome/browser/SbrSmartcardHelper;->mOnSslContextChangedCb:Lorg/samsung/chrome/browser/SbrSmartcardHelper$OnSslContextChangedCb;

    return-void
.end method

.method public static setSslContextState(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/samsung/chrome/browser/SbrSmartcardHelper;->nativeSetSslContextState(ILjava/lang/String;)V

    return-void
.end method
