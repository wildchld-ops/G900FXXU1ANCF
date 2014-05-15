.class Lcom/android/mms/util/HandleComposerAttachment$27;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment;->startActivityForAddMedia(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/HandleComposerAttachment;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$replace:Z


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/content/SharedPreferences$Editor;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$27;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment$27;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-boolean p3, p0, Lcom/android/mms/util/HandleComposerAttachment$27;->val$replace:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$27;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "location_msg_info"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$27;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$27;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iget-boolean v1, p0, Lcom/android/mms/util/HandleComposerAttachment$27;->val$replace:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->startLocationMapActivity(Z)V

    return-void
.end method
