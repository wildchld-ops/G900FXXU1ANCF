.class Lcom/android/mms/ui/ConversationListFragment$31;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->setMenuMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$31;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$31;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v1, 0x0

    #calls: Lcom/android/mms/ui/ConversationListFragment;->setMenuMode(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->access$8400(Lcom/android/mms/ui/ConversationListFragment;I)V

    return-void
.end method
