.class Lcom/android/mms/ui/BackgroundColorPicker$3;
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

.field final synthetic val$pref:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BackgroundColorPicker;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BackgroundColorPicker$3;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iput-object p2, p0, Lcom/android/mms/ui/BackgroundColorPicker$3;->val$pref:Landroid/content/SharedPreferences;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v3, p0, Lcom/android/mms/ui/BackgroundColorPicker$3;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    #getter for: Lcom/android/mms/ui/BackgroundColorPicker;->mSaved:Z
    invoke-static {v3}, Lcom/android/mms/ui/BackgroundColorPicker;->access$100(Lcom/android/mms/ui/BackgroundColorPicker;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->isCustomItemExist()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/BackgroundColorPicker$3;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    #getter for: Lcom/android/mms/ui/BackgroundColorPicker;->mIsStartFromNonCustom:Z
    invoke-static {v3}, Lcom/android/mms/ui/BackgroundColorPicker;->access$200(Lcom/android/mms/ui/BackgroundColorPicker;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/BackgroundColorPicker$3;->val$pref:Landroid/content/SharedPreferences;

    const-string v4, "pref_key_background_color"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/mms/ui/BackgroundColorPicker$3;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    add-int/lit8 v4, v0, 0x1

    #calls: Lcom/android/mms/ui/BackgroundColorPicker;->saveBackgroundStyleIndex(I)V
    invoke-static {v3, v4}, Lcom/android/mms/ui/BackgroundColorPicker;->access$300(Lcom/android/mms/ui/BackgroundColorPicker;I)V

    :cond_0
    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "message_background_image.jpg"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/BackgroundColorPicker$3;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-virtual {v3}, Lcom/android/mms/ui/BackgroundColorPicker;->finish()V

    return-void

    :cond_2
    const-string v3, "message_background_image.jpg"

    const-string v4, "/data/data/com.android.mms/message_background_image_original.jpg"

    const-string v5, "/data/data/com.android.mms/message_background_image.jpg"

    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->copyBackgroundFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
