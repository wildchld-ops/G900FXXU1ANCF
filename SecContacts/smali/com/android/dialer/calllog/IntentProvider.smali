.class public abstract Lcom/android/dialer/calllog/IntentProvider;
.super Ljava/lang/Object;
.source "IntentProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallDetailIntentProvider(Lcom/android/dialer/calllog/CallLogAdapter;IJILjava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;
    .locals 1

    new-instance v0, Lcom/android/dialer/calllog/IntentProvider$3;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/calllog/IntentProvider$3;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;I)V

    return-object v0
.end method

.method public static getCallDetailIntentProviderForOrange(Lcom/android/dialer/calllog/CallLogAdapter;IJILjava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;
    .locals 1

    new-instance v0, Lcom/android/dialer/calllog/IntentProvider$4;

    invoke-direct {v0, p0, p1, p4}, Lcom/android/dialer/calllog/IntentProvider$4;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;II)V

    return-object v0
.end method

.method public static getPlayVoicemailIntentProvider(JLjava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;
    .locals 1

    new-instance v0, Lcom/android/dialer/calllog/IntentProvider$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/dialer/calllog/IntentProvider$2;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public static getReturnCallIntentProvider(Ljava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;
    .locals 1

    new-instance v0, Lcom/android/dialer/calllog/IntentProvider$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/IntentProvider$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract getIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method
