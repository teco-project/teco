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

extension TCVrsError {
    public struct InvalidParameterValue: TCVrsErrorType {
        enum Code: String {
            case audioData = "InvalidParameterValue.AudioData"
            case audioDurationExceedsLimit = "InvalidParameterValue.AudioDurationExceedsLimit"
            case codec = "InvalidParameterValue.Codec"
            case errorInvalidTaskId = "InvalidParameterValue.ErrorInvalidTaskId"
            case sampleRate = "InvalidParameterValue.SampleRate"
            case voiceGender = "InvalidParameterValue.VoiceGender"
            case voiceLanguage = "InvalidParameterValue.VoiceLanguage"
            case voiceName = "InvalidParameterValue.VoiceName"
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

        /// 音频数据错误。
        public static var audioData: InvalidParameterValue {
            InvalidParameterValue(.audioData)
        }

        public static var audioDurationExceedsLimit: InvalidParameterValue {
            InvalidParameterValue(.audioDurationExceedsLimit)
        }

        /// Codec非法，请参考Codec参数说明。
        public static var codec: InvalidParameterValue {
            InvalidParameterValue(.codec)
        }

        public static var errorInvalidTaskId: InvalidParameterValue {
            InvalidParameterValue(.errorInvalidTaskId)
        }

        /// SampleRate非法，请参考SampleRate参数说明。
        public static var sampleRate: InvalidParameterValue {
            InvalidParameterValue(.sampleRate)
        }

        /// 音色性别错误。
        public static var voiceGender: InvalidParameterValue {
            InvalidParameterValue(.voiceGender)
        }

        /// 音色语言错误。
        public static var voiceLanguage: InvalidParameterValue {
            InvalidParameterValue(.voiceLanguage)
        }

        /// 音色名称错误。
        public static var voiceName: InvalidParameterValue {
            InvalidParameterValue(.voiceName)
        }

        public func asVrsError() -> TCVrsError {
            let code: TCVrsError.Code
            switch self.error {
            case .audioData:
                code = .invalidParameterValue_AudioData
            case .audioDurationExceedsLimit:
                code = .invalidParameterValue_AudioDurationExceedsLimit
            case .codec:
                code = .invalidParameterValue_Codec
            case .errorInvalidTaskId:
                code = .invalidParameterValue_ErrorInvalidTaskId
            case .sampleRate:
                code = .invalidParameterValue_SampleRate
            case .voiceGender:
                code = .invalidParameterValue_VoiceGender
            case .voiceLanguage:
                code = .invalidParameterValue_VoiceLanguage
            case .voiceName:
                code = .invalidParameterValue_VoiceName
            }
            return TCVrsError(code, context: self.context)
        }
    }
}
