.class Lcom/android/mms/ui/ComposeMenu$10;
.super Ljava/lang/Object;
.source "ComposeMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMenu;->startSearchMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMenu;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu$10;->this$0:Lcom/android/mms/ui/ComposeMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu$10;->this$0:Lcom/android/mms/ui/ComposeMenu;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMenu;->mIsDelayForSearch:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMenu;->access$1502(Lcom/android/mms/ui/ComposeMenu;Z)Z

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMenu;->access$1602(Z)Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu$10;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method
