.class public Lcom/fido/android/framework/agent/Fido$RequestException;
.super Ljava/lang/Exception;
.source "Fido.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fido/android/framework/agent/Fido;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/fido/android/framework/agent/Fido$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fido/android/framework/agent/Fido$RequestException;-><init>(Ljava/lang/String;)V

    return-void
.end method
