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

/// Service error type returned by `Vrs`.
public protocol TCVrsErrorType: TCServiceErrorType {
    /// Get the service error as ``TCVrsError``.
    ///
    /// - Returns: ``TCVrsError`` that holds the same error code and context.
    func asVrsError() -> TCVrsError
}

public struct TCVrsError: TCVrsErrorType {
    enum Code: String {
        case failedOperation_ErrorInvalidTaskStatus = "FailedOperation.ErrorInvalidTaskStatus"
        case failedOperation_NoSuchTask = "FailedOperation.NoSuchTask"
        case failedOperation_VoiceEvaluateFailed = "FailedOperation.VoiceEvaluateFailed"
        case failedOperation_VoiceNotQualified = "FailedOperation.VoiceNotQualified"
        case internalError_FailAccessDatabase = "InternalError.FailAccessDatabase"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue_AudioData = "InvalidParameterValue.AudioData"
        case invalidParameterValue_AudioDurationExceedsLimit = "InvalidParameterValue.AudioDurationExceedsLimit"
        case invalidParameterValue_Codec = "InvalidParameterValue.Codec"
        case invalidParameterValue_ErrorInvalidTaskId = "InvalidParameterValue.ErrorInvalidTaskId"
        case invalidParameterValue_SampleRate = "InvalidParameterValue.SampleRate"
        case invalidParameterValue_VoiceGender = "InvalidParameterValue.VoiceGender"
        case invalidParameterValue_VoiceLanguage = "InvalidParameterValue.VoiceLanguage"
        case invalidParameterValue_VoiceName = "InvalidParameterValue.VoiceName"
        case unsupportedOperation_VRSQuotaExhausted = "UnsupportedOperation.VRSQuotaExhausted"
    }

    /// Error domains affliated to ``TCVrsError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self, InternalError.self, InvalidParameterValue.self, UnsupportedOperation.self]
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

    public static var failedOperation_ErrorInvalidTaskStatus: TCVrsError {
        TCVrsError(.failedOperation_ErrorInvalidTaskStatus)
    }

    /// 任务不存在。
    public static var failedOperation_NoSuchTask: TCVrsError {
        TCVrsError(.failedOperation_NoSuchTask)
    }

    /// 检测失败。
    public static var failedOperation_VoiceEvaluateFailed: TCVrsError {
        TCVrsError(.failedOperation_VoiceEvaluateFailed)
    }

    /// 音频质量差。
    public static var failedOperation_VoiceNotQualified: TCVrsError {
        TCVrsError(.failedOperation_VoiceNotQualified)
    }

    public static var internalError_FailAccessDatabase: TCVrsError {
        TCVrsError(.internalError_FailAccessDatabase)
    }

    /// 参数错误。
    public static var invalidParameter: TCVrsError {
        TCVrsError(.invalidParameter)
    }

    /// 音频数据错误。
    public static var invalidParameterValue_AudioData: TCVrsError {
        TCVrsError(.invalidParameterValue_AudioData)
    }

    public static var invalidParameterValue_AudioDurationExceedsLimit: TCVrsError {
        TCVrsError(.invalidParameterValue_AudioDurationExceedsLimit)
    }

    /// Codec非法，请参考Codec参数说明。
    public static var invalidParameterValue_Codec: TCVrsError {
        TCVrsError(.invalidParameterValue_Codec)
    }

    public static var invalidParameterValue_ErrorInvalidTaskId: TCVrsError {
        TCVrsError(.invalidParameterValue_ErrorInvalidTaskId)
    }

    /// SampleRate非法，请参考SampleRate参数说明。
    public static var invalidParameterValue_SampleRate: TCVrsError {
        TCVrsError(.invalidParameterValue_SampleRate)
    }

    /// 音色性别错误。
    public static var invalidParameterValue_VoiceGender: TCVrsError {
        TCVrsError(.invalidParameterValue_VoiceGender)
    }

    /// 音色语言错误。
    public static var invalidParameterValue_VoiceLanguage: TCVrsError {
        TCVrsError(.invalidParameterValue_VoiceLanguage)
    }

    /// 音色名称错误。
    public static var invalidParameterValue_VoiceName: TCVrsError {
        TCVrsError(.invalidParameterValue_VoiceName)
    }

    /// 无声音复刻任务配额
    public static var unsupportedOperation_VRSQuotaExhausted: TCVrsError {
        TCVrsError(.unsupportedOperation_VRSQuotaExhausted)
    }

    public func asVrsError() -> TCVrsError {
        return self
    }
}