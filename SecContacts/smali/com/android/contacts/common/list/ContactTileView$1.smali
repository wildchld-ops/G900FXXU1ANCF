.class Lcom/android/contacts/common/list/ContactTileView$1;
.super Ljava/lang/Object;
.source "ContactTileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/list/ContactTileView;->createClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/ContactTileView;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/ContactTileView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileView$1;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView$1;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    iget-object v1, v1, Lcom/android/contacts/common/list/ContactTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView$1;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    iget-object v1, v1, Lcom/android/contacts/common/list/ContactTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView$1;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileView$1;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    #getter for: Lcom/android/contacts/common/list/ContactTileView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/common/list/ContactTileView;->access$000(Lcom/android/contacts/common/list/ContactTileView;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileView$1;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    invoke-static {v3, v4}, Lcom/android/contacts/common/MoreContactUtils;->getTargetRectFromView(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/contacts/common/list/ContactTileView$Listener;->onContactSelected(Lcom/android/contacts/common/list/ContactTileView;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView$1;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    #getter for: Lcom/android/contacts/common/list/ContactTileView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/common/list/ContactTileView;->access$100(Lcom/android/contacts/common/list/ContactTileView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView$1;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    #getter for: Lcom/android/contacts/common/list/ContactTileView;->mPushState:Landroid/view/View;
    invoke-static {v1}, Lcom/android/contacts/common/list/ContactTileView;->access$200(Lcom/android/contacts/common/list/ContactTileView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView$1;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    #getter for: Lcom/android/contacts/common/list/ContactTileView;->mGridCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/android/contacts/common/list/ContactTileView;->access$300(Lcom/android/contacts/common/list/ContactTileView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView$1;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    #getter for: Lcom/android/contacts/common/list/ContactTileView;->mListCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/android/contacts/common/list/ContactTileView;->access$400(Lcom/android/contacts/common/list/ContactTileView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    goto :goto_1
.end method
