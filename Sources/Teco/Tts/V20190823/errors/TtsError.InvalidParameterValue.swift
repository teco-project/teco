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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

extension TCTtsError {
    public struct InvalidParameterValue: TCTtsErrorType {
        enum Code: String {
            case appId = "InvalidParameterValue.AppId"
            case appIdNotRegistered = "InvalidParameterValue.AppIdNotRegistered"
            case callbackUrl = "InvalidParameterValue.CallbackUrl"
            case codec = "InvalidParameterValue.Codec"
            case errorCardinalFormat = "InvalidParameterValue.ErrorCardinalFormat"
            case invalidText = "InvalidParameterValue.InvalidText"
            case missParameters = "InvalidParameterValue.MissParameters"
            case modelType = "InvalidParameterValue.ModelType"
            case participleError = "InvalidParameterValue.ParticipleError"
            case primaryLanguage = "InvalidParameterValue.PrimaryLanguage"
            case sampleRate = "InvalidParameterValue.SampleRate"
            case sessionId = "InvalidParameterValue.SessionId"
            case speed = "InvalidParameterValue.Speed"
            case ssmlInvalid = "InvalidParameterValue.SSMLInvalid"
            case text = "InvalidParameterValue.Text"
            case textEmpty = "InvalidParameterValue.TextEmpty"
            case textNotUtf8 = "InvalidParameterValue.TextNotUtf8"
            case textSsmlParseError = "InvalidParameterValue.TextSsmlParseError"
            case textTooLong = "InvalidParameterValue.TextTooLong"
            case type = "InvalidParameterValue.Type"
            case voiceType = "InvalidParameterValue.VoiceType"
            case volume = "InvalidParameterValue.Volume"
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

        /// AppId非法，请参考AppId参数说明。
        public static var appId: InvalidParameterValue {
            InvalidParameterValue(.appId)
        }

        /// APPID未注册，请在语音合成主页   https://console.cloud.tencent.com/tts  开通使用。
        public static var appIdNotRegistered: InvalidParameterValue {
            InvalidParameterValue(.appIdNotRegistered)
        }

        /// CallbackUrl非法或不可访问。
        public static var callbackUrl: InvalidParameterValue {
            InvalidParameterValue(.callbackUrl)
        }

        /// Codec非法，请参考Codec参数说明。
        public static var codec: InvalidParameterValue {
            InvalidParameterValue(.codec)
        }

        /// ssml的say-as标签属性为cardinal、currency、address时，数字部分非有效常数，仅允许包含数字、“,”、“.”和空格。
        public static var errorCardinalFormat: InvalidParameterValue {
            InvalidParameterValue(.errorCardinalFormat)
        }

        /// 请求文本含有非法字符，或请求文本没有有效字符。
        public static var invalidText: InvalidParameterValue {
            InvalidParameterValue(.invalidText)
        }

        /// 缺少参数。
        public static var missParameters: InvalidParameterValue {
            InvalidParameterValue(.missParameters)
        }

        /// ModelType非法。
        public static var modelType: InvalidParameterValue {
            InvalidParameterValue(.modelType)
        }

        /// 文本分词错误。
        ///
        /// 文本无效，请检查文本信息。
        public static var participleError: InvalidParameterValue {
            InvalidParameterValue(.participleError)
        }

        /// PrimaryLanguage非法，请参考PrimaryLanguage参数说明。
        public static var primaryLanguage: InvalidParameterValue {
            InvalidParameterValue(.primaryLanguage)
        }

        /// SampleRate非法，请参考SampleRate参数说明。
        public static var sampleRate: InvalidParameterValue {
            InvalidParameterValue(.sampleRate)
        }

        /// SessionId非法，请参考Volume参数说明。
        public static var sessionId: InvalidParameterValue {
            InvalidParameterValue(.sessionId)
        }

        /// Speed非法，请参考Speed参数说明。
        public static var speed: InvalidParameterValue {
            InvalidParameterValue(.speed)
        }

        /// SSML标签非法。
        ///
        /// 请检查SSML标签，修改文本内容。
        public static var ssmlInvalid: InvalidParameterValue {
            InvalidParameterValue(.ssmlInvalid)
        }

        /// 文本缺失。
        public static var text: InvalidParameterValue {
            InvalidParameterValue(.text)
        }

        /// Text为空。
        public static var textEmpty: InvalidParameterValue {
            InvalidParameterValue(.textEmpty)
        }

        /// 文本不是 UTF8 格式。
        public static var textNotUtf8: InvalidParameterValue {
            InvalidParameterValue(.textNotUtf8)
        }

        /// Text参数SSML语法错误，请参考SSML文档说明。
        public static var textSsmlParseError: InvalidParameterValue {
            InvalidParameterValue(.textSsmlParseError)
        }

        /// 合成文本字符过长。
        public static var textTooLong: InvalidParameterValue {
            InvalidParameterValue(.textTooLong)
        }

        /// Type 类型非法。
        public static var type: InvalidParameterValue {
            InvalidParameterValue(.type)
        }

        /// VoiceType非法，请参考VoiceType参数说明。
        public static var voiceType: InvalidParameterValue {
            InvalidParameterValue(.voiceType)
        }

        /// Volume非法，请参考Volume参数说明。
        public static var volume: InvalidParameterValue {
            InvalidParameterValue(.volume)
        }

        public func asTtsError() -> TCTtsError {
            let code: TCTtsError.Code
            switch self.error {
            case .appId:
                code = .invalidParameterValue_AppId
            case .appIdNotRegistered:
                code = .invalidParameterValue_AppIdNotRegistered
            case .callbackUrl:
                code = .invalidParameterValue_CallbackUrl
            case .codec:
                code = .invalidParameterValue_Codec
            case .errorCardinalFormat:
                code = .invalidParameterValue_ErrorCardinalFormat
            case .invalidText:
                code = .invalidParameterValue_InvalidText
            case .missParameters:
                code = .invalidParameterValue_MissParameters
            case .modelType:
                code = .invalidParameterValue_ModelType
            case .participleError:
                code = .invalidParameterValue_ParticipleError
            case .primaryLanguage:
                code = .invalidParameterValue_PrimaryLanguage
            case .sampleRate:
                code = .invalidParameterValue_SampleRate
            case .sessionId:
                code = .invalidParameterValue_SessionId
            case .speed:
                code = .invalidParameterValue_Speed
            case .ssmlInvalid:
                code = .invalidParameterValue_SSMLInvalid
            case .text:
                code = .invalidParameterValue_Text
            case .textEmpty:
                code = .invalidParameterValue_TextEmpty
            case .textNotUtf8:
                code = .invalidParameterValue_TextNotUtf8
            case .textSsmlParseError:
                code = .invalidParameterValue_TextSsmlParseError
            case .textTooLong:
                code = .invalidParameterValue_TextTooLong
            case .type:
                code = .invalidParameterValue_Type
            case .voiceType:
                code = .invalidParameterValue_VoiceType
            case .volume:
                code = .invalidParameterValue_Volume
            }
            return TCTtsError(code, context: self.context)
        }
    }
}
