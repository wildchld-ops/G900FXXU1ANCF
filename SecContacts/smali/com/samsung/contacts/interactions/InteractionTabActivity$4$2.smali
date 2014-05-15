.class Lcom/samsung/contacts/interactions/InteractionTabActivity$4$2;
.super Ljava/lang/Object;
.source "InteractionTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/InteractionTabActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/contacts/interactions/InteractionTabActivity$4;

.field final synthetic val$tabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/InteractionTabActivity$4;Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$4$2;->this$1:Lcom/samsung/contacts/interactions/InteractionTabActivity$4;

    iput-object p2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$4$2;->val$tabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$4$2;->this$1:Lcom/samsung/contacts/interactions/InteractionTabActivity$4;

    iget v0, v0, Lcom/samsung/contacts/interactions/InteractionTabActivity$4;->val$savedTabPosition:I

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$4$2;->this$1:Lcom/samsung/contacts/interactions/InteractionTabActivity$4;

    iget-object v1, v1, Lcom/samsung/contacts/interactions/InteractionTabActivity$4;->val$bar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getTabCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$4$2;->val$tabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$4$2;->this$1:Lcom/samsung/contacts/interactions/InteractionTabActivity$4;

    iget-object v1, v1, Lcom/samsung/contacts/interactions/InteractionTabActivity$4;->val$bar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getTabCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$4$2;->val$tabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    goto :goto_0
.end method
