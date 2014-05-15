.class Lcom/android/mms/widget/FontSizePreference$1;
.super Ljava/lang/Object;
.source "FontSizePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/widget/FontSizePreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/widget/FontSizePreference;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/mms/widget/FontSizePreference;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/widget/FontSizePreference$1;->this$0:Lcom/android/mms/widget/FontSizePreference;

    iput p2, p0, Lcom/android/mms/widget/FontSizePreference$1;->val$index:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/widget/FontSizePreference$1;->this$0:Lcom/android/mms/widget/FontSizePreference;

    invoke-virtual {v1, p2}, Lcom/android/mms/widget/FontSizePreference;->setValueIndex(I)V

    iget-object v1, p0, Lcom/android/mms/widget/FontSizePreference$1;->this$0:Lcom/android/mms/widget/FontSizePreference;

    iget-object v2, p0, Lcom/android/mms/widget/FontSizePreference$1;->this$0:Lcom/android/mms/widget/FontSizePreference;

    invoke-virtual {v2}, Lcom/android/mms/widget/FontSizePreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/widget/FontSizePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget v1, p0, Lcom/android/mms/widget/FontSizePreference$1;->val$index:I

    if-eq v1, p2, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/widget/FontSizePreference$1;->this$0:Lcom/android/mms/widget/FontSizePreference;

    #getter for: Lcom/android/mms/widget/FontSizePreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/widget/FontSizePreference;->access$000(Lcom/android/mms/widget/FontSizePreference;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/mms/widget/MmsWidgetProvider;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.mms.intent.action.ACTION_NOTIFY_FONT_SIZE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/widget/FontSizePreference$1;->this$0:Lcom/android/mms/widget/FontSizePreference;

    #getter for: Lcom/android/mms/widget/FontSizePreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/widget/FontSizePreference;->access$000(Lcom/android/mms/widget/FontSizePreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
