.class public Lcom/nuance/connect/util/UndecoratedString;
.super Ljava/lang/Object;
.source "UndecoratedString.java"

# interfaces
.implements Lcom/nuance/connect/util/StringDecorator;


# instance fields
.field private context:Landroid/content/Context;

.field private rawString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/connect/util/UndecoratedString;->rawString:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/connect/util/UndecoratedString;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public decorate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/util/UndecoratedString;->rawString:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/util/UndecoratedString;->context:Landroid/content/Context;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/util/UndecoratedString;->rawString:Ljava/lang/String;

    return-object v0
.end method
