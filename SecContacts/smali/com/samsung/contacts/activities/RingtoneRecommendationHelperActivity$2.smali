.class Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity$2;
.super Ljava/lang/Object;
.source "RingtoneRecommendationHelperActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$helper:Lcom/samsung/contacts/util/RingtoneRecommendationHelper;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity;Lcom/samsung/contacts/util/RingtoneRecommendationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity$2;->this$0:Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity;

    iput-object p2, p0, Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity$2;->val$helper:Lcom/samsung/contacts/util/RingtoneRecommendationHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity$2;->val$helper:Lcom/samsung/contacts/util/RingtoneRecommendationHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->getRingtoneRecommendation(Lcom/samsung/audio/Smat;)V

    return-void
.end method
