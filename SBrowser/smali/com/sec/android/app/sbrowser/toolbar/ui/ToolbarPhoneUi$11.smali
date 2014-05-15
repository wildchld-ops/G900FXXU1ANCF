.class Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$11;
.super Ljava/lang/Object;
.source "ToolbarPhoneUi.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$11;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$11;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    const/4 v0, 0x1

    return v0
.end method
