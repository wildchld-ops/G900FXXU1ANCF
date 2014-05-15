.class Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2$2;
.super Ljava/lang/Object;
.source "HelpFloatingChildLayout.java"

# interfaces
.implements Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2;

.field final synthetic val$updateButton:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2$2;->this$1:Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2;

    iput-object p2, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2$2;->val$updateButton:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch()V
    .locals 10

    iget-object v4, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2$2;->this$1:Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2;

    iget-object v4, v4, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2;->this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;

    #getter for: Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;
    invoke-static {v4}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->access$000(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)Lcom/samsung/contacts/impl/HelpImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/contacts/impl/HelpImpl;->hide()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    iget-object v4, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2$2;->val$updateButton:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v4, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2$2;->val$updateButton:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method
