.class Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$1;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/android/dialer/BackScrollManager$ScrollableHeader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->onPostExecute([Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mControls:Landroid/view/View;

.field final synthetic this$1:Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;


# direct methods
.method constructor <init>(Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;)V
    .locals 2

    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$1;->this$1:Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$1;->this$1:Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v1, 0x7f08005e

    invoke-virtual {v0, v1}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$1;->mControls:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getMaximumScrollableHeaderOffset()I
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$1;->mControls:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public setOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$1;->mControls:Landroid/view/View;

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    return-void
.end method
