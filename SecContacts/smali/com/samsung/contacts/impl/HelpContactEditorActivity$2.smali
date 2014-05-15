.class Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;
.super Ljava/lang/Object;
.source "HelpContactEditorActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/impl/HelpContactEditorActivity;->startAddaContactTutorial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/impl/HelpContactEditorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    const v2, 0x7f080172

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2$1;-><init>(Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    invoke-virtual {v1}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
