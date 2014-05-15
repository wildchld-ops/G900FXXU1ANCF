.class Lcom/android/mms/ui/ComposeMessageFragment$151;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->initToButtonLayoutForGroup(Lcom/android/mms/data/ContactList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$toButton:Lcom/android/mms/ui/ToButton;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ToButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$151;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$151;->val$toButton:Lcom/android/mms/ui/ToButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$151;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$151;->val$toButton:Lcom/android/mms/ui/ToButton;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->onClickToButton(Lcom/android/mms/ui/ToButton;Landroid/view/View;)V
    invoke-static {v0, v1, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12400(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ToButton;Landroid/view/View;)V

    return-void
.end method
