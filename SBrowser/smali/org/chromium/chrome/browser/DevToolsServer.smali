.class public Lorg/chromium/chrome/browser/DevToolsServer;
.super Ljava/lang/Object;
.source "DevToolsServer.java"


# instance fields
.field private mNativeDevToolsServer:I


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/DevToolsServer;->mNativeDevToolsServer:I

    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/DevToolsServer;->nativeInitRemoteDebugging(ZLjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/DevToolsServer;->mNativeDevToolsServer:I

    return-void
.end method

.method private native nativeDestroyRemoteDebugging(I)V
.end method

.method private native nativeInitRemoteDebugging(ZLjava/lang/String;)I
.end method

.method private native nativeIsRemoteDebuggingEnabled(I)Z
.end method

.method private native nativeSetRemoteDebuggingEnabled(IZ)V
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/DevToolsServer;->mNativeDevToolsServer:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/DevToolsServer;->nativeDestroyRemoteDebugging(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/DevToolsServer;->mNativeDevToolsServer:I

    return-void
.end method

.method public isRemoteDebuggingEnabled()Z
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/DevToolsServer;->mNativeDevToolsServer:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/DevToolsServer;->nativeIsRemoteDebuggingEnabled(I)Z

    move-result v0

    return v0
.end method

.method public setRemoteDebuggingEnabled(Z)V
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/DevToolsServer;->mNativeDevToolsServer:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/DevToolsServer;->nativeSetRemoteDebuggingEnabled(IZ)V

    return-void
.end method
