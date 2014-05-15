.class Lcom/android/phone/PhotoRingScreen$8;
.super Ljava/lang/Object;
.source "PhotoRingScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhotoRingScreen;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhotoRingScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/PhotoRingScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhotoRingScreen$8;->this$0:Lcom/android/phone/PhotoRingScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/phone/PhotoRingScreen$8;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->mCB:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/phone/PhotoRingScreen;->access$2000(Lcom/android/phone/PhotoRingScreen;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iget-object v3, p0, Lcom/android/phone/PhotoRingScreen$8;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->mContentType:I
    invoke-static {v3}, Lcom/android/phone/PhotoRingScreen;->access$1600(Lcom/android/phone/PhotoRingScreen;)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/PhotoRingScreen$8;->this$0:Lcom/android/phone/PhotoRingScreen;

    invoke-virtual {v3}, Lcom/android/phone/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "key_photoring_duty_show"

    if-eqz v0, :cond_0

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen$8;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->mContentType:I
    invoke-static {v1}, Lcom/android/phone/PhotoRingScreen;->access$1600(Lcom/android/phone/PhotoRingScreen;)I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen$8;->this$0:Lcom/android/phone/PhotoRingScreen;

    #calls: Lcom/android/phone/PhotoRingScreen;->checkMobileData()Z
    invoke-static {v1}, Lcom/android/phone/PhotoRingScreen;->access$2200(Lcom/android/phone/PhotoRingScreen;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen$8;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->mPM:Lcom/android/phone/PhotoRingMgr;
    invoke-static {v1}, Lcom/android/phone/PhotoRingScreen;->access$100(Lcom/android/phone/PhotoRingScreen;)Lcom/android/phone/PhotoRingMgr;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/PhotoRingScreen$8;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->uploadPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/PhotoRingScreen;->access$000(Lcom/android/phone/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/phone/PhotoRingMgr;->uploadContentCall(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen$8;->this$0:Lcom/android/phone/PhotoRingScreen;

    iget-object v3, p0, Lcom/android/phone/PhotoRingScreen$8;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->pMe:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/PhotoRingScreen;->access$300(Lcom/android/phone/PhotoRingScreen;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$8;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->pMe:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/phone/PhotoRingScreen;->access$300(Lcom/android/phone/PhotoRingScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0908a2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v3

    #setter for: Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v1, v3}, Lcom/android/phone/PhotoRingScreen;->access$202(Lcom/android/phone/PhotoRingScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen$8;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/phone/PhotoRingScreen;->access$200(Lcom/android/phone/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :goto_2
    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/phone/PhotoRingScreen$8;->this$0:Lcom/android/phone/PhotoRingScreen;

    invoke-virtual {v3}, Lcom/android/phone/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "key_photoring_duty_media_show"

    if-eqz v0, :cond_2

    :goto_3
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen$8;->this$0:Lcom/android/phone/PhotoRingScreen;

    #setter for: Lcom/android/phone/PhotoRingScreen;->mHasphotoringToDial:Z
    invoke-static {v1, v2}, Lcom/android/phone/PhotoRingScreen;->access$1902(Lcom/android/phone/PhotoRingScreen;Z)Z

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen$8;->this$0:Lcom/android/phone/PhotoRingScreen;

    #calls: Lcom/android/phone/PhotoRingScreen;->placeCallIncludeMessage()V
    invoke-static {v1}, Lcom/android/phone/PhotoRingScreen;->access$1400(Lcom/android/phone/PhotoRingScreen;)V

    goto :goto_2
.end method
