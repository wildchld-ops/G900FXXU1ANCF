.class final Lorg/samsung/chrome/browser/SbrTabBridge$DestroyRunnable;
.super Ljava/lang/Object;
.source "SbrTabBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/chrome/browser/SbrTabBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DestroyRunnable"
.end annotation


# instance fields
.field private final mNativeSbrTabBridge:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/samsung/chrome/browser/SbrTabBridge$DestroyRunnable;->mNativeSbrTabBridge:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge$DestroyRunnable;->mNativeSbrTabBridge:I

    #calls: Lorg/samsung/chrome/browser/SbrTabBridge;->nativeDestroy(I)V
    invoke-static {v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->access$000(I)V

    return-void
.end method
