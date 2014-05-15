.class Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager$1;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mCategoryTabs:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->access$7400(Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "emoticon tab click"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->onTabSelected(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "unsupported view id"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
