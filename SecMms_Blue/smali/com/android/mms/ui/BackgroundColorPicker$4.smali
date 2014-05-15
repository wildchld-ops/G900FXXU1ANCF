.class Lcom/android/mms/ui/BackgroundColorPicker$4;
.super Ljava/lang/Object;
.source "BackgroundColorPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BackgroundColorPicker;->setActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BackgroundColorPicker;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BackgroundColorPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BackgroundColorPicker$4;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$4;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$4;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget v1, v1, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    #calls: Lcom/android/mms/ui/BackgroundColorPicker;->saveBackgoundStyle(I)Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/BackgroundColorPicker;->access$400(Lcom/android/mms/ui/BackgroundColorPicker;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$4;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    #setter for: Lcom/android/mms/ui/BackgroundColorPicker;->mSaved:Z
    invoke-static {v0, v3}, Lcom/android/mms/ui/BackgroundColorPicker;->access$102(Lcom/android/mms/ui/BackgroundColorPicker;Z)Z

    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$4;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-virtual {v0}, Lcom/android/mms/ui/BackgroundColorPicker;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$4;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-virtual {v0}, Lcom/android/mms/ui/BackgroundColorPicker;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$4;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-virtual {v1}, Lcom/android/mms/ui/BackgroundColorPicker;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c037c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
