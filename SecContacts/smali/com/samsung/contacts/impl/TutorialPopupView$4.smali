.class Lcom/samsung/contacts/impl/TutorialPopupView$4;
.super Ljava/lang/Object;
.source "TutorialPopupView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/impl/TutorialPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/impl/TutorialPopupView;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/impl/TutorialPopupView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/impl/TutorialPopupView$4;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView$4;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #calls: Lcom/samsung/contacts/impl/TutorialPopupView;->dispatchTouchEventToActivity(Landroid/view/MotionEvent;)V
    invoke-static {v1, p2}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$200(Lcom/samsung/contacts/impl/TutorialPopupView;Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView$4;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$000(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
