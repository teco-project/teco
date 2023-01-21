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

extension TCSoeError {
    public struct InvalidParameterValue: TCSoeErrorType {
        enum Code: String {
            case audioDataSizeLimitExceeded = "InvalidParameterValue.AudioDataSizeLimitExceeded"
            case audioDecodeFailed = "InvalidParameterValue.AudioDecodeFailed"
            case audioLimitExceeded = "InvalidParameterValue.AudioLimitExceeded"
            case audioSizeMustBeEven = "InvalidParameterValue.AudioSizeMustBeEven"
            case baseDecodeFailed = "InvalidParameterValue.BASEDecodeFailed"
            case invalidSeqId = "InvalidParameterValue.InvalidSeqId"
            case invalidWAVHeader = "InvalidParameterValue.InvalidWAVHeader"
            case noDocInList = "InvalidParameterValue.NoDocInList"
            case parameterInvalid = "InvalidParameterValue.ParameterInvalid"
            case refTextEmpty = "InvalidParameterValue.RefTextEmpty"
            case refTextGrammarError = "InvalidParameterValue.RefTextGrammarError"
            case refTextLimitExceeded = "InvalidParameterValue.RefTextLimitExceeded"
            case refTextOOV = "InvalidParameterValue.RefTextOOV"
            case refTextPolyphonicLimitExceeded = "InvalidParameterValue.RefTextPolyphonicLimitExceeded"
            case refTxtEmpty = "InvalidParameterValue.RefTxtEmpty"
            case refTxtTooLang = "InvalidParameterValue.RefTxtTooLang"
            case sensitiveWords = "InvalidParameterValue.SensitiveWords"
            case sessionIdInUse = "InvalidParameterValue.SessionIdInUse"
            case shardNoStartWithOne = "InvalidParameterValue.ShardNoStartWithOne"
            case streamingvoicepkgTimeout = "InvalidParameterValue.StreamingvoicepkgTimeout"
            case vadNotDetectedSpeak = "InvalidParameterValue.VadNotDetectedSpeak"
            case voiceFileTypeNotFound = "InvalidParameterValue.VoiceFileTypeNotFound"
            case voiceLengthTooLong = "InvalidParameterValue.VoiceLengthTooLong"
            case wavHeaderDecodeFailed = "InvalidParameterValue.WAVHeaderDecodeFailed"
            case wordLengthTooLong = "InvalidParameterValue.WordLengthTooLong"
            case other = "InvalidParameterValue"
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

        /// 输入分片音频大小超过最大限制，请调整分片大小后重新传输数据。
        ///
        /// 请调整分片大小后重新传输数据。
        public static var audioDataSizeLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.audioDataSizeLimitExceeded)
        }

        /// 音频数据解码失败，请参考API文档中音频要求检查音频数据格式设置是否正确后重新传输数据。
        ///
        /// 请参考API文档中音频要求检查音频数据格式设置是否正确后重新传输数据。
        public static var audioDecodeFailed: InvalidParameterValue {
            InvalidParameterValue(.audioDecodeFailed)
        }

        /// 输入音频时长超过限制，请结束本次评测，后续请根据评测模式设置音频时长限制。
        ///
        /// 输入音频时长超过限制，请结束本次评测，后续请根据评测模式设置音频时长限制。https://cloud.tencent.com/document/product/884/19310
        public static var audioLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.audioLimitExceeded)
        }

        /// 输入音频异常，音频数据指针或音频⻓度必须为偶数，请参考API文档检查音频数据是否正确后重新传输数据。
        public static var audioSizeMustBeEven: InvalidParameterValue {
            InvalidParameterValue(.audioSizeMustBeEven)
        }

        /// BASE64解码错误。
        public static var baseDecodeFailed: InvalidParameterValue {
            InvalidParameterValue(.baseDecodeFailed)
        }

        /// 分片序号错误。
        public static var invalidSeqId: InvalidParameterValue {
            InvalidParameterValue(.invalidSeqId)
        }

        /// WAV头部格式非法或不在同一分片内。
        public static var invalidWAVHeader: InvalidParameterValue {
            InvalidParameterValue(.invalidWAVHeader)
        }

        /// 表单中没有文件。
        public static var noDocInList: InvalidParameterValue {
            InvalidParameterValue(.noDocInList)
        }

        /// 参数值无效，请检查ScoreCoeff参数输入是否在限制内。
        public static var parameterInvalid: InvalidParameterValue {
            InvalidParameterValue(.parameterInvalid)
        }

        /// 请求参数RefText无效或参考文本为空，请检查RefText是否为空。
        ///
        /// 请检查RefText是否为空。https://cloud.tencent.com/document/product/884/19310
        public static var refTextEmpty: InvalidParameterValue {
            InvalidParameterValue(.refTextEmpty)
        }

        /// 请求参数RefText语法错误，请参考API文档检查文本格式，尤其是指定发音格式是否正确。
        ///
        /// 请求参数RefText语法错误，请参考API文档检查文本格式确认正确后重试，尤其是指定发音格式是否正确。https://cloud.tencent.com/document/product/884/33698
        public static var refTextGrammarError: InvalidParameterValue {
            InvalidParameterValue(.refTextGrammarError)
        }

        /// 请求参数RefText的字数超过最大限制，请根据评测模式调整字数后重新初始化。
        ///
        /// 请参考API文档检查参数RefText的字数限制。https://cloud.tencent.com/document/product/884/19310
        public static var refTextLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.refTextLimitExceeded)
        }

        /// 请求参数RefText包含OOV词汇，请使用指定发音或联系我们处理。
        ///
        /// 请使用指定发音或联系我们处理。https://cloud.tencent.com/document/product/884/19310
        public static var refTextOOV: InvalidParameterValue {
            InvalidParameterValue(.refTextOOV)
        }

        /// 请检查参考文本中是否包含大量多音字，可通过发音描述块指定标准发音解决。
        ///
        /// 可通过发音描述块指定标准发音解决。
        public static var refTextPolyphonicLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.refTextPolyphonicLimitExceeded)
        }

        /// 输入文本为空。
        public static var refTxtEmpty: InvalidParameterValue {
            InvalidParameterValue(.refTxtEmpty)
        }

        /// 输入文本太长。
        public static var refTxtTooLang: InvalidParameterValue {
            InvalidParameterValue(.refTxtTooLang)
        }

        /// 请求内容包含违禁词汇，请检查后重试。
        public static var sensitiveWords: InvalidParameterValue {
            InvalidParameterValue(.sensitiveWords)
        }

        /// SessionId已存在，建议使用uuid作为SessionId重新初始化。
        ///
        /// 建议使用uuid作为SessionId重新初始化。https://cloud.tencent.com/document/product/884/19310
        public static var sessionIdInUse: InvalidParameterValue {
            InvalidParameterValue(.sessionIdInUse)
        }

        /// 分片序号错误应该从1开始。
        public static var shardNoStartWithOne: InvalidParameterValue {
            InvalidParameterValue(.shardNoStartWithOne)
        }

        /// 流式语音包超时。
        public static var streamingvoicepkgTimeout: InvalidParameterValue {
            InvalidParameterValue(.streamingvoicepkgTimeout)
        }

        /// 没有检测到语音。
        public static var vadNotDetectedSpeak: InvalidParameterValue {
            InvalidParameterValue(.vadNotDetectedSpeak)
        }

        /// 语音文件格式参数VoiceFileType取值错误，请参考API文档检查语音文件格式VoiceFileType是否正确后重新传输数据。
        ///
        /// 语音文件格式参数VoiceFileType取值错误，请参考API文档检查语音文件格式VoiceFileType是否正确后重新传输数据。
        /// https://cloud.tencent.com/document/product/884/32605
        public static var voiceFileTypeNotFound: InvalidParameterValue {
            InvalidParameterValue(.voiceFileTypeNotFound)
        }

        /// 音频超过长度限制，要求音频大小不能超过3Mb。
        public static var voiceLengthTooLong: InvalidParameterValue {
            InvalidParameterValue(.voiceLengthTooLong)
        }

        /// WAV格式的音频数据第一个分片的数据长度小于44，头部数据不合法，请检查后重试。
        public static var wavHeaderDecodeFailed: InvalidParameterValue {
            InvalidParameterValue(.wavHeaderDecodeFailed)
        }

        /// 文本单词超过限制。
        public static var wordLengthTooLong: InvalidParameterValue {
            InvalidParameterValue(.wordLengthTooLong)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asSoeError() -> TCSoeError {
            let code: TCSoeError.Code
            switch self.error {
            case .audioDataSizeLimitExceeded:
                code = .invalidParameterValue_AudioDataSizeLimitExceeded
            case .audioDecodeFailed:
                code = .invalidParameterValue_AudioDecodeFailed
            case .audioLimitExceeded:
                code = .invalidParameterValue_AudioLimitExceeded
            case .audioSizeMustBeEven:
                code = .invalidParameterValue_AudioSizeMustBeEven
            case .baseDecodeFailed:
                code = .invalidParameterValue_BASEDecodeFailed
            case .invalidSeqId:
                code = .invalidParameterValue_InvalidSeqId
            case .invalidWAVHeader:
                code = .invalidParameterValue_InvalidWAVHeader
            case .noDocInList:
                code = .invalidParameterValue_NoDocInList
            case .parameterInvalid:
                code = .invalidParameterValue_ParameterInvalid
            case .refTextEmpty:
                code = .invalidParameterValue_RefTextEmpty
            case .refTextGrammarError:
                code = .invalidParameterValue_RefTextGrammarError
            case .refTextLimitExceeded:
                code = .invalidParameterValue_RefTextLimitExceeded
            case .refTextOOV:
                code = .invalidParameterValue_RefTextOOV
            case .refTextPolyphonicLimitExceeded:
                code = .invalidParameterValue_RefTextPolyphonicLimitExceeded
            case .refTxtEmpty:
                code = .invalidParameterValue_RefTxtEmpty
            case .refTxtTooLang:
                code = .invalidParameterValue_RefTxtTooLang
            case .sensitiveWords:
                code = .invalidParameterValue_SensitiveWords
            case .sessionIdInUse:
                code = .invalidParameterValue_SessionIdInUse
            case .shardNoStartWithOne:
                code = .invalidParameterValue_ShardNoStartWithOne
            case .streamingvoicepkgTimeout:
                code = .invalidParameterValue_StreamingvoicepkgTimeout
            case .vadNotDetectedSpeak:
                code = .invalidParameterValue_VadNotDetectedSpeak
            case .voiceFileTypeNotFound:
                code = .invalidParameterValue_VoiceFileTypeNotFound
            case .voiceLengthTooLong:
                code = .invalidParameterValue_VoiceLengthTooLong
            case .wavHeaderDecodeFailed:
                code = .invalidParameterValue_WAVHeaderDecodeFailed
            case .wordLengthTooLong:
                code = .invalidParameterValue_WordLengthTooLong
            case .other:
                code = .invalidParameterValue
            }
            return TCSoeError(code, context: self.context)
        }
    }
}
