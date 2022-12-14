//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

/// Service error type returned by `Ecdn`.
public protocol TCEcdnErrorType: TCPlatformErrorType {
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

    /// ????????????????????????????????????????????????????????????????????????
    public static var failedOperation_EcdnConfigError: TCEcdnError {
        TCEcdnError(.failedOperation_EcdnConfigError)
    }

    /// ???????????????
    public static var internalError: TCEcdnError {
        TCEcdnError(.internalError)
    }

    /// ????????????????????????????????????????????????????????????????????????
    public static var internalError_AccountSystemError: TCEcdnError {
        TCEcdnError(.internalError_AccountSystemError)
    }

    /// CAM?????????????????????????????????
    public static var internalError_CamSystemError: TCEcdnError {
        TCEcdnError(.internalError_CamSystemError)
    }

    /// ??????????????????????????????????????????????????????????????????
    public static var internalError_DataSystemError: TCEcdnError {
        TCEcdnError(.internalError_DataSystemError)
    }

    /// ??????????????????????????????????????????????????????????????????
    public static var internalError_EcdnConfigError: TCEcdnError {
        TCEcdnError(.internalError_EcdnConfigError)
    }

    /// ??????????????????????????????????????????????????????????????????
    public static var internalError_EcdnDbError: TCEcdnError {
        TCEcdnError(.internalError_EcdnDbError)
    }

    /// ????????????????????????????????????????????????????????????
    public static var internalError_EcdnSystemError: TCEcdnError {
        TCEcdnError(.internalError_EcdnSystemError)
    }

    /// ??????????????????????????????????????????????????????????????????
    public static var internalError_Error: TCEcdnError {
        TCEcdnError(.internalError_Error)
    }

    /// ??????????????????,??????????????? ???
    public static var internalError_ProxyServer: TCEcdnError {
        TCEcdnError(.internalError_ProxyServer)
    }

    /// ?????????????????????
    public static var invalidParameter_EcdnCamTagKeyNotExist: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnCamTagKeyNotExist)
    }

    /// ???????????????????????????
    public static var invalidParameter_EcdnCertNoCertInfo: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnCertNoCertInfo)
    }

    /// ????????????????????? ???
    public static var invalidParameter_EcdnConfigInvalidCache: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnConfigInvalidCache)
    }

    /// ????????????????????????
    public static var invalidParameter_EcdnDomainInvalidStatus: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnDomainInvalidStatus)
    }

    /// ??????????????????????????????????????????????????????????????????
    public static var invalidParameter_EcdnInterfaceError: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnInterfaceError)
    }

    /// ??????Area????????????????????????????????????????????????
    public static var invalidParameter_EcdnInvalidParamArea: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnInvalidParamArea)
    }

    /// ???????????????????????????????????????????????????????????????
    public static var invalidParameter_EcdnInvalidParamInterval: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnInvalidParamInterval)
    }

    /// ??????????????????????????????????????????????????????
    public static var invalidParameter_EcdnParamError: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnParamError)
    }

    /// ???????????????????????????
    public static var invalidParameter_EcdnPurgeWildcardNotAllowed: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnPurgeWildcardNotAllowed)
    }

    /// ??????????????????????????????????????????
    public static var invalidParameter_EcdnResourceManyTagKey: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnResourceManyTagKey)
    }

    /// ???????????????????????????????????????????????????
    public static var invalidParameter_EcdnStatInvalidDate: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnStatInvalidDate)
    }

    /// ???????????????????????????????????????????????????????????????
    public static var invalidParameter_EcdnStatInvalidMetric: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnStatInvalidMetric)
    }

    /// ?????????????????????
    public static var invalidParameter_EcdnTagKeyInvalid: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnTagKeyInvalid)
    }

    /// ?????????????????????
    public static var invalidParameter_EcdnTagKeyNotExist: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnTagKeyNotExist)
    }

    /// ?????????????????????????????????
    public static var invalidParameter_EcdnTagKeyTooManyValue: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnTagKeyTooManyValue)
    }

    /// ?????????????????????
    public static var invalidParameter_EcdnTagValueInvalid: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnTagValueInvalid)
    }

    /// URL ?????????????????????
    public static var invalidParameter_EcdnUrlExceedLength: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnUrlExceedLength)
    }

    /// ????????????????????????????????????
    public static var invalidParameter_EcdnUserTooManyTagKey: TCEcdnError {
        TCEcdnError(.invalidParameter_EcdnUserTooManyTagKey)
    }

    /// ???????????????
    public static var invalidParameter_ParamError: TCEcdnError {
        TCEcdnError(.invalidParameter_ParamError)
    }

    /// ???????????????????????????
    public static var limitExceeded_EcdnDomainOpTooOften: TCEcdnError {
        TCEcdnError(.limitExceeded_EcdnDomainOpTooOften)
    }

    /// ??????????????????????????????????????????
    public static var limitExceeded_EcdnPurgePathExceedBatchLimit: TCEcdnError {
        TCEcdnError(.limitExceeded_EcdnPurgePathExceedBatchLimit)
    }

    /// ??????????????????????????????????????????
    public static var limitExceeded_EcdnPurgePathExceedDayLimit: TCEcdnError {
        TCEcdnError(.limitExceeded_EcdnPurgePathExceedDayLimit)
    }

    /// ?????????Url???????????????????????????
    public static var limitExceeded_EcdnPurgeUrlExceedBatchLimit: TCEcdnError {
        TCEcdnError(.limitExceeded_EcdnPurgeUrlExceedBatchLimit)
    }

    /// ?????????Url???????????????????????????
    public static var limitExceeded_EcdnPurgeUrlExceedDayLimit: TCEcdnError {
        TCEcdnError(.limitExceeded_EcdnPurgeUrlExceedDayLimit)
    }

    /// ??????????????????????????????
    public static var limitExceeded_EcdnUserTooManyDomains: TCEcdnError {
        TCEcdnError(.limitExceeded_EcdnUserTooManyDomains)
    }

    /// ??????????????????
    public static var resourceInUse_EcdnDomainExists: TCEcdnError {
        TCEcdnError(.resourceInUse_EcdnDomainExists)
    }

    /// ECDN???????????????????????????
    public static var resourceInUse_EcdnOpInProgress: TCEcdnError {
        TCEcdnError(.resourceInUse_EcdnOpInProgress)
    }

    /// ?????????????????????????????????????????????
    public static var resourceNotFound_EcdnDomainNotExists: TCEcdnError {
        TCEcdnError(.resourceNotFound_EcdnDomainNotExists)
    }

    /// ?????????????????????????????????????????????
    public static var resourceNotFound_EcdnHostNotExists: TCEcdnError {
        TCEcdnError(.resourceNotFound_EcdnHostNotExists)
    }

    /// ??????????????????
    public static var resourceNotFound_EcdnProjectNotExists: TCEcdnError {
        TCEcdnError(.resourceNotFound_EcdnProjectNotExists)
    }

    /// ?????????ECDN???????????????????????????????????????
    public static var resourceNotFound_EcdnUserNotExists: TCEcdnError {
        TCEcdnError(.resourceNotFound_EcdnUserNotExists)
    }

    /// ???????????????,??????????????????????????? ???
    public static var resourceUnavailable_EcdnDomainIsLocked: TCEcdnError {
        TCEcdnError(.resourceUnavailable_EcdnDomainIsLocked)
    }

    /// ???????????????????????????????????????
    public static var resourceUnavailable_EcdnDomainIsNotOffline: TCEcdnError {
        TCEcdnError(.resourceUnavailable_EcdnDomainIsNotOffline)
    }

    /// ???????????????????????????????????????
    public static var resourceUnavailable_EcdnDomainIsNotOnline: TCEcdnError {
        TCEcdnError(.resourceUnavailable_EcdnDomainIsNotOnline)
    }

    /// ????????????????????????????????????
    public static var unauthorizedOperation_CdnAccountUnauthorized: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_CdnAccountUnauthorized)
    }

    /// ??????????????????cam?????????
    public static var unauthorizedOperation_CdnCamUnauthorized: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_CdnCamUnauthorized)
    }

    /// ECDN?????????????????????????????????
    public static var unauthorizedOperation_CdnDomainUnauthorized: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_CdnDomainUnauthorized)
    }

    /// ECDN?????????????????????????????????
    public static var unauthorizedOperation_CdnHostUnauthorized: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_CdnHostUnauthorized)
    }

    /// ?????????????????????????????????????????????????????????
    public static var unauthorizedOperation_CdnNoDomainUnauthorized: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_CdnNoDomainUnauthorized)
    }

    /// ???????????????????????????
    public static var unauthorizedOperation_CdnProjectUnauthorized: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_CdnProjectUnauthorized)
    }

    /// ECDN ?????????????????????????????????
    public static var unauthorizedOperation_DomainNoPermission: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_DomainNoPermission)
    }

    /// ECDN ?????????????????????????????????
    public static var unauthorizedOperation_DomainsNoPermission: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_DomainsNoPermission)
    }

    /// ????????????????????????????????????
    public static var unauthorizedOperation_EcdnAccountUnauthorized: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_EcdnAccountUnauthorized)
    }

    /// ??????????????????cam?????????
    public static var unauthorizedOperation_EcdnCamUnauthorized: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_EcdnCamUnauthorized)
    }

    /// ??????????????????????????????
    public static var unauthorizedOperation_EcdnDomainRecordNotVerified: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_EcdnDomainRecordNotVerified)
    }

    /// ECDN?????????????????????????????????
    public static var unauthorizedOperation_EcdnDomainUnauthorized: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_EcdnDomainUnauthorized)
    }

    /// ??????????????????????????????????????????????????????
    public static var unauthorizedOperation_EcdnHostIsOwnedByOther: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_EcdnHostIsOwnedByOther)
    }

    /// ECDN?????????????????????????????????
    public static var unauthorizedOperation_EcdnHostUnauthorized: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_EcdnHostUnauthorized)
    }

    /// ?????????CDN????????????????????? ???
    public static var unauthorizedOperation_EcdnMigratedCdn: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_EcdnMigratedCdn)
    }

    /// ?????????????????????????????????????????????????????????
    public static var unauthorizedOperation_EcdnNoDomainUnauthorized: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_EcdnNoDomainUnauthorized)
    }

    /// ???????????????????????????
    public static var unauthorizedOperation_EcdnProjectUnauthorized: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_EcdnProjectUnauthorized)
    }

    /// ?????????????????????????????????????????????????????????
    public static var unauthorizedOperation_EcdnUserIsSuspended: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_EcdnUserIsSuspended)
    }

    /// ??????????????????????????????????????????????????????
    public static var unauthorizedOperation_EcdnUserNoWhitelist: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_EcdnUserNoWhitelist)
    }

    /// ECDN ?????????cam????????????
    public static var unauthorizedOperation_NoPermission: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_NoPermission)
    }

    /// ???????????????????????????????????? ???
    public static var unauthorizedOperation_OperationTooOften: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_OperationTooOften)
    }

    /// ECDN ???????????????????????????
    public static var unauthorizedOperation_ProjectNoPermission: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_ProjectNoPermission)
    }

    /// ECDN ???????????????????????????
    public static var unauthorizedOperation_ProjectsNoPermission: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_ProjectsNoPermission)
    }

    /// ????????????,??????????????? ???
    public static var unauthorizedOperation_Unknown: TCEcdnError {
        TCEcdnError(.unauthorizedOperation_Unknown)
    }

    public func asEcdnError() -> TCEcdnError {
        return self
    }
}
