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

/// Service error type returned by `Teo`.
public protocol TCTeoErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCTeoError``.
    ///
    /// - Returns: ``TCTeoError`` that holds the same error code and context.
    func asTeoError() -> TCTeoError
}

public struct TCTeoError: TCTeoErrorType {
    enum Code: String {
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_CertificateNotFound = "FailedOperation.CertificateNotFound"
        case internalError = "InternalError"
        case internalError_BackendError = "InternalError.BackendError"
        case internalError_DBError = "InternalError.DBError"
        case internalError_DomainConfig = "InternalError.DomainConfig"
        case internalError_FailedToGenerateUrl = "InternalError.FailedToGenerateUrl"
        case internalError_GetRoleError = "InternalError.GetRoleError"
        case internalError_ProxyServer = "InternalError.ProxyServer"
        case internalError_QuotaSystem = "InternalError.QuotaSystem"
        case internalError_RouteError = "InternalError.RouteError"
        case internalError_SystemError = "InternalError.SystemError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue_ConflictRecord = "InvalidParameterValue.ConflictRecord"
        case invalidParameterValue_ConflictWithDNSSEC = "InvalidParameterValue.ConflictWithDNSSEC"
        case invalidParameterValue_ConflictWithLBRecord = "InvalidParameterValue.ConflictWithLBRecord"
        case invalidParameterValue_ConflictWithNSRecord = "InvalidParameterValue.ConflictWithNSRecord"
        case invalidParameterValue_InvalidDNSContent = "InvalidParameterValue.InvalidDNSContent"
        case invalidParameterValue_InvalidDNSName = "InvalidParameterValue.InvalidDNSName"
        case invalidParameterValue_InvalidProxyName = "InvalidParameterValue.InvalidProxyName"
        case invalidParameterValue_InvalidProxyOrigin = "InvalidParameterValue.InvalidProxyOrigin"
        case invalidParameterValue_InvalidSRVName = "InvalidParameterValue.InvalidSRVName"
        case invalidParameterValue_RecordAlreadyExists = "InvalidParameterValue.RecordAlreadyExists"
        case invalidParameterValue_RecordNotAllowed = "InvalidParameterValue.RecordNotAllowed"
        case invalidParameter_ActionInProgress = "InvalidParameter.ActionInProgress"
        case invalidParameter_DomainNotFound = "InvalidParameter.DomainNotFound"
        case invalidParameter_InvalidCacheOnlyOnSwitch = "InvalidParameter.InvalidCacheOnlyOnSwitch"
        case invalidParameter_InvalidCertInfo = "InvalidParameter.InvalidCertInfo"
        case invalidParameter_InvalidClientIpHeaderName = "InvalidParameter.InvalidClientIpHeaderName"
        case invalidParameter_InvalidDynamicRoutineBilling = "InvalidParameter.InvalidDynamicRoutineBilling"
        case invalidParameter_InvalidFilterName = "InvalidParameter.InvalidFilterName"
        case invalidParameter_InvalidForceRedirectType = "InvalidParameter.InvalidForceRedirectType"
        case invalidParameter_InvalidOrigin = "InvalidParameter.InvalidOrigin"
        case invalidParameter_InvalidPostMaxSizeBilling = "InvalidParameter.InvalidPostMaxSizeBilling"
        case invalidParameter_InvalidPostSizeValue = "InvalidParameter.InvalidPostSizeValue"
        case invalidParameter_InvalidRedirectUrlCapture = "InvalidParameter.InvalidRedirectUrlCapture"
        case invalidParameter_InvalidRequestHeaderName = "InvalidParameter.InvalidRequestHeaderName"
        case invalidParameter_InvalidRequestHeaderValue = "InvalidParameter.InvalidRequestHeaderValue"
        case invalidParameter_InvalidResourceIdBilling = "InvalidParameter.InvalidResourceIdBilling"
        case invalidParameter_InvalidResponseHeaderValue = "InvalidParameter.InvalidResponseHeaderValue"
        case invalidParameter_InvalidRuleEngineAction = "InvalidParameter.InvalidRuleEngineAction"
        case invalidParameter_InvalidRuleEngineTarget = "InvalidParameter.InvalidRuleEngineTarget"
        case invalidParameter_InvalidRuleEngineTargetsExtension = "InvalidParameter.InvalidRuleEngineTargetsExtension"
        case invalidParameter_InvalidUrlRedirectUrl = "InvalidParameter.InvalidUrlRedirectUrl"
        case invalidParameter_InvalidWebSocketTimeout = "InvalidParameter.InvalidWebSocketTimeout"
        case invalidParameter_ParameterError = "InvalidParameter.ParameterError"
        case invalidParameter_Security = "InvalidParameter.Security"
        case invalidParameter_SettingInvalidParam = "InvalidParameter.SettingInvalidParam"
        case invalidParameter_Target = "InvalidParameter.Target"
        case invalidParameter_TaskNotGenerated = "InvalidParameter.TaskNotGenerated"
        case invalidParameter_UploadUrl = "InvalidParameter.UploadUrl"
        case invalidParameter_ZoneNotFound = "InvalidParameter.ZoneNotFound"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_BatchQuota = "LimitExceeded.BatchQuota"
        case limitExceeded_DailyQuota = "LimitExceeded.DailyQuota"
        case operationDenied = "OperationDenied"
        case operationDenied_DomainNoICP = "OperationDenied.DomainNoICP"
        case resourceInUse = "ResourceInUse"
        case resourceInUse_Others = "ResourceInUse.Others"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_CertNotFound = "ResourceUnavailable.CertNotFound"
        case resourceUnavailable_HostNotFound = "ResourceUnavailable.HostNotFound"
        case resourceUnavailable_ZoneNotFound = "ResourceUnavailable.ZoneNotFound"
        case unauthorizedOperation_CamUnauthorized = "UnauthorizedOperation.CamUnauthorized"
        case unauthorizedOperation_DomainEmpty = "UnauthorizedOperation.DomainEmpty"
        case unauthorizedOperation_NoPermission = "UnauthorizedOperation.NoPermission"
    }

    /// Error domains affliated to ``TCTeoError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, OperationDenied.self, ResourceInUse.self, ResourceUnavailable.self, UnauthorizedOperation.self]
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

    /// DryRun ????????????????????????????????????????????????????????? DryRun ?????????
    public static var dryRunOperation: TCTeoError {
        TCTeoError(.dryRunOperation)
    }

    /// ???????????????
    public static var failedOperation: TCTeoError {
        TCTeoError(.failedOperation)
    }

    /// ??????????????????
    public static var failedOperation_CertificateNotFound: TCTeoError {
        TCTeoError(.failedOperation_CertificateNotFound)
    }

    /// ???????????????
    public static var internalError: TCTeoError {
        TCTeoError(.internalError)
    }

    /// ?????????????????????
    public static var internalError_BackendError: TCTeoError {
        TCTeoError(.internalError_BackendError)
    }

    /// ??????????????????
    public static var internalError_DBError: TCTeoError {
        TCTeoError(.internalError_DBError)
    }

    /// ?????????????????????
    public static var internalError_DomainConfig: TCTeoError {
        TCTeoError(.internalError_DomainConfig)
    }

    /// ???????????????????????????
    public static var internalError_FailedToGenerateUrl: TCTeoError {
        TCTeoError(.internalError_FailedToGenerateUrl)
    }

    /// ?????????????????????
    public static var internalError_GetRoleError: TCTeoError {
        TCTeoError(.internalError_GetRoleError)
    }

    /// ????????????????????????????????????
    public static var internalError_ProxyServer: TCTeoError {
        TCTeoError(.internalError_ProxyServer)
    }

    /// ???????????????????????????
    public static var internalError_QuotaSystem: TCTeoError {
        TCTeoError(.internalError_QuotaSystem)
    }

    /// ?????????????????????????????????
    public static var internalError_RouteError: TCTeoError {
        TCTeoError(.internalError_RouteError)
    }

    /// ???????????????
    ///
    /// ????????????-???????????????
    public static var internalError_SystemError: TCTeoError {
        TCTeoError(.internalError_SystemError)
    }

    /// ???????????????
    public static var invalidParameter: TCTeoError {
        TCTeoError(.invalidParameter)
    }

    /// ?????????????????????????????????
    public static var invalidParameterValue_ConflictRecord: TCTeoError {
        TCTeoError(.invalidParameterValue_ConflictRecord)
    }

    /// DNS ????????? DNSSEC ???????????????
    public static var invalidParameterValue_ConflictWithDNSSEC: TCTeoError {
        TCTeoError(.invalidParameterValue_ConflictWithDNSSEC)
    }

    /// DNS ????????? LB ???????????????
    public static var invalidParameterValue_ConflictWithLBRecord: TCTeoError {
        TCTeoError(.invalidParameterValue_ConflictWithLBRecord)
    }

    /// DNS ????????? NS ???????????????
    public static var invalidParameterValue_ConflictWithNSRecord: TCTeoError {
        TCTeoError(.invalidParameterValue_ConflictWithNSRecord)
    }

    /// DNS ?????????????????????
    public static var invalidParameterValue_InvalidDNSContent: TCTeoError {
        TCTeoError(.invalidParameterValue_InvalidDNSContent)
    }

    /// DNS ?????????????????????
    public static var invalidParameterValue_InvalidDNSName: TCTeoError {
        TCTeoError(.invalidParameterValue_InvalidDNSName)
    }

    /// DNS ?????????????????????
    public static var invalidParameterValue_InvalidProxyName: TCTeoError {
        TCTeoError(.invalidParameterValue_InvalidProxyName)
    }

    /// DNS ???????????????????????????
    public static var invalidParameterValue_InvalidProxyOrigin: TCTeoError {
        TCTeoError(.invalidParameterValue_InvalidProxyOrigin)
    }

    /// SRV ?????????????????????
    public static var invalidParameterValue_InvalidSRVName: TCTeoError {
        TCTeoError(.invalidParameterValue_InvalidSRVName)
    }

    /// ??????????????????
    public static var invalidParameterValue_RecordAlreadyExists: TCTeoError {
        TCTeoError(.invalidParameterValue_RecordAlreadyExists)
    }

    /// ????????????????????????
    public static var invalidParameterValue_RecordNotAllowed: TCTeoError {
        TCTeoError(.invalidParameterValue_RecordNotAllowed)
    }

    /// ?????????????????????????????????
    public static var invalidParameter_ActionInProgress: TCTeoError {
        TCTeoError(.invalidParameter_ActionInProgress)
    }

    /// ???????????????????????????????????????
    public static var invalidParameter_DomainNotFound: TCTeoError {
        TCTeoError(.invalidParameter_DomainNotFound)
    }

    /// ????????????????????????
    public static var invalidParameter_InvalidCacheOnlyOnSwitch: TCTeoError {
        TCTeoError(.invalidParameter_InvalidCacheOnlyOnSwitch)
    }

    /// ?????????????????????
    public static var invalidParameter_InvalidCertInfo: TCTeoError {
        TCTeoError(.invalidParameter_InvalidCertInfo)
    }

    /// ??????????????????IP????????????
    public static var invalidParameter_InvalidClientIpHeaderName: TCTeoError {
        TCTeoError(.invalidParameter_InvalidClientIpHeaderName)
    }

    /// ???????????????????????????????????????
    public static var invalidParameter_InvalidDynamicRoutineBilling: TCTeoError {
        TCTeoError(.invalidParameter_InvalidDynamicRoutineBilling)
    }

    /// ???????????????????????????
    public static var invalidParameter_InvalidFilterName: TCTeoError {
        TCTeoError(.invalidParameter_InvalidFilterName)
    }

    /// ???????????????HTTPS?????????
    public static var invalidParameter_InvalidForceRedirectType: TCTeoError {
        TCTeoError(.invalidParameter_InvalidForceRedirectType)
    }

    /// ??????????????????
    public static var invalidParameter_InvalidOrigin: TCTeoError {
        TCTeoError(.invalidParameter_InvalidOrigin)
    }

    /// ???????????????????????????????????????
    public static var invalidParameter_InvalidPostMaxSizeBilling: TCTeoError {
        TCTeoError(.invalidParameter_InvalidPostMaxSizeBilling)
    }

    /// ??????????????????????????????
    public static var invalidParameter_InvalidPostSizeValue: TCTeoError {
        TCTeoError(.invalidParameter_InvalidPostSizeValue)
    }

    /// ?????????URL?????????
    public static var invalidParameter_InvalidRedirectUrlCapture: TCTeoError {
        TCTeoError(.invalidParameter_InvalidRedirectUrlCapture)
    }

    /// ??????????????????header???
    public static var invalidParameter_InvalidRequestHeaderName: TCTeoError {
        TCTeoError(.invalidParameter_InvalidRequestHeaderName)
    }

    /// ??????????????????header???
    public static var invalidParameter_InvalidRequestHeaderValue: TCTeoError {
        TCTeoError(.invalidParameter_InvalidRequestHeaderValue)
    }

    /// ???????????????
    public static var invalidParameter_InvalidResourceIdBilling: TCTeoError {
        TCTeoError(.invalidParameter_InvalidResourceIdBilling)
    }

    /// ??????????????????header???
    public static var invalidParameter_InvalidResponseHeaderValue: TCTeoError {
        TCTeoError(.invalidParameter_InvalidResponseHeaderValue)
    }

    /// ??????????????????????????????
    public static var invalidParameter_InvalidRuleEngineAction: TCTeoError {
        TCTeoError(.invalidParameter_InvalidRuleEngineAction)
    }

    /// ??????????????????????????????
    public static var invalidParameter_InvalidRuleEngineTarget: TCTeoError {
        TCTeoError(.invalidParameter_InvalidRuleEngineTarget)
    }

    /// ??????????????????????????????????????????
    public static var invalidParameter_InvalidRuleEngineTargetsExtension: TCTeoError {
        TCTeoError(.invalidParameter_InvalidRuleEngineTargetsExtension)
    }

    /// URL???????????????URL?????????
    public static var invalidParameter_InvalidUrlRedirectUrl: TCTeoError {
        TCTeoError(.invalidParameter_InvalidUrlRedirectUrl)
    }

    /// ?????????WebSocket???
    public static var invalidParameter_InvalidWebSocketTimeout: TCTeoError {
        TCTeoError(.invalidParameter_InvalidWebSocketTimeout)
    }

    /// ???????????????
    public static var invalidParameter_ParameterError: TCTeoError {
        TCTeoError(.invalidParameter_ParameterError)
    }

    /// ?????????????????????
    public static var invalidParameter_Security: TCTeoError {
        TCTeoError(.invalidParameter_Security)
    }

    /// ?????????????????????
    ///
    /// ????????????-setting???????????????
    public static var invalidParameter_SettingInvalidParam: TCTeoError {
        TCTeoError(.invalidParameter_SettingInvalidParam)
    }

    /// ?????????????????????
    public static var invalidParameter_Target: TCTeoError {
        TCTeoError(.invalidParameter_Target)
    }

    /// ?????????????????????
    public static var invalidParameter_TaskNotGenerated: TCTeoError {
        TCTeoError(.invalidParameter_TaskNotGenerated)
    }

    /// ?????????????????????????????????
    public static var invalidParameter_UploadUrl: TCTeoError {
        TCTeoError(.invalidParameter_UploadUrl)
    }

    /// ??????????????????
    public static var invalidParameter_ZoneNotFound: TCTeoError {
        TCTeoError(.invalidParameter_ZoneNotFound)
    }

    /// ?????????????????????
    public static var limitExceeded: TCTeoError {
        TCTeoError(.limitExceeded)
    }

    /// ???????????????????????????????????????
    public static var limitExceeded_BatchQuota: TCTeoError {
        TCTeoError(.limitExceeded_BatchQuota)
    }

    /// ???????????????????????????????????????
    public static var limitExceeded_DailyQuota: TCTeoError {
        TCTeoError(.limitExceeded_DailyQuota)
    }

    /// ??????????????????
    public static var operationDenied: TCTeoError {
        TCTeoError(.operationDenied)
    }

    /// ?????????????????????
    public static var operationDenied_DomainNoICP: TCTeoError {
        TCTeoError(.operationDenied_DomainNoICP)
    }

    /// ??????????????????
    public static var resourceInUse: TCTeoError {
        TCTeoError(.resourceInUse)
    }

    /// ??????????????????????????????
    public static var resourceInUse_Others: TCTeoError {
        TCTeoError(.resourceInUse_Others)
    }

    /// ???????????????
    public static var resourceInsufficient: TCTeoError {
        TCTeoError(.resourceInsufficient)
    }

    /// ??????????????????
    public static var resourceNotFound: TCTeoError {
        TCTeoError(.resourceNotFound)
    }

    /// ??????????????????
    public static var resourceUnavailable: TCTeoError {
        TCTeoError(.resourceUnavailable)
    }

    /// ??????????????????????????????
    public static var resourceUnavailable_CertNotFound: TCTeoError {
        TCTeoError(.resourceUnavailable_CertNotFound)
    }

    /// ????????????????????????????????????
    public static var resourceUnavailable_HostNotFound: TCTeoError {
        TCTeoError(.resourceUnavailable_HostNotFound)
    }

    /// ???????????????????????????????????????
    public static var resourceUnavailable_ZoneNotFound: TCTeoError {
        TCTeoError(.resourceUnavailable_ZoneNotFound)
    }

    /// Cam ????????????
    public static var unauthorizedOperation_CamUnauthorized: TCTeoError {
        TCTeoError(.unauthorizedOperation_CamUnauthorized)
    }

    /// ???????????????
    public static var unauthorizedOperation_DomainEmpty: TCTeoError {
        TCTeoError(.unauthorizedOperation_DomainEmpty)
    }

    /// ???????????????????????????????????????????????????????????????
    public static var unauthorizedOperation_NoPermission: TCTeoError {
        TCTeoError(.unauthorizedOperation_NoPermission)
    }

    public func asTeoError() -> TCTeoError {
        return self
    }
}
