.class Lcom/samsung/contacts/impl/HelpContactEditorActivity$2$1;
.super Ljava/lang/Object;
.source "HelpContactEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;

.field final synthetic val$menuButton:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2$1;->this$1:Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;

    iput-object p2, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2$1;->val$menuButton:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const v6, 0x7f0b0269

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2$1;->this$1:Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;

    iget-object v1, v1, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    const/4 v2, 0x2

    new-array v2, v2, [I

    #setter for: Lcom/samsung/contacts/impl/HelpContactEditorActivity;->mSaveButtonLocation:[I
    invoke-static {v1, v2}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->access$202(Lcom/samsung/contacts/impl/HelpContactEditorActivity;[I)[I

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2$1;->val$menuButton:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2$1;->this$1:Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;

    iget-object v2, v2, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    #getter for: Lcom/samsung/contacts/impl/HelpContactEditorActivity;->mSaveButtonLocation:[I
    invoke-static {v2}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->access$200(Lcom/samsung/contacts/impl/HelpContactEditorActivity;)[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2$1;->this$1:Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;

    iget-object v1, v1, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    #getter for: Lcom/samsung/contacts/impl/HelpContactEditorActivity;->mSaveButtonLocation:[I
    invoke-static {v1}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->access$200(Lcom/samsung/contacts/impl/HelpContactEditorActivity;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2$1;->this$1:Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;

    iget-object v2, v2, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    #getter for: Lcom/samsung/contacts/impl/HelpContactEditorActivity;->mSaveButtonLocation:[I
    invoke-static {v2}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->access$200(Lcom/samsung/contacts/impl/HelpContactEditorActivity;)[I

    move-result-object v2

    aget v2, v2, v4

    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2$1;->val$menuButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2$1;->this$1:Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;

    iget-object v3, v3, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    invoke-virtual {v3}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    aput v2, v1, v4

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2$1;->this$1:Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;

    iget-object v1, v1, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    #getter for: Lcom/samsung/contacts/impl/HelpContactEditorActivity;->mSaveButtonLocation:[I
    invoke-static {v1}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->access$200(Lcom/samsung/contacts/impl/HelpContactEditorActivity;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2$1;->this$1:Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;

    iget-object v2, v2, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    #getter for: Lcom/samsung/contacts/impl/HelpContactEditorActivity;->mSaveButtonLocation:[I
    invoke-static {v2}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->access$200(Lcom/samsung/contacts/impl/HelpContactEditorActivity;)[I

    move-result-object v2

    aget v2, v2, v5

    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2$1;->this$1:Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;

    iget-object v3, v3, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    invoke-virtual {v3}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    aput v2, v1, v5

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2$1;->this$1:Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;

    iget-object v1, v1, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    invoke-virtual {v1}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f080221

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/impl/HelpContactEditorFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/contacts/impl/HelpContactEditorFragment;->startAddaContactTutorial()V

    :cond_0
    return-void
.end method
