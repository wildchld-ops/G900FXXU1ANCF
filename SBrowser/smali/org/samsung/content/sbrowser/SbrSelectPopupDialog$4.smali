.class Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$4;
.super Ljava/lang/Object;
.source "SbrSelectPopupDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;-><init>(Lorg/chromium/content/browser/ContentViewCore;[Ljava/lang/String;[IZ[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$4;->this$0:Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;

    iput-object p2, p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$4;->val$listView:Landroid/widget/ListView;

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

    invoke-static {}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->access$000()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$4;->this$0:Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$4;->val$listView:Landroid/widget/ListView;

    #calls: Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->getSelectedIndices(Landroid/widget/ListView;)[I
    invoke-static {v1, v2}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->access$400(Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;Landroid/widget/ListView;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->selectPopupMenuItems([I)V

    return-void
.end method
