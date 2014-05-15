.class Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity$1;
.super Ljava/lang/Object;
.source "RingtoneRecommendationHelperActivity.java"

# interfaces
.implements Lcom/samsung/contacts/util/RingtoneRecommendationHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity$1;->this$0:Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity$1;->this$0:Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity$1;->this$0:Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity;->finish()V

    return-void
.end method

.method public onDoExtractInActivity()V
    .locals 0

    return-void
.end method

.method public onRingtoneRecommend(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity$1;->this$0:Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity$1;->this$0:Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity;

    invoke-virtual {v2}, Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity$1;->this$0:Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity;->finish()V

    return-void
.end method
