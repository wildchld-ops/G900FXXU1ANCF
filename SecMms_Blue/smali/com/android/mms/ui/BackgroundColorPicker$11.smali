.class Lcom/android/mms/ui/BackgroundColorPicker$11;
.super Ljava/lang/Object;
.source "BackgroundColorPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BackgroundColorPicker;->showBackgroundSelectorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BackgroundColorPicker;

.field final synthetic val$backgroundSelectorAdapter:Lcom/android/mms/ui/BackgroundSelectorAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BackgroundColorPicker;Lcom/android/mms/ui/BackgroundSelectorAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BackgroundColorPicker$11;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iput-object p2, p0, Lcom/android/mms/ui/BackgroundColorPicker$11;->val$backgroundSelectorAdapter:Lcom/android/mms/ui/BackgroundSelectorAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$11;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    #getter for: Lcom/android/mms/ui/BackgroundColorPicker;->mBackgroundDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/mms/ui/BackgroundColorPicker;->access$700(Lcom/android/mms/ui/BackgroundColorPicker;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$11;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    #calls: Lcom/android/mms/ui/BackgroundColorPicker;->setPrevSelectedItem()V
    invoke-static {v0}, Lcom/android/mms/ui/BackgroundColorPicker;->access$900(Lcom/android/mms/ui/BackgroundColorPicker;)V

    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$11;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$11;->val$backgroundSelectorAdapter:Lcom/android/mms/ui/BackgroundSelectorAdapter;

    invoke-virtual {v1, p3}, Lcom/android/mms/ui/BackgroundSelectorAdapter;->buttonToCommand(I)I

    move-result v1

    #calls: Lcom/android/mms/ui/BackgroundColorPicker;->attachAppinfo(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/BackgroundColorPicker;->access$1000(Lcom/android/mms/ui/BackgroundColorPicker;I)V

    const/4 v0, 0x1

    return v0
.end method
