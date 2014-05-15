.class Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$3;
.super Ljava/lang/Object;
.source "TabListPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->createPopup(Landroid/content/Context;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0
.end method
