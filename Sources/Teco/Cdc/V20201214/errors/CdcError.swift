//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

/// Service error type returned by `Cdc`.
public protocol TCCdcErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCCdcError``.
    ///
    /// - Returns: ``TCCdcError`` that holds the same error code and context.
    func asCdcError() -> TCCdcError
}

public struct TCCdcError: TCCdcErrorType {
    enum Code: String {
        case failedOperation_CdcBindVpcFail = "FailedOperation.CdcBindVpcFail"
        case failedOperation_FailDeleteSite = "FailedOperation.FailDeleteSite"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_InvalidAppIdFormat = "InvalidParameterValue.InvalidAppIdFormat"
        case invalidParameterValue_InvalidValueDedicatedClusterCosSize = "InvalidParameterValue.InvalidValueDedicatedClusterCosSize"
        case invalidParameterValue_InvalidValueDedicatedClusterDataStepSize = "InvalidParameterValue.InvalidValueDedicatedClusterDataStepSize"
        case invalidParameterValue_InvalidValueRegion = "InvalidParameterValue.InvalidValueRegion"
        case invalidParameterValue_LimitExceeded = "InvalidParameterValue.LimitExceeded"
        case invalidParameterValue_Region = "InvalidParameterValue.Region"
        case invalidParameterValue_TooLong = "InvalidParameterValue.TooLong"
        case invalidParameterValue_ZoneMismatchRegion = "InvalidParameterValue.ZoneMismatchRegion"
        case invalidParameterValue_ZoneNotSupported = "InvalidParameterValue.ZoneNotSupported"
        case invalidParameter_InstanceTypeNotSupport = "InvalidParameter.InstanceTypeNotSupport"
        case missingParameter = "MissingParameter"
        case missingParameter_AtLeastOne = "MissingParameter.AtLeastOne"
        case resourceInsufficient_CloudDiskUnavailable = "ResourceInsufficient.CloudDiskUnavailable"
        case resourceNotFound_InvalidDedicatedClusterId = "ResourceNotFound.InvalidDedicatedClusterId"
        case resourceNotFound_InvalidDedicatedClusterOrderId = "ResourceNotFound.InvalidDedicatedClusterOrderId"
        case resourceNotFound_InvalidDedicatedClusterTypeId = "ResourceNotFound.InvalidDedicatedClusterTypeId"
        case resourceNotFound_InvalidSiteId = "ResourceNotFound.InvalidSiteId"
        case unsupportedOperation_NonCustomerAppIdNotSupport = "UnsupportedOperation.NonCustomerAppIdNotSupport"
    }

    /// Error domains affliated to ``TCCdcError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self, InvalidParameter.self, InvalidParameterValue.self, MissingParameter.self, ResourceInsufficient.self, ResourceNotFound.self, UnsupportedOperation.self]
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

    public static var failedOperation_CdcBindVpcFail: TCCdcError {
        TCCdcError(.failedOperation_CdcBindVpcFail)
    }

    /// 删除site失败。
    ///
    /// site删除失败，因为还存在某些其它的cluster。
    public static var failedOperation_FailDeleteSite: TCCdcError {
        TCCdcError(.failedOperation_FailDeleteSite)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCCdcError {
        TCCdcError(.invalidParameterValue)
    }

    /// ccdb返回结果不为0。
    ///
    /// CCDB执行错误，请检查
    public static var invalidParameterValue_InvalidAppIdFormat: TCCdcError {
        TCCdcError(.invalidParameterValue_InvalidAppIdFormat)
    }

    /// 本地专用集群COS大小不正确。
    ///
    /// 它必须是40/60/80/100TB，或者(100 + 20*x)TB
    public static var invalidParameterValue_InvalidValueDedicatedClusterCosSize: TCCdcError {
        TCCdcError(.invalidParameterValue_InvalidValueDedicatedClusterCosSize)
    }

    /// CBS大小不正确，它必须是40的整数倍。
    ///
    /// CBS大小不正确，它必须是40的整数倍
    public static var invalidParameterValue_InvalidValueDedicatedClusterDataStepSize: TCCdcError {
        TCCdcError(.invalidParameterValue_InvalidValueDedicatedClusterDataStepSize)
    }

    /// region无效。
    ///
    /// region无效
    public static var invalidParameterValue_InvalidValueRegion: TCCdcError {
        TCCdcError(.invalidParameterValue_InvalidValueRegion)
    }

    /// 超出大小限制。
    ///
    /// 超出大小限制
    public static var invalidParameterValue_LimitExceeded: TCCdcError {
        TCCdcError(.invalidParameterValue_LimitExceeded)
    }

    /// 请确认Region ID 是否存在。
    public static var invalidParameterValue_Region: TCCdcError {
        TCCdcError(.invalidParameterValue_Region)
    }

    /// 参数名过长。
    ///
    /// 参数名过长
    public static var invalidParameterValue_TooLong: TCCdcError {
        TCCdcError(.invalidParameterValue_TooLong)
    }

    /// zone和region不匹配。
    public static var invalidParameterValue_ZoneMismatchRegion: TCCdcError {
        TCCdcError(.invalidParameterValue_ZoneMismatchRegion)
    }

    /// 当前可用区暂未支持。
    public static var invalidParameterValue_ZoneNotSupported: TCCdcError {
        TCCdcError(.invalidParameterValue_ZoneNotSupported)
    }

    /// 该机型暂不支持。
    public static var invalidParameter_InstanceTypeNotSupport: TCCdcError {
        TCCdcError(.invalidParameter_InstanceTypeNotSupport)
    }

    /// 缺少参数错误。
    public static var missingParameter: TCCdcError {
        TCCdcError(.missingParameter)
    }

    /// 至少输入一个入参。
    public static var missingParameter_AtLeastOne: TCCdcError {
        TCCdcError(.missingParameter_AtLeastOne)
    }

    /// 云硬盘余量不足。
    public static var resourceInsufficient_CloudDiskUnavailable: TCCdcError {
        TCCdcError(.resourceInsufficient_CloudDiskUnavailable)
    }

    /// 该资源没有找到。
    ///
    /// 请确认资源是否正确
    public static var resourceNotFound_InvalidDedicatedClusterId: TCCdcError {
        TCCdcError(.resourceNotFound_InvalidDedicatedClusterId)
    }

    /// 请确认资源ID 是否存在。
    public static var resourceNotFound_InvalidDedicatedClusterOrderId: TCCdcError {
        TCCdcError(.resourceNotFound_InvalidDedicatedClusterOrderId)
    }

    /// 该资源没有找到。
    ///
    /// 请确认该资源是否存在
    public static var resourceNotFound_InvalidDedicatedClusterTypeId: TCCdcError {
        TCCdcError(.resourceNotFound_InvalidDedicatedClusterTypeId)
    }

    /// 站点机房无效。
    ///
    /// 请确认站点机房是否存在
    public static var resourceNotFound_InvalidSiteId: TCCdcError {
        TCCdcError(.resourceNotFound_InvalidSiteId)
    }

    /// 不支持非CUSTOMER类型的app id。
    ///
    /// 传入CUSTOMER类型的app id
    public static var unsupportedOperation_NonCustomerAppIdNotSupport: TCCdcError {
        TCCdcError(.unsupportedOperation_NonCustomerAppIdNotSupport)
    }

    public func asCdcError() -> TCCdcError {
        return self
    }
}
