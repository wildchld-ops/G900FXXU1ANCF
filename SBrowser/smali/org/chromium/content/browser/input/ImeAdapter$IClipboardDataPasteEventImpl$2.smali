.class Lorg/chromium/content/browser/input/ImeAdapter$IClipboardDataPasteEventImpl$2;
.super Ljava/lang/Object;
.source "ImeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/ImeAdapter$IClipboardDataPasteEventImpl;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/content/browser/input/ImeAdapter$IClipboardDataPasteEventImpl;

.field final synthetic val$dataInner:Landroid/sec/clipboard/data/ClipboardData;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/ImeAdapter$IClipboardDataPasteEventImpl;Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapter$IClipboardDataPasteEventImpl$2;->this$1:Lorg/chromium/content/browser/input/ImeAdapter$IClipboardDataPasteEventImpl;

    iput-object p2, p0, Lorg/chromium/content/browser/input/ImeAdapter$IClipboardDataPasteEventImpl$2;->val$dataInner:Landroid/sec/clipboard/data/ClipboardData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter$IClipboardDataPasteEventImpl$2;->this$1:Lorg/chromium/content/browser/input/ImeAdapter$IClipboardDataPasteEventImpl;

    iget-object v0, v0, Lorg/chromium/content/browser/input/ImeAdapter$IClipboardDataPasteEventImpl;->this$0:Lorg/chromium/content/browser/input/ImeAdapter;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter$IClipboardDataPasteEventImpl$2;->val$dataInner:Landroid/sec/clipboard/data/ClipboardData;

    #calls: Lorg/chromium/content/browser/input/ImeAdapter;->pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
    invoke-static {v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->access$600(Lorg/chromium/content/browser/input/ImeAdapter;Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method
