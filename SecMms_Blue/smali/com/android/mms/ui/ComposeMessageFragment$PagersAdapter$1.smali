.class Lcom/android/mms/ui/ComposeMessageFragment$PagersAdapter$1;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment$PagersAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageFragment$PagersAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$PagersAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$PagersAdapter$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$PagersAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$PagersAdapter$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$PagersAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$PagersAdapter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Lcom/android/mms/ui/CustomScrollView;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/CustomScrollView;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/mms/ui/CustomScrollView;->setIntercept(Z)V

    const/4 v0, 0x0

    return v0
.end method
