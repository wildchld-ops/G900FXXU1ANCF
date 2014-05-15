.class Lcom/android/phone/EmergencyDialer$8;
.super Landroid/database/ContentObserver;
.source "EmergencyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyDialer;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$8;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/16 v4, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer$8;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v1}, Lcom/android/phone/EmergencyDialer;->getSystemOneHandSwitchStateSettingValue()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer$8;->this$0:Lcom/android/phone/EmergencyDialer;

    #getter for: Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/EmergencyDialer;->access$600(Lcom/android/phone/EmergencyDialer;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer$8;->this$0:Lcom/android/phone/EmergencyDialer;

    #getter for: Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/EmergencyDialer;->access$600(Lcom/android/phone/EmergencyDialer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer$8;->this$0:Lcom/android/phone/EmergencyDialer;

    #getter for: Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/EmergencyDialer;->access$700(Lcom/android/phone/EmergencyDialer;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer$8;->this$0:Lcom/android/phone/EmergencyDialer;

    #getter for: Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/EmergencyDialer;->access$700(Lcom/android/phone/EmergencyDialer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer$8;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v1}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$8;->this$0:Lcom/android/phone/EmergencyDialer;

    #getter for: Lcom/android/phone/EmergencyDialer;->ONE_HAND_DIRECTION:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->access$800(Lcom/android/phone/EmergencyDialer;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer$8;->this$0:Lcom/android/phone/EmergencyDialer;

    #getter for: Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/EmergencyDialer;->access$600(Lcom/android/phone/EmergencyDialer;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer$8;->this$0:Lcom/android/phone/EmergencyDialer;

    #getter for: Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/EmergencyDialer;->access$600(Lcom/android/phone/EmergencyDialer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer$8;->this$0:Lcom/android/phone/EmergencyDialer;

    #getter for: Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/EmergencyDialer;->access$700(Lcom/android/phone/EmergencyDialer;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer$8;->this$0:Lcom/android/phone/EmergencyDialer;

    #getter for: Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/EmergencyDialer;->access$700(Lcom/android/phone/EmergencyDialer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer$8;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v1}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$8;->this$0:Lcom/android/phone/EmergencyDialer;

    #getter for: Lcom/android/phone/EmergencyDialer;->ONE_HAND_DIRECTION:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->access$800(Lcom/android/phone/EmergencyDialer;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
