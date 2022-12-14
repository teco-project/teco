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

/// Service error type returned by `Tiia`.
public protocol TCTiiaErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCTiiaError``.
    ///
    /// - Returns: ``TCTiiaError`` that holds the same error code and context.
    func asTiiaError() -> TCTiiaError
}

public struct TCTiiaError: TCTiiaErrorType {
    enum Code: String {
        case authFailure_InvalidAuthorization = "AuthFailure.InvalidAuthorization"
        case failedOperation_BalanceInsufficient = "FailedOperation.BalanceInsufficient"
        case failedOperation_DownLoadError = "FailedOperation.DownLoadError"
        case failedOperation_DownloadError = "FailedOperation.DownloadError"
        case failedOperation_EmptyImageError = "FailedOperation.EmptyImageError"
        case failedOperation_ImageDecodeFailed = "FailedOperation.ImageDecodeFailed"
        case failedOperation_ImageDeleteFailed = "FailedOperation.ImageDeleteFailed"
        case failedOperation_ImageDownloadError = "FailedOperation.ImageDownloadError"
        case failedOperation_ImageEntityCountExceed = "FailedOperation.ImageEntityCountExceed"
        case failedOperation_ImageGroupEmpty = "FailedOperation.ImageGroupEmpty"
        case failedOperation_ImageNotFoundInfo = "FailedOperation.ImageNotFoundInfo"
        case failedOperation_ImageNotSupported = "FailedOperation.ImageNotSupported"
        case failedOperation_ImageNumExceed = "FailedOperation.ImageNumExceed"
        case failedOperation_ImageResolutionExceed = "FailedOperation.ImageResolutionExceed"
        case failedOperation_ImageSearchInvalid = "FailedOperation.ImageSearchInvalid"
        case failedOperation_ImageSizeExceed = "FailedOperation.ImageSizeExceed"
        case failedOperation_ImageUnQualified = "FailedOperation.ImageUnQualified"
        case failedOperation_ImageUrlInvalid = "FailedOperation.ImageUrlInvalid"
        case failedOperation_InnerError = "FailedOperation.InnerError"
        case failedOperation_InvokeChargeError = "FailedOperation.InvokeChargeError"
        case failedOperation_NoBodyInPhoto = "FailedOperation.NoBodyInPhoto"
        case failedOperation_NoObjectDetected = "FailedOperation.NoObjectDetected"
        case failedOperation_ParameterEmpty = "FailedOperation.ParameterEmpty"
        case failedOperation_RecognizeFailded = "FailedOperation.RecognizeFailded"
        case failedOperation_RequestError = "FailedOperation.RequestError"
        case failedOperation_RequestTimeout = "FailedOperation.RequestTimeout"
        case failedOperation_RpcFail = "FailedOperation.RpcFail"
        case failedOperation_ServerError = "FailedOperation.ServerError"
        case failedOperation_TooLargeFileError = "FailedOperation.TooLargeFileError"
        case failedOperation_UnKnowError = "FailedOperation.UnKnowError"
        case failedOperation_UnOpenError = "FailedOperation.UnOpenError"
        case failedOperation_Unknown = "FailedOperation.Unknown"
        case invalidParameterValue_BriefTooLong = "InvalidParameterValue.BriefTooLong"
        case invalidParameterValue_CustomContentTooLong = "InvalidParameterValue.CustomContentTooLong"
        case invalidParameterValue_EntityIdEmpty = "InvalidParameterValue.EntityIdEmpty"
        case invalidParameterValue_EntityIdTooLong = "InvalidParameterValue.EntityIdTooLong"
        case invalidParameterValue_FilterInvalid = "InvalidParameterValue.FilterInvalid"
        case invalidParameterValue_FilterSizeExceed = "InvalidParameterValue.FilterSizeExceed"
        case invalidParameterValue_ImageEmpty = "InvalidParameterValue.ImageEmpty"
        case invalidParameterValue_ImageGroupIdAlreadyExist = "InvalidParameterValue.ImageGroupIdAlreadyExist"
        case invalidParameterValue_ImageGroupIdIllegal = "InvalidParameterValue.ImageGroupIdIllegal"
        case invalidParameterValue_ImageGroupIdNotExist = "InvalidParameterValue.ImageGroupIdNotExist"
        case invalidParameterValue_ImageGroupIdTooLong = "InvalidParameterValue.ImageGroupIdTooLong"
        case invalidParameterValue_ImageGroupNameEmpty = "InvalidParameterValue.ImageGroupNameEmpty"
        case invalidParameterValue_ImageGroupNameTooLong = "InvalidParameterValue.ImageGroupNameTooLong"
        case invalidParameterValue_InvalidParameterValueLimit = "InvalidParameterValue.InvalidParameterValueLimit"
        case invalidParameterValue_LimitExceed = "InvalidParameterValue.LimitExceed"
        case invalidParameterValue_PicNameAlreadyExist = "InvalidParameterValue.PicNameAlreadyExist"
        case invalidParameterValue_PicNameEmpty = "InvalidParameterValue.PicNameEmpty"
        case invalidParameterValue_PicNameTooLong = "InvalidParameterValue.PicNameTooLong"
        case invalidParameterValue_TagsKeysExceed = "InvalidParameterValue.TagsKeysExceed"
        case invalidParameterValue_TagsValueIllegal = "InvalidParameterValue.TagsValueIllegal"
        case invalidParameterValue_TagsValueSizeExceed = "InvalidParameterValue.TagsValueSizeExceed"
        case invalidParameterValue_UrlIllegal = "InvalidParameterValue.UrlIllegal"
        case invalidParameter_ImageFormatNotSupport = "InvalidParameter.ImageFormatNotSupport"
        case invalidParameter_InvalidParameter = "InvalidParameter.InvalidParameter"
        case limitExceeded_TooLargeFileError = "LimitExceeded.TooLargeFileError"
        case missingParameter_ErrorParameterEmpty = "MissingParameter.ErrorParameterEmpty"
        case resourceUnavailable_InArrears = "ResourceUnavailable.InArrears"
        case resourceUnavailable_IsOpening = "ResourceUnavailable.IsOpening"
        case resourceUnavailable_NotExist = "ResourceUnavailable.NotExist"
        case resourcesSoldOut_ChargeStatusException = "ResourcesSoldOut.ChargeStatusException"
    }

    /// Error domains affliated to ``TCTiiaError``.
    public static var domains: [TCErrorType.Type] {
        [AuthFailure.self, FailedOperation.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, MissingParameter.self, ResourceUnavailable.self, ResourcesSoldOut.self]
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

    /// ???????????????
    public static var authFailure_InvalidAuthorization: TCTiiaError {
        TCTiiaError(.authFailure_InvalidAuthorization)
    }

    /// ??????????????????????????????????????????????????????
    public static var failedOperation_BalanceInsufficient: TCTiiaError {
        TCTiiaError(.failedOperation_BalanceInsufficient)
    }

    /// ?????????????????????
    public static var failedOperation_DownLoadError: TCTiiaError {
        TCTiiaError(.failedOperation_DownLoadError)
    }

    /// ?????????????????????
    public static var failedOperation_DownloadError: TCTiiaError {
        TCTiiaError(.failedOperation_DownloadError)
    }

    /// ?????????????????????
    public static var failedOperation_EmptyImageError: TCTiiaError {
        TCTiiaError(.failedOperation_EmptyImageError)
    }

    /// ?????????????????????
    public static var failedOperation_ImageDecodeFailed: TCTiiaError {
        TCTiiaError(.failedOperation_ImageDecodeFailed)
    }

    /// ?????????????????????
    public static var failedOperation_ImageDeleteFailed: TCTiiaError {
        TCTiiaError(.failedOperation_ImageDeleteFailed)
    }

    /// ?????????????????????
    public static var failedOperation_ImageDownloadError: TCTiiaError {
        TCTiiaError(.failedOperation_ImageDownloadError)
    }

    /// ??????Entity???????????????
    public static var failedOperation_ImageEntityCountExceed: TCTiiaError {
        TCTiiaError(.failedOperation_ImageEntityCountExceed)
    }

    /// ???????????????
    public static var failedOperation_ImageGroupEmpty: TCTiiaError {
        TCTiiaError(.failedOperation_ImageGroupEmpty)
    }

    /// ????????????????????????
    public static var failedOperation_ImageNotFoundInfo: TCTiiaError {
        TCTiiaError(.failedOperation_ImageNotFoundInfo)
    }

    /// ???????????????????????????
    public static var failedOperation_ImageNotSupported: TCTiiaError {
        TCTiiaError(.failedOperation_ImageNotSupported)
    }

    /// ?????????????????????
    public static var failedOperation_ImageNumExceed: TCTiiaError {
        TCTiiaError(.failedOperation_ImageNumExceed)
    }

    /// ????????????????????????
    public static var failedOperation_ImageResolutionExceed: TCTiiaError {
        TCTiiaError(.failedOperation_ImageResolutionExceed)
    }

    /// ?????????????????????
    public static var failedOperation_ImageSearchInvalid: TCTiiaError {
        TCTiiaError(.failedOperation_ImageSearchInvalid)
    }

    /// base64?????????????????????????????????
    public static var failedOperation_ImageSizeExceed: TCTiiaError {
        TCTiiaError(.failedOperation_ImageSizeExceed)
    }

    /// ??????????????????????????????
    public static var failedOperation_ImageUnQualified: TCTiiaError {
        TCTiiaError(.failedOperation_ImageUnQualified)
    }

    /// url?????????????????????????????????
    public static var failedOperation_ImageUrlInvalid: TCTiiaError {
        TCTiiaError(.failedOperation_ImageUrlInvalid)
    }

    /// ???????????????
    public static var failedOperation_InnerError: TCTiiaError {
        TCTiiaError(.failedOperation_InnerError)
    }

    /// ???????????????????????????
    public static var failedOperation_InvokeChargeError: TCTiiaError {
        TCTiiaError(.failedOperation_InvokeChargeError)
    }

    public static var failedOperation_NoBodyInPhoto: TCTiiaError {
        TCTiiaError(.failedOperation_NoBodyInPhoto)
    }

    /// ?????????????????????
    public static var failedOperation_NoObjectDetected: TCTiiaError {
        TCTiiaError(.failedOperation_NoObjectDetected)
    }

    /// ???????????????
    public static var failedOperation_ParameterEmpty: TCTiiaError {
        TCTiiaError(.failedOperation_ParameterEmpty)
    }

    /// ?????????????????????
    public static var failedOperation_RecognizeFailded: TCTiiaError {
        TCTiiaError(.failedOperation_RecognizeFailded)
    }

    /// ???????????????????????????
    public static var failedOperation_RequestError: TCTiiaError {
        TCTiiaError(.failedOperation_RequestError)
    }

    /// ?????????????????????
    public static var failedOperation_RequestTimeout: TCTiiaError {
        TCTiiaError(.failedOperation_RequestTimeout)
    }

    /// RPC????????????????????????????????????????????????
    public static var failedOperation_RpcFail: TCTiiaError {
        TCTiiaError(.failedOperation_RpcFail)
    }

    /// ?????????????????????????????????
    public static var failedOperation_ServerError: TCTiiaError {
        TCTiiaError(.failedOperation_ServerError)
    }

    /// ???????????????
    public static var failedOperation_TooLargeFileError: TCTiiaError {
        TCTiiaError(.failedOperation_TooLargeFileError)
    }

    /// ???????????????
    public static var failedOperation_UnKnowError: TCTiiaError {
        TCTiiaError(.failedOperation_UnKnowError)
    }

    /// ??????????????????
    public static var failedOperation_UnOpenError: TCTiiaError {
        TCTiiaError(.failedOperation_UnOpenError)
    }

    /// ???????????????
    public static var failedOperation_Unknown: TCTiiaError {
        TCTiiaError(.failedOperation_Unknown)
    }

    /// ?????????????????????
    public static var invalidParameterValue_BriefTooLong: TCTiiaError {
        TCTiiaError(.invalidParameterValue_BriefTooLong)
    }

    /// ????????????????????????
    public static var invalidParameterValue_CustomContentTooLong: TCTiiaError {
        TCTiiaError(.invalidParameterValue_CustomContentTooLong)
    }

    /// ??????ID?????????
    public static var invalidParameterValue_EntityIdEmpty: TCTiiaError {
        TCTiiaError(.invalidParameterValue_EntityIdEmpty)
    }

    /// ??????ID?????????????????????
    public static var invalidParameterValue_EntityIdTooLong: TCTiiaError {
        TCTiiaError(.invalidParameterValue_EntityIdTooLong)
    }

    /// Filter??????????????????
    public static var invalidParameterValue_FilterInvalid: TCTiiaError {
        TCTiiaError(.invalidParameterValue_FilterInvalid)
    }

    /// Filter???????????????
    public static var invalidParameterValue_FilterSizeExceed: TCTiiaError {
        TCTiiaError(.invalidParameterValue_FilterSizeExceed)
    }

    /// ???????????????
    public static var invalidParameterValue_ImageEmpty: TCTiiaError {
        TCTiiaError(.invalidParameterValue_ImageEmpty)
    }

    /// ??????ID????????????
    public static var invalidParameterValue_ImageGroupIdAlreadyExist: TCTiiaError {
        TCTiiaError(.invalidParameterValue_ImageGroupIdAlreadyExist)
    }

    /// ??????ID????????????
    public static var invalidParameterValue_ImageGroupIdIllegal: TCTiiaError {
        TCTiiaError(.invalidParameterValue_ImageGroupIdIllegal)
    }

    /// ??????ID????????????
    public static var invalidParameterValue_ImageGroupIdNotExist: TCTiiaError {
        TCTiiaError(.invalidParameterValue_ImageGroupIdNotExist)
    }

    /// ??????ID?????????????????????
    public static var invalidParameterValue_ImageGroupIdTooLong: TCTiiaError {
        TCTiiaError(.invalidParameterValue_ImageGroupIdTooLong)
    }

    /// ?????????????????????
    public static var invalidParameterValue_ImageGroupNameEmpty: TCTiiaError {
        TCTiiaError(.invalidParameterValue_ImageGroupNameEmpty)
    }

    /// ?????????????????????????????????
    public static var invalidParameterValue_ImageGroupNameTooLong: TCTiiaError {
        TCTiiaError(.invalidParameterValue_ImageGroupNameTooLong)
    }

    /// ??????????????????
    public static var invalidParameterValue_InvalidParameterValueLimit: TCTiiaError {
        TCTiiaError(.invalidParameterValue_InvalidParameterValueLimit)
    }

    /// ????????????????????????????????????
    public static var invalidParameterValue_LimitExceed: TCTiiaError {
        TCTiiaError(.invalidParameterValue_LimitExceed)
    }

    /// ?????????????????????
    public static var invalidParameterValue_PicNameAlreadyExist: TCTiiaError {
        TCTiiaError(.invalidParameterValue_PicNameAlreadyExist)
    }

    /// ?????????????????????
    public static var invalidParameterValue_PicNameEmpty: TCTiiaError {
        TCTiiaError(.invalidParameterValue_PicNameEmpty)
    }

    /// ?????????????????????????????????
    public static var invalidParameterValue_PicNameTooLong: TCTiiaError {
        TCTiiaError(.invalidParameterValue_PicNameTooLong)
    }

    /// ?????????????????????
    public static var invalidParameterValue_TagsKeysExceed: TCTiiaError {
        TCTiiaError(.invalidParameterValue_TagsKeysExceed)
    }

    /// ???????????????????????????
    public static var invalidParameterValue_TagsValueIllegal: TCTiiaError {
        TCTiiaError(.invalidParameterValue_TagsValueIllegal)
    }

    /// ????????????????????????
    public static var invalidParameterValue_TagsValueSizeExceed: TCTiiaError {
        TCTiiaError(.invalidParameterValue_TagsValueSizeExceed)
    }

    /// URL??????????????????
    public static var invalidParameterValue_UrlIllegal: TCTiiaError {
        TCTiiaError(.invalidParameterValue_UrlIllegal)
    }

    public static var invalidParameter_ImageFormatNotSupport: TCTiiaError {
        TCTiiaError(.invalidParameter_ImageFormatNotSupport)
    }

    /// ?????????????????????
    public static var invalidParameter_InvalidParameter: TCTiiaError {
        TCTiiaError(.invalidParameter_InvalidParameter)
    }

    /// ???????????????
    public static var limitExceeded_TooLargeFileError: TCTiiaError {
        TCTiiaError(.limitExceeded_TooLargeFileError)
    }

    /// ?????????????????????
    public static var missingParameter_ErrorParameterEmpty: TCTiiaError {
        TCTiiaError(.missingParameter_ErrorParameterEmpty)
    }

    /// ??????????????????
    public static var resourceUnavailable_InArrears: TCTiiaError {
        TCTiiaError(.resourceUnavailable_InArrears)
    }

    /// ????????????????????????????????????
    public static var resourceUnavailable_IsOpening: TCTiiaError {
        TCTiiaError(.resourceUnavailable_IsOpening)
    }

    /// ??????????????????????????????????????????????????????????????????
    public static var resourceUnavailable_NotExist: TCTiiaError {
        TCTiiaError(.resourceUnavailable_NotExist)
    }

    /// ?????????????????????
    public static var resourcesSoldOut_ChargeStatusException: TCTiiaError {
        TCTiiaError(.resourcesSoldOut_ChargeStatusException)
    }

    public func asTiiaError() -> TCTiiaError {
        return self
    }
}
