.class Lcom/android/phone/CallFeaturesSetting$13;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallFeaturesSetting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$13;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$13;->this$0:Lcom/android/phone/CallFeaturesSetting;

    if-nez p2, :cond_0

    :goto_0
    #setter for: Lcom/android/phone/CallFeaturesSetting;->mCMCCFailOption:I
    invoke-static {v1, v0}, Lcom/android/phone/CallFeaturesSetting;->access$2602(Lcom/android/phone/CallFeaturesSetting;I)I

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$13;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$2700(Lcom/android/phone/CallFeaturesSetting;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usecall_fail_option"

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$13;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mCMCCFailOption:I
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$2600(Lcom/android/phone/CallFeaturesSetting;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$13;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->updateFailOptionCmccSummary()V
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$2800(Lcom/android/phone/CallFeaturesSetting;)V

    return-void

    :cond_0
    if-ne p2, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
