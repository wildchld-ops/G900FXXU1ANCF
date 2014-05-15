.class Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;
.super Ljava/lang/Object;
.source "HelpPeopleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/contacts/impl/HelpPeopleActivity$1;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/impl/HelpPeopleActivity$1;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;->this$1:Lcom/samsung/contacts/impl/HelpPeopleActivity$1;

    iput-object p2, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;->val$view:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const v8, 0x7f0b0269

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;->this$1:Lcom/samsung/contacts/impl/HelpPeopleActivity$1;

    iget-object v2, v2, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpPeopleActivity;

    invoke-virtual {v2}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;->this$1:Lcom/samsung/contacts/impl/HelpPeopleActivity$1;

    iget-object v2, v2, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpPeopleActivity;

    new-array v3, v7, [I

    #setter for: Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuLoc:[I
    invoke-static {v2, v3}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->access$002(Lcom/samsung/contacts/impl/HelpPeopleActivity;[I)[I

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;->this$1:Lcom/samsung/contacts/impl/HelpPeopleActivity$1;

    iget-object v3, v3, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpPeopleActivity;

    #getter for: Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuLoc:[I
    invoke-static {v3}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->access$000(Lcom/samsung/contacts/impl/HelpPeopleActivity;)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;->this$1:Lcom/samsung/contacts/impl/HelpPeopleActivity$1;

    iget-object v2, v2, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpPeopleActivity;

    const/4 v3, 0x4

    new-array v3, v3, [I

    #setter for: Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuRect:[I
    invoke-static {v2, v3}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->access$302(Lcom/samsung/contacts/impl/HelpPeopleActivity;[I)[I

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;->this$1:Lcom/samsung/contacts/impl/HelpPeopleActivity$1;

    iget-object v3, v3, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpPeopleActivity;

    #getter for: Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuLoc:[I
    invoke-static {v3}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->access$000(Lcom/samsung/contacts/impl/HelpPeopleActivity;)[I

    move-result-object v3

    aget v3, v3, v5

    add-int v1, v2, v3

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;->this$1:Lcom/samsung/contacts/impl/HelpPeopleActivity$1;

    iget-object v2, v2, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpPeopleActivity;

    #getter for: Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuLoc:[I
    invoke-static {v2}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->access$000(Lcom/samsung/contacts/impl/HelpPeopleActivity;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;->this$1:Lcom/samsung/contacts/impl/HelpPeopleActivity$1;

    iget-object v3, v3, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpPeopleActivity;

    #getter for: Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuLoc:[I
    invoke-static {v3}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->access$000(Lcom/samsung/contacts/impl/HelpPeopleActivity;)[I

    move-result-object v3

    aget v3, v3, v6

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    aput v3, v2, v6

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;->this$1:Lcom/samsung/contacts/impl/HelpPeopleActivity$1;

    iget-object v2, v2, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpPeopleActivity;

    #getter for: Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuLoc:[I
    invoke-static {v2}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->access$000(Lcom/samsung/contacts/impl/HelpPeopleActivity;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    aput v3, v2, v5

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;->this$1:Lcom/samsung/contacts/impl/HelpPeopleActivity$1;

    iget-object v2, v2, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpPeopleActivity;

    #getter for: Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuRect:[I
    invoke-static {v2}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->access$300(Lcom/samsung/contacts/impl/HelpPeopleActivity;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;->this$1:Lcom/samsung/contacts/impl/HelpPeopleActivity$1;

    iget-object v3, v3, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpPeopleActivity;

    #getter for: Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuLoc:[I
    invoke-static {v3}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->access$000(Lcom/samsung/contacts/impl/HelpPeopleActivity;)[I

    move-result-object v3

    aget v3, v3, v5

    aput v3, v2, v5

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;->this$1:Lcom/samsung/contacts/impl/HelpPeopleActivity$1;

    iget-object v2, v2, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpPeopleActivity;

    #getter for: Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuRect:[I
    invoke-static {v2}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->access$300(Lcom/samsung/contacts/impl/HelpPeopleActivity;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;->this$1:Lcom/samsung/contacts/impl/HelpPeopleActivity$1;

    iget-object v3, v3, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpPeopleActivity;

    #getter for: Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuLoc:[I
    invoke-static {v3}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->access$000(Lcom/samsung/contacts/impl/HelpPeopleActivity;)[I

    move-result-object v3

    aget v3, v3, v5

    iget-object v4, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;->val$view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v2, v7

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;->this$1:Lcom/samsung/contacts/impl/HelpPeopleActivity$1;

    iget-object v2, v2, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpPeopleActivity;

    #getter for: Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuRect:[I
    invoke-static {v2}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->access$300(Lcom/samsung/contacts/impl/HelpPeopleActivity;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;->this$1:Lcom/samsung/contacts/impl/HelpPeopleActivity$1;

    iget-object v3, v3, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpPeopleActivity;

    #getter for: Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuLoc:[I
    invoke-static {v3}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->access$000(Lcom/samsung/contacts/impl/HelpPeopleActivity;)[I

    move-result-object v3

    aget v3, v3, v6

    aput v3, v2, v6

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;->this$1:Lcom/samsung/contacts/impl/HelpPeopleActivity$1;

    iget-object v2, v2, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpPeopleActivity;

    #getter for: Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuRect:[I
    invoke-static {v2}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->access$300(Lcom/samsung/contacts/impl/HelpPeopleActivity;)[I

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;->this$1:Lcom/samsung/contacts/impl/HelpPeopleActivity$1;

    iget-object v4, v4, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpPeopleActivity;

    #getter for: Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuLoc:[I
    invoke-static {v4}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->access$000(Lcom/samsung/contacts/impl/HelpPeopleActivity;)[I

    move-result-object v4

    aget v4, v4, v6

    iget-object v5, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;->val$view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;->this$1:Lcom/samsung/contacts/impl/HelpPeopleActivity$1;

    iget-object v2, v2, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpPeopleActivity;

    #calls: Lcom/samsung/contacts/impl/HelpPeopleActivity;->showSpeedDialTutorialPopup()V
    invoke-static {v2}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->access$400(Lcom/samsung/contacts/impl/HelpPeopleActivity;)V

    return-void
.end method
