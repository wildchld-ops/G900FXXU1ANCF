.class public Lcom/nuance/connect/internal/GenericProperty;
.super Ljava/lang/Object;
.source "GenericProperty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/GenericProperty$DefaultStringVerifier;,
        Lcom/nuance/connect/internal/GenericProperty$DefaultBooleanVerifier;,
        Lcom/nuance/connect/internal/GenericProperty$DefaultIntegerVerifier;,
        Lcom/nuance/connect/internal/GenericProperty$StringProperty;,
        Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;,
        Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;
    }
.end annotation


# instance fields
.field protected reference:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
