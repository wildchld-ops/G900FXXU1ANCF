.class Lcom/android/mms/ui/BackgroundColorPicker$10;
.super Ljava/lang/Object;
.source "BackgroundColorPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Lcom/android/mms/ui/BackgroundColorPicker$10;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iput-object p2, p0, Lcom/android/mms/ui/BackgroundColorPicker$10;->val$backgroundSelectorAdapter:Lcom/android/mms/ui/BackgroundSelectorAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$10;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    #getter for: Lcom/android/mms/ui/BackgroundColorPicker;->mBackgroundDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/mms/ui/BackgroundColorPicker;->access$700(Lcom/android/mms/ui/BackgroundColorPicker;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$10;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    #getter for: Lcom/android/mms/ui/BackgroundColorPicker;->mBackgroundDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/mms/ui/BackgroundColorPicker;->access$700(Lcom/android/mms/ui/BackgroundColorPicker;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$10;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    #getter for: Lcom/android/mms/ui/BackgroundColorPicker;->mBackgroundDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/mms/ui/BackgroundColorPicker;->access$700(Lcom/android/mms/ui/BackgroundColorPicker;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$10;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v2, p0, Lcom/android/mms/ui/BackgroundColorPicker$10;->val$backgroundSelectorAdapter:Lcom/android/mms/ui/BackgroundSelectorAdapter;

    invoke-virtual {v2, p3}, Lcom/android/mms/ui/BackgroundSelectorAdapter;->buttonToCommand(I)I

    move-result v2

    #calls: Lcom/android/mms/ui/BackgroundColorPicker;->startActivityforBackround(I)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/BackgroundColorPicker;->access$800(Lcom/android/mms/ui/BackgroundColorPicker;I)V

    return-void
.end method
