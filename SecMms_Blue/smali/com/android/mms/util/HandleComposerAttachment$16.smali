.class Lcom/android/mms/util/HandleComposerAttachment$16;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment;->processingActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/HandleComposerAttachment;

.field final synthetic val$cImageUri:Landroid/net/Uri;

.field final synthetic val$cVideoUri:Landroid/net/Uri;

.field final synthetic val$dialog1:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;Landroid/net/Uri;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$16;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment$16;->val$cImageUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/util/HandleComposerAttachment$16;->val$cVideoUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/mms/util/HandleComposerAttachment$16;->val$dialog1:Landroid/app/ProgressDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v4, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$16;->val$cImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$16;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment$16;->val$cImageUri:Landroid/net/Uri;

    move v3, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/util/HandleComposerAttachment;->addMedia(ILandroid/net/Uri;ZZZ)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$16;->val$dialog1:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$16;->val$cVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/mms/util/HandleComposerAttachment$16;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/mms/util/HandleComposerAttachment$16;->val$cVideoUri:Landroid/net/Uri;

    move v8, v1

    move v9, v4

    move v10, v1

    invoke-virtual/range {v5 .. v10}, Lcom/android/mms/util/HandleComposerAttachment;->addMedia(ILandroid/net/Uri;ZZZ)I

    goto :goto_0
.end method
