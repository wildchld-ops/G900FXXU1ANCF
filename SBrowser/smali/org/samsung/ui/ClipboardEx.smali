.class public Lorg/samsung/ui/ClipboardEx;
.super Ljava/lang/Object;
.source "ClipboardEx.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "ui"
.end annotation


# instance fields
.field private final mClipboardManagerEx:Landroid/sec/clipboard/ClipboardExManager;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/samsung/ui/ClipboardEx;->mContext:Landroid/content/Context;

    const-string v0, "clipboardEx"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    iput-object v0, p0, Lorg/samsung/ui/ClipboardEx;->mClipboardManagerEx:Landroid/sec/clipboard/ClipboardExManager;

    return-void
.end method

.method private static create(Landroid/content/Context;)Lorg/samsung/ui/ClipboardEx;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/samsung/ui/ClipboardEx;

    invoke-direct {v0, p0}, Lorg/samsung/ui/ClipboardEx;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getCoercedText()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v1, p0, Lorg/samsung/ui/ClipboardEx;->mClipboardManagerEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v2, p0, Lorg/samsung/ui/ClipboardEx;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasPlainText()Z
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/samsung/ui/ClipboardEx;->mClipboardManagerEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v1, p0, Lorg/samsung/ui/ClipboardEx;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->hasData(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method private setHTML(Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;-><init>()V

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->SetHTMLFragment(Ljava/lang/CharSequence;)Z

    iget-object v1, p0, Lorg/samsung/ui/ClipboardEx;->mClipboardManagerEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v2, p0, Lorg/samsung/ui/ClipboardEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    return-void
.end method

.method private setText(Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    iget-object v1, p0, Lorg/samsung/ui/ClipboardEx;->mClipboardManagerEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v2, p0, Lorg/samsung/ui/ClipboardEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    return-void
.end method
