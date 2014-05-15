.class Lorg/chromium/content/browser/input/SelectPopupDialog$3;
.super Ljava/lang/Object;
.source "SelectPopupDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/SelectPopupDialog;-><init>(Lorg/chromium/content/browser/ContentViewCore;[Ljava/lang/String;[IZ[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/SelectPopupDialog;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/SelectPopupDialog;Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/input/SelectPopupDialog$3;->this$0:Lorg/chromium/content/browser/input/SelectPopupDialog;

    iput-object p2, p0, Lorg/chromium/content/browser/input/SelectPopupDialog$3;->val$listView:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDialog$3;->this$0:Lorg/chromium/content/browser/input/SelectPopupDialog;

    #getter for: Lorg/chromium/content/browser/input/SelectPopupDialog;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lorg/chromium/content/browser/input/SelectPopupDialog;->access$000(Lorg/chromium/content/browser/input/SelectPopupDialog;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/SelectPopupDialog$3;->this$0:Lorg/chromium/content/browser/input/SelectPopupDialog;

    iget-object v2, p0, Lorg/chromium/content/browser/input/SelectPopupDialog$3;->val$listView:Landroid/widget/ListView;

    #calls: Lorg/chromium/content/browser/input/SelectPopupDialog;->getSelectedIndices(Landroid/widget/ListView;)[I
    invoke-static {v1, v2}, Lorg/chromium/content/browser/input/SelectPopupDialog;->access$100(Lorg/chromium/content/browser/input/SelectPopupDialog;Landroid/widget/ListView;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->selectPopupMenuItems([I)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDialog$3;->this$0:Lorg/chromium/content/browser/input/SelectPopupDialog;

    #getter for: Lorg/chromium/content/browser/input/SelectPopupDialog;->mListBoxPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lorg/chromium/content/browser/input/SelectPopupDialog;->access$200(Lorg/chromium/content/browser/input/SelectPopupDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
