.class Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2;
.super Ljava/lang/Object;
.source "HelpFloatingChildLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->showTutorial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2;->this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2;->this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;

    #getter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->access$700(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f08028b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2;->this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;

    #getter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->access$800(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f08028c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2;->this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;

    new-instance v3, Lcom/samsung/contacts/impl/HelpImpl;

    iget-object v4, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2;->this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;

    #getter for: Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->access$900(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;->HELP_QUICKCONTACT:Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;

    invoke-direct {v3, v4, v5, v0}, Lcom/samsung/contacts/impl/HelpImpl;-><init>(Landroid/content/Context;Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;Landroid/view/View;)V

    #setter for: Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;
    invoke-static {v2, v3}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->access$002(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;Lcom/samsung/contacts/impl/HelpImpl;)Lcom/samsung/contacts/impl/HelpImpl;

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2;->this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;

    #getter for: Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;
    invoke-static {v2}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->access$000(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)Lcom/samsung/contacts/impl/HelpImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2;->this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;

    #getter for: Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->access$900(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0498

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/impl/HelpImpl;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2;->this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;

    #getter for: Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;
    invoke-static {v2}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->access$000(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)Lcom/samsung/contacts/impl/HelpImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/impl/HelpImpl;->setSoundDisable()V

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2;->this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;

    #getter for: Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;
    invoke-static {v2}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->access$000(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)Lcom/samsung/contacts/impl/HelpImpl;

    move-result-object v2

    new-instance v3, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2$1;

    invoke-direct {v3, p0, v0}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2$1;-><init>(Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/impl/HelpImpl;->setOnIndicatorTouchListener(Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;)V

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2;->this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;

    #getter for: Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;
    invoke-static {v2}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->access$000(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)Lcom/samsung/contacts/impl/HelpImpl;

    move-result-object v2

    new-instance v3, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2$2;

    invoke-direct {v3, p0, v1}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2$2;-><init>(Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/impl/HelpImpl;->setOnSecondIndicatorTouchListener(Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;)V

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2;->this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;

    #getter for: Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;
    invoke-static {v2}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->access$000(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)Lcom/samsung/contacts/impl/HelpImpl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v6, v6}, Lcom/samsung/contacts/impl/HelpImpl;->show(ZZZ)V

    :cond_0
    return-void
.end method
