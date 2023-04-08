//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoCore

/// Service error type returned by `Ecdn`.
public protocol TCEcdnErrorType: TCServiceErrorType {
    /// Get the service error as ``TCEcdnError``.
    ///
    /// - Returns: ``TCEcdnError`` that holds the same error code and context.
    func asEcdnError() -> TCEcdnError
}

public struct TCEcdnError: TCEcdnErrorType {
    enum Code: String {
        case failedOperation_EcdnConfigError = "FailedOperation.EcdnConfigError"
        case internalError = "InternalError"
        case internalError_AccountSystemError = "InternalError.AccountSystemError"
        case internalError_CamSystemError = "InternalError.CamSystemError"
        case internalError_DataSystemError = "InternalError.DataSystemError"
        case internalError_EcdnConfigError = "InternalError.EcdnConfigError"
        case internalError_EcdnDbError = "InternalError.EcdnDbError"
        case internalError_EcdnSystemError = "InternalError.EcdnSystemError"
        case internalError_Error = "InternalError.Error"
        case internalError_ProxyServer = "InternalError.ProxyServer"
        case invalidParameter_EcdnCamTagKeyNotExist = "InvalidParameter.EcdnCamTagKeyNotExist"
        case invalidParameter_EcdnCertNoCertInfo = "InvalidParameter.EcdnCertNoCertInfo"
        case invalidParameter_EcdnConfigInvalidCache = "InvalidParameter.EcdnConfigInvalidCache"
        case invalidParameter_EcdnDomainInvalidStatus = "InvalidParameter.EcdnDomainInvalidStatus"
        case invalidParameter_EcdnInterfaceError = "InvalidParameter.EcdnInterfaceError"
        case invalidParameter_EcdnInvalidParamArea = "InvalidParameter.EcdnInvalidParamArea"
        case invalidParameter_EcdnInvalidParamInterval = "InvalidParameter.EcdnInvalidParamInterval"
        case invalidParameter_EcdnParamError = "InvalidParameter.EcdnParamError"
        case invalidParameter_EcdnPurgeWildcardNotAllowed = "InvalidParameter.EcdnPurgeWildcardNotAllowed"
        case invalidParameter_EcdnResourceManyTagKey = "InvalidParameter.EcdnResourceManyTagKey"
        case invalidParameter_EcdnStatInvalidDate = "InvalidParameter.EcdnStatInvalidDate"
        case invalidParameter_EcdnStatInvalidMetric = "InvalidParameter.EcdnStatInvalidMetric"
        case invalidParameter_EcdnTagKeyInvalid = "InvalidParameter.EcdnTagKeyInvalid"
        case invalidParameter_EcdnTagKeyNotExist = "InvalidParameter.EcdnTagKeyNotExist"
        case invalidParameter_EcdnTagKeyTooManyValue = "InvalidParameter.EcdnTagKeyTooManyValue"
        case invalidParameter_EcdnTagValueInvalid = "InvalidParameter.EcdnTagValueInvalid"
        case invalidParameter_EcdnUrlExceedLength = "InvalidParameter.EcdnUrlExceedLength"
        case invalidParameter_EcdnUserTooManyTagKey = "InvalidParameter.EcdnUserTooManyTagKey"
        case invalidParameter_ParamError = "InvalidParameter.ParamError"
        case limitExceeded_EcdnDomainOpTooOften = "LimitExceeded.EcdnDomainOpTooOften"
        case limitExceeded_EcdnPurgePathExceedBatchLimit = "LimitExceeded.EcdnPurgePathExceedBatchLimit"
        case limitExceeded_EcdnPurgePathExceedDayLimit = "LimitExceeded.EcdnPurgePathExceedDayLimit"
        case limitExceeded_EcdnPurgeUrlExceedBatchLimit = "LimitExceeded.EcdnPurgeUrlExceedBatchLimit"
        case limitExceeded_EcdnPurgeUrlExceedDayLimit = "LimitExceeded.EcdnPurgeUrlExceedDayLimit"
        case limitExceeded_EcdnUserTooManyDomains = "LimitExceeded.EcdnUserTooManyDomains"
        case resourceInUse_EcdnDomainExists = "ResourceInUse.EcdnDomainExists"
        case resourceInUse_EcdnOpInProgress = "ResourceInUse.EcdnOpInProgress"
        case resourceNotFound_EcdnDomainNotExists = "ResourceNotFound.EcdnDomainNotExists"
        case resourceNotFound_EcdnHostNotExists = "ResourceNotFound.EcdnHostNotExists"
        case resourceNotFound_EcdnProjectNotExists = "ResourceNotFound.EcdnProjectNotExists"
        case resourceNotFound_EcdnUserNotExists = "ResourceNotFound.EcdnUserNotExists"
        case resourceUnavailable_EcdnDomainIsLocked = "ResourceUnavailable.EcdnDomainIsLocked"
        case resourceUnavailable_EcdnDomainIsNotOffline = "ResourceUnavailable.EcdnDomainIsNotOffline"
        case resourceUnavailable_EcdnDomainIsNotOnline = "ResourceUnavailable.EcdnDomainIsNotOnline"
        case unauthorizedOperation_CdnAccountUnauthorized = "UnauthorizedOperation.CdnAccountUnauthorized"
        case unauthorizedOperation_CdnCamUnauthorized = "UnauthorizedOperation.CdnCamUnauthorized"
        case unauthorizedOperation_CdnDomainUnauthorized = "UnauthorizedOperation.CdnDomainUnauthorized"
        case unauthorizedOperation_CdnHostUnauthorized = "UnauthorizedOperation.CdnHostUnauthorized"
        case unauthorizedOperation_CdnNoDomainUnauthorized = "UnauthorizedOperation.CdnNoDomainUnauthorized"
        case unauthorizedOperation_CdnProjectUnauthorized = "UnauthorizedOperation.CdnProjectUnauthorized"
        case unauthorizedOperation_DomainNoPermission = "UnauthorizedOperation.DomainNoPermission"
        case unauthorizedOperation_DomainsNoPermission = "UnauthorizedOperation.DomainsNoPermission"
        case unauthorizedOperation_EcdnAccountUnauthorized = "UnauthorizedOperation.EcdnAccountUnauthorized"
        case unauthorizedOperation_EcdnCamUnauthorized = "UnauthorizedOperation.EcdnCamUnauthorized"
        case unauthorizedOperation_EcdnDomainRecordNotVerified = "UnauthorizedOperation.EcdnDomainRecordNotVerified"
        case unauthorizedOperation_EcdnDomainUnauthorized = "UnauthorizedOperation.EcdnDomainUnauthorized"
        case unauthorizedOperation_EcdnHostIsOwnedByOther = "UnauthorizedOperation.EcdnHostIsOwnedByOther"
        case unauthorizedOperation_EcdnHostUnauthorized = "UnauthorizedOperation.EcdnHostUnauthorized"
        case unauthorizedOperation_EcdnMigratedCdn = "UnauthorizedOperation.EcdnMigratedCdn"
        case unauthorizedOperation_EcdnNoDomainUnauthorized = "UnauthorizedOperation.EcdnNoDomainUnauthorized"
        case unauthorizedOperation_EcdnProjectUnauthorized = "UnauthorizedOperation.EcdnProjectUnauthorized"
        case unauthorizedOperation_EcdnUserIsSuspended = "UnauthorizedOperation.EcdnUserIsSuspended"
        case unauthorizedOperation_EcdnUserNoWhitelist = "UnauthorizedOperation.EcdnUserNoWhitelist"
        case unauthorizedOperation_NoPermission = "UnauthorizedOperation.NoPermission"
        case unauthorizedOperation_OperationTooOften = "UnauthorizedOperation.OperationTooOften"
        case unauthorizedOperation_ProjectNoPermission = "UnauthorizedOperation.ProjectNoPermission"
        case unauthorizedOperation_ProjectsNoPermission = "UnauthorizedOperation.ProjectsNoPermission"
        case unauthorizedOperation_Unknown = "UnauthorizedOperation.Unknown"
    }

    /// Error domains affliated to ``TCEcdnError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self, InternalError.self, InvalidParameter.self, LimitExceeded.self, ResourceInUse.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self]
    }

    private let error: Code

    public let context: TCErrorContext?

    public var errorCode: String {
        self.error.rawValue
    }

    /// Initializer used by ``TCClient`` to match an error of this type.
    public init?(errorCode: String, context: TCErrorContext) {
        guard let error = Code(rawValue: errorCode) else {
            return nil
        }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code, context: TCErrorContext? = nil) {
        self.error = error
        self.context = context
    }

    /// 域名配置更新操作失败，请重试或联系客服人员解决。
    public static var failedOperation_EcdnConfigError: TCEcdnError {
        TCEcdnError(.failedOperation_EcdnConfigError)
    }

    /// 内部错误。
    public static var internalError: TCEcdnError {
        TCEcdnError(.internalError)
    }

    /// 获取用户信息失败，请联系腾讯云工程师进一步排查。
    public static var internalError_AccountSystemError: TCEcdnError {
        TCEcdnError(.internalError_AccountSystemError)
    }

    /// CAM鉴权错误，请稍后重试。
    public static var internalError_CamSystemError: TCEcdnError {
        TCEcdnError(.internalError_CamSystemError)
    }

    /// 数据查询错误，请联系腾讯云工程师进一步排查。
    public static var internalError_DataSystemError: TCEcdnError {
        TCEcdnError(.internalError_DataSystemError)
    }

    /// 内部配置服务错误，请重试或联系客服人员解决。
    public static var internalError_EcdnConfigError: TCEcdnError {
        TCEcdnError(.internalError_EcdnConfigError)
    }

    /// 内部数据错误，请联系腾讯云工程师进一步排查。
    public static var internalError_EcdnDbError: TCEcdnError {
        TCEcdnError(.internalError_EcdnDbError)
    }

    /// 系统错误，请联系腾讯云工程师进一步排查。
    public static var internalError_EcdnSystemError: TCEcdnError {
        TCEcdnError(.internalError_EcdnSystemError)
    }

    /// 内部服务错误，请联系腾讯云工程师进一步排查。
    public static var internalError_Error: TCEcdnError {
        TCEcdnError(.internalError_Error)
    }

    /// 后端服务错误,请稍后重试 。
    public static var internalError_ProxyServer: TCEcdnError {
        TCEcdnError(.internalError_ProxyServer)
    }

    /// 标签键不存在。
    public static var invalidParameter_EcdnCamTagKeyNotExist: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnCamTagKeyNotExist)
    }

    /// 无法解析证书信息。
    public static var invalidParameter_EcdnCertNoCertInfo: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnCertNoCertInfo)
    }

    /// 缓存配置不合法 。
    public static var invalidParameter_EcdnConfigInvalidCache: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnConfigInvalidCache)
    }

    /// 域名状态不合法。
    public static var invalidParameter_EcdnDomainInvalidStatus: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnDomainInvalidStatus)
    }

    /// 内部接口错误，请联系腾讯云工程师进一步排查。
    public static var invalidParameter_EcdnInterfaceError: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnInterfaceError)
    }

    /// 非法Area参数，请参考文档中示例参数填充。
    public static var invalidParameter_EcdnInvalidParamArea: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnInvalidParamArea)
    }

    /// 统计粒度不合法，请参考文档中统计分析示例。
    public static var invalidParameter_EcdnInvalidParamInterval: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnInvalidParamInterval)
    }

    /// 参数错误，请参考文档中示例参数填充。
    public static var invalidParameter_EcdnParamError: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnParamError)
    }

    /// 刷新不支持泛域名。
    public static var invalidParameter_EcdnPurgeWildcardNotAllowed: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnPurgeWildcardNotAllowed)
    }

    /// 该域名绑定的标签键数量过多。
    public static var invalidParameter_EcdnResourceManyTagKey: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnResourceManyTagKey)
    }

    /// 日期不合法，请参考文档中日期示例。
    public static var invalidParameter_EcdnStatInvalidDate: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnStatInvalidDate)
    }

    /// 统计类型不合法，请参考文档中统计分析示例。
    public static var invalidParameter_EcdnStatInvalidMetric: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnStatInvalidMetric)
    }

    /// 标签键不合法。
    public static var invalidParameter_EcdnTagKeyInvalid: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnTagKeyInvalid)
    }

    /// 标签键不存在。
    public static var invalidParameter_EcdnTagKeyNotExist: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnTagKeyNotExist)
    }

    /// 标签键下的值数量过多。
    public static var invalidParameter_EcdnTagKeyTooManyValue: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnTagKeyTooManyValue)
    }

    /// 标签值不合法。
    public static var invalidParameter_EcdnTagValueInvalid: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnTagValueInvalid)
    }

    /// URL 超过限制长度。
    public static var invalidParameter_EcdnUrlExceedLength: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnUrlExceedLength)
    }

    /// 该用户下标签键数量过多。
    public static var invalidParameter_EcdnUserTooManyTagKey: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnUserTooManyTagKey)
    }

    /// 参数错误。
    public static var invalidParameter_ParamError: TCEcdnError {
        TCEcdnError(.invalidParameter_ParamError)
    }

    /// 域名操作过于频繁。
    public static var limitExceeded_EcdnDomainOpTooOften: TCEcdnError {
        TCEcdnError(.limitExceeded_EcdnDomainOpTooOften)
    }

    /// 刷新的目录数量超过单次限制。
    public static var limitExceeded_EcdnPurgePathExceedBatchLimit: TCEcdnError {
        TCEcdnError(.limitExceeded_EcdnPurgePathExceedBatchLimit)
    }

    /// 刷新的目录数量超过每日限制。
    public static var limitExceeded_EcdnPurgePathExceedDayLimit: TCEcdnError {
        TCEcdnError(.limitExceeded_EcdnPurgePathExceedDayLimit)
    }

    /// 刷新的Url数量超过单次限制。
    public static var limitExceeded_EcdnPurgeUrlExceedBatchLimit: TCEcdnError {
        TCEcdnError(.limitExceeded_EcdnPurgeUrlExceedBatchLimit)
    }

    /// 刷新的Url数量超过每日限额。
    public static var limitExceeded_EcdnPurgeUrlExceedDayLimit: TCEcdnError {
        TCEcdnError(.limitExceeded_EcdnPurgeUrlExceedDayLimit)
    }

    /// 接入域名数超出限制。
    public static var limitExceeded_EcdnUserTooManyDomains: TCEcdnError {
        TCEcdnError(.limitExceeded_EcdnUserTooManyDomains)
    }

    /// 域名已存在。
    public static var resourceInUse_EcdnDomainExists: TCEcdnError {
        TCEcdnError(.resourceInUse_EcdnDomainExists)
    }

    /// ECDN资源正在被操作中。
    public static var resourceInUse_EcdnOpInProgress: TCEcdnError {
        TCEcdnError(.resourceInUse_EcdnOpInProgress)
    }

    /// 账号下无此域名，请确认后重试。
    public static var resourceNotFound_EcdnDomainNotExists: TCEcdnError {
        TCEcdnError(.resourceNotFound_EcdnDomainNotExists)
    }

    /// 账号下无此域名，请确认后重试。
    public static var resourceNotFound_EcdnHostNotExists: TCEcdnError {
        TCEcdnError(.resourceNotFound_EcdnHostNotExists)
    }

    /// 项目不存在。
    public static var resourceNotFound_EcdnProjectNotExists: TCEcdnError {
        TCEcdnError(.resourceNotFound_EcdnProjectNotExists)
    }

    /// 未开通ECDN服务，请开通后使用此接口。
    public static var resourceNotFound_EcdnUserNotExists: TCEcdnError {
        TCEcdnError(.resourceNotFound_EcdnUserNotExists)
    }

    /// 域名已锁定,请联系腾讯云工程师 。
    public static var resourceUnavailable_EcdnDomainIsLocked: TCEcdnError {
        TCEcdnError(.resourceUnavailable_EcdnDomainIsLocked)
    }

    /// 域名未下线，请检查后重试。
    public static var resourceUnavailable_EcdnDomainIsNotOffline: TCEcdnError {
        TCEcdnError(.resourceUnavailable_EcdnDomainIsNotOffline)
    }

    /// 域名已下线，请检查后重试。
    public static var resourceUnavailable_EcdnDomainIsNotOnline: TCEcdnError {
        TCEcdnError(.resourceUnavailable_EcdnDomainIsNotOnline)
    }

    /// 子账号禁止查询整体数据。
    public static var unauthorizedOperation_CdnAccountUnauthorized: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_CdnAccountUnauthorized)
    }

    /// 子账号未配置cam策略。
    public static var unauthorizedOperation_CdnCamUnauthorized: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_CdnCamUnauthorized)
    }

    /// ECDN子账号加速域名未授权。
    public static var unauthorizedOperation_CdnDomainUnauthorized: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_CdnDomainUnauthorized)
    }

    /// ECDN子账号加速域名未授权。
    public static var unauthorizedOperation_CdnHostUnauthorized: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_CdnHostUnauthorized)
    }

    /// 子账号没有授权域名权限，请授权后重试。
    public static var unauthorizedOperation_CdnNoDomainUnauthorized: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_CdnNoDomainUnauthorized)
    }

    /// 子账号项目未授权。
    public static var unauthorizedOperation_CdnProjectUnauthorized: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_CdnProjectUnauthorized)
    }

    /// ECDN 子账号加速域名未授权。
    public static var unauthorizedOperation_DomainNoPermission: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_DomainNoPermission)
    }

    /// ECDN 子账号加速域名未授权。
    public static var unauthorizedOperation_DomainsNoPermission: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_DomainsNoPermission)
    }

    /// 子账号禁止查询整体数据。
    public static var unauthorizedOperation_EcdnAccountUnauthorized: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_EcdnAccountUnauthorized)
    }

    /// 子账号未配置cam策略。
    public static var unauthorizedOperation_EcdnCamUnauthorized: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_EcdnCamUnauthorized)
    }

    /// 域名解析未进行验证。
    public static var unauthorizedOperation_EcdnDomainRecordNotVerified: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_EcdnDomainRecordNotVerified)
    }

    /// ECDN子账号加速域名未授权。
    public static var unauthorizedOperation_EcdnDomainUnauthorized: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_EcdnDomainUnauthorized)
    }

    /// 该域名属于其他账号，您没有权限接入。
    public static var unauthorizedOperation_EcdnHostIsOwnedByOther: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_EcdnHostIsOwnedByOther)
    }

    /// ECDN子账号加速域名未授权。
    public static var unauthorizedOperation_EcdnHostUnauthorized: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_EcdnHostUnauthorized)
    }

    /// 请前往CDN控制台进行操作 。
    public static var unauthorizedOperation_EcdnMigratedCdn: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_EcdnMigratedCdn)
    }

    /// 子账号没有授权域名权限，请授权后重试。
    public static var unauthorizedOperation_EcdnNoDomainUnauthorized: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_EcdnNoDomainUnauthorized)
    }

    /// 子账号项目未授权。
    public static var unauthorizedOperation_EcdnProjectUnauthorized: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_EcdnProjectUnauthorized)
    }

    /// 加速服务已停服，请重启加速服务后重试。
    public static var unauthorizedOperation_EcdnUserIsSuspended: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_EcdnUserIsSuspended)
    }

    /// 非内测白名单用户，无该功能使用权限。
    public static var unauthorizedOperation_EcdnUserNoWhitelist: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_EcdnUserNoWhitelist)
    }

    /// ECDN 子账号cam未授权。
    public static var unauthorizedOperation_NoPermission: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_NoPermission)
    }

    /// 操作过于频繁，请稍后重试 。
    public static var unauthorizedOperation_OperationTooOften: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_OperationTooOften)
    }

    /// ECDN 子账号项目未授权。
    public static var unauthorizedOperation_ProjectNoPermission: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_ProjectNoPermission)
    }

    /// ECDN 子账号项目未授权。
    public static var unauthorizedOperation_ProjectsNoPermission: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_ProjectsNoPermission)
    }

    /// 未知错误,请稍后重试 。
    public static var unauthorizedOperation_Unknown: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_Unknown)
    }

    public func asEcdnError() -> TCEcdnError {
        return self
    }
}
