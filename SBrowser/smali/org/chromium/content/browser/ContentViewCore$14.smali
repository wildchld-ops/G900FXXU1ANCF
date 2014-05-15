.class Lorg/chromium/content/browser/ContentViewCore$14;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentViewCore;->showSelectActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentViewCore;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore$14;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$14;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->copy()Z

    move-result v0

    return v0
.end method

.method public cut()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$14;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->cut()Z

    move-result v0

    return v0
.end method

.method public findOnPage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$14;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSbrContentViewClient()Lorg/samsung/content/sbrowser/SbrContentViewClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewClient;->findOnPage(Ljava/lang/String;)V

    return-void
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$14;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPasswordType()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$14;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    iget-boolean v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mIsPasswordType:Z

    return v0
.end method

.method public isSBrowserActivity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSelectionEditable()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$14;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    iget-boolean v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionEditable:Z

    return v0
.end method

.method public onDestroyActionMode()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$14;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$14;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    #getter for: Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$2000(Lorg/chromium/content/browser/ContentViewCore;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$14;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->unselect()Z

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$14;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewClient;->onContextualActionBarHidden()V

    return-void
.end method

.method public paste()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$14;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->paste()Z

    move-result v0

    return v0
.end method

.method public pasteByClipboardEx()V
    .locals 0

    return-void
.end method

.method public selectAll()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$14;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->selectAll()Z

    move-result v0

    return v0
.end method
