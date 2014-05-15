.class public Lcom/android/phone/PhotoringPhrase;
.super Ljava/lang/Object;
.source "PhotoringPhrase.java"


# instance fields
.field public id:J

.field public message:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public thumb:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/phone/PhotoringPhrase;->id:J

    iput-object p3, p0, Lcom/android/phone/PhotoringPhrase;->message:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/phone/PhotoringPhrase;->thumb:Ljava/lang/String;

    iput p6, p0, Lcom/android/phone/PhotoringPhrase;->type:I

    return-void
.end method
