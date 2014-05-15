.class public interface abstract Lcom/samsung/contacts/autolink/AutoLinkActivity$AutoLinkListner;
.super Ljava/lang/Object;
.source "AutoLinkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/autolink/AutoLinkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AutoLinkListner"
.end annotation


# virtual methods
.method public abstract getCustomActionLayout()Landroid/view/View;
.end method

.method public abstract onClickCancelAction()V
.end method

.method public abstract onClickDoneAction(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/autolink/AutoLinkMultipleJoinData;",
            ">;)V"
        }
    .end annotation
.end method
