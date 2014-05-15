.class public Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;
.super Ljava/lang/Object;
.source "VoiceSuggestionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceResult"
.end annotation


# instance fields
.field private final mConfidence:F

.field private final mMatch:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;->mMatch:Ljava/lang/String;

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;->mConfidence:F

    return-void
.end method


# virtual methods
.method public getConfidence()F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;->mConfidence:F

    return v0
.end method

.method public getMatch()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;->mMatch:Ljava/lang/String;

    return-object v0
.end method
