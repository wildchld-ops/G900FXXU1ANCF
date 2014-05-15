.class Lcom/android/dialer/calllog/CallLogAdapter$4;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogAdapter;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter$4;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    sget-boolean v1, Lcom/android/dialer/calllog/CallLogFragment;->keyPressed:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/samsung/contacts/widget/ContactsViewPager;->mPointerY:I

    int-to-double v1, v1

    sget-wide v3, Lcom/android/dialer/calllog/CallLogFragment;->mEnableTouchScreenHeight:D

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/IntentProvider;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/dialer/calllog/CallLogFragment;->keyPressed:Z

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter$4;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    #getter for: Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogAdapter;->access$000(Lcom/android/dialer/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter$4;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    #getter for: Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/dialer/calllog/CallLogAdapter;->access$000(Lcom/android/dialer/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/dialer/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
