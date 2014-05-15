.class Lcom/android/settings/favorite/MySettnigsRemoveActivity$1$1;
.super Ljava/lang/Object;
.source "MySettnigsRemoveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;


# direct methods
.method constructor <init>(Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1$1;->this$1:Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1$1;->this$1:Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;

    iget-object v0, v0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    iget-object v0, v0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
