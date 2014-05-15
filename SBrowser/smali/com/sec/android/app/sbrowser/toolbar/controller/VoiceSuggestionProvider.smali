.class public Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;
.super Ljava/lang/Object;
.source "VoiceSuggestionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;
    }
.end annotation


# instance fields
.field private final mConfidenceThresholdHideAlts:F

.field private final mConfidenceThresholdShow:F

.field private mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;->mResults:Ljava/util/List;

    const v0, 0x3e99999a

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;->mConfidenceThresholdShow:F

    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;->mConfidenceThresholdHideAlts:F

    return-void
.end method

.method protected constructor <init>(FF)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;->mConfidenceThresholdShow:F

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;->mConfidenceThresholdHideAlts:F

    return-void
.end method

.method private addVoiceResultToOmniboxSuggestions(Ljava/util/List;Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;F)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;",
            ">;",
            "Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;",
            "F)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;->doesVoiceResultHaveMatch(Ljava/util/List;Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;->getConfidence()F

    move-result v0

    cmpl-float v0, v0, p3

    if-gez v0, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;->getConfidence()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->VOICE_SUGGEST:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->nativeType()I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;->getMatch()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;->getMatch()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private doesVoiceResultHaveMatch(Ljava/util/List;Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;",
            ">;",
            "Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;->getMatch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addVoiceSuggestions([Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;I)[Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;
    .locals 7

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;->mResults:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    array-length v5, p1

    if-lez v5, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;->mResults:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v5}, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;->addVoiceResultToOmniboxSuggestions(Ljava/util/List;Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;F)V

    if-eqz p1, :cond_1

    array-length v0, p1

    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;->getConfidence()F

    move-result v5

    iget v6, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;->mConfidenceThresholdHideAlts:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    const/4 v4, 0x1

    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;->mResults:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int v6, v0, p2

    if-ge v5, v6, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;->mResults:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;

    iget v6, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;->mConfidenceThresholdShow:F

    invoke-direct {p0, v2, v5, v6}, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;->addVoiceResultToOmniboxSuggestions(Ljava/util/List;Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    move-object v1, v5

    check-cast v1, [Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    :goto_1
    return-object v1

    :cond_3
    move-object v1, p1

    goto :goto_1
.end method

.method public clearVoiceSearchResults()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;->mResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;->mResults:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setVoiceResultsFromIntentBundle(Landroid/os/Bundle;)V
    .locals 10

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;->clearVoiceSearchResults()V

    if-eqz p1, :cond_2

    const-string v7, "android.speech.extra.RESULTS"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v7, "android.speech.extra.CONFIDENCE_SCORES"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    array-length v8, v0

    if-eq v7, v8, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    array-length v8, v0

    if-ne v7, v8, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, " "

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->nativeQualifyPartialURLQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;->mResults:Ljava/util/List;

    if-nez v4, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_1
    new-instance v7, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;

    aget v8, v0, v2

    invoke-direct {v7, v6, v8}, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;-><init>(Ljava/lang/String;F)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v6, v3

    goto :goto_1

    :cond_2
    return-void
.end method
