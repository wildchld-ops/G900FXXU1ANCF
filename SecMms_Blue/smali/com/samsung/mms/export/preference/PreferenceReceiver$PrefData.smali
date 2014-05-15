.class public Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;
.super Ljava/lang/Object;
.source "PreferenceReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/export/preference/PreferenceReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrefData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mKey:Ljava/lang/String;

.field public mType:Ljava/lang/String;

.field public mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/mms/export/preference/PreferenceReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/mms/export/preference/PreferenceReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;->this$0:Lcom/samsung/mms/export/preference/PreferenceReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;->mKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;->mType:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;->mValue:Ljava/lang/Object;

    return-void
.end method
