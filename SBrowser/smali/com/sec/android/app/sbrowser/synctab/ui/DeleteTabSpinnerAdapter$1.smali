.class Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter$1;
.super Ljava/lang/Object;
.source "DeleteTabSpinnerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;->syncTabPhoneUI:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;->syncTabPhoneUI:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->handleActionBarDropdownSelect(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;->notifyDataSetInvalidated()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
