.class Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$10;
.super Ljava/lang/Object;
.source "ToolbarPhoneUi.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->createPopupMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$10;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$10;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMenuButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->access$800(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$10;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->isPopupMenuDismissed:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->access$002(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;Z)Z

    return-void
.end method
