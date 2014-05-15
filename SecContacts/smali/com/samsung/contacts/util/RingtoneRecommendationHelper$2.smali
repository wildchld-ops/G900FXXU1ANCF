.class Lcom/samsung/contacts/util/RingtoneRecommendationHelper$2;
.super Ljava/lang/Thread;
.source "RingtoneRecommendationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->doExtract()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/util/RingtoneRecommendationHelper;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$2;->this$0:Lcom/samsung/contacts/util/RingtoneRecommendationHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/samsung/audio/Smat;

    invoke-direct {v0}, Lcom/samsung/audio/Smat;-><init>()V

    iget-object v1, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$2;->this$0:Lcom/samsung/contacts/util/RingtoneRecommendationHelper;

    invoke-virtual {v1, v0}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->isRecommendSupported(Lcom/samsung/audio/Smat;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$2;->this$0:Lcom/samsung/contacts/util/RingtoneRecommendationHelper;

    invoke-virtual {v1, v0}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->getRingtoneRecommendation(Lcom/samsung/audio/Smat;)V

    :cond_0
    return-void
.end method
