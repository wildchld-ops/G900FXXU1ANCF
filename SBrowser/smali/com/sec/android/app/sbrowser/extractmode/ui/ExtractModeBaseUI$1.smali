.class Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$1;
.super Ljava/lang/Object;
.source "ExtractModeBaseUI.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->initializeUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$1;->this$0:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Landroid/view/View$DragShadowBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$1;->this$0:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContextSearch:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->access$000(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const-string v2, "ContextButton"

    const-string v3, "Search"

    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$1;->this$0:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContextSearch:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->access$000(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)Landroid/widget/ImageButton;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$1;->this$0:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;

    #setter for: Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mDropActive:Z
    invoke-static {v2, v4}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->access$102(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;Z)Z

    const/4 v2, 0x1

    return v2
.end method
