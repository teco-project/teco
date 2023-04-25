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

extension TCSoeError {
    public struct InternalError: TCSoeErrorType {
        enum Code: String {
            case audioProcessingFailed = "InternalError.AudioProcessingFailed"
            case authorizeError = "InternalError.AuthorizeError"
            case base64DecodeFailed = "InternalError.BASE64DecodeFailed"
            case cannotFindSession = "InternalError.CannotFindSession"
            case failToDecodeVoice = "InternalError.FailToDecodeVoice"
            case ilegalServerResponse = "InternalError.IlegalServerResponse"
            case initStreamNotSupport = "InternalError.InitStreamNotSupport"
            case initStreamUnfinished = "InternalError.InitStreamUnfinished"
            case initialParameterError = "InternalError.InitialParameterError"
            case invalidSeqId = "InternalError.InvalidSeqId"
            case invalidWAVHeader = "InternalError.InvalidWAVHeader"
            case lastSeqUnfinished = "InternalError.LastSeqUnfinished"
            case mp3DecodeFailed = "InternalError.MP3DecodeFailed"
            case needToInit = "InternalError.NeedToInit"
            case noConversationFound = "InternalError.NoConversationFound"
            case noDocInList = "InternalError.NoDocInList"
            case noError = "InternalError.NoError"
            case noInitBeforeEvaluation = "InternalError.NoInitBeforeEvaluation"
            case refTxtEmpty = "InternalError.RefTxtEmpty"
            case refTxtOov = "InternalError.RefTxtOov"
            case refTxtTooLang = "InternalError.RefTxtTooLang"
            case serverInternalError = "InternalError.ServerInternalError"
            case serverOverload = "InternalError.ServerOverload"
            case serviceTimeout = "InternalError.ServiceTimeout"
            case shardNoStartWithOne = "InternalError.ShardNoStartWithOne"
            case streamProcessFail = "InternalError.StreamProcessFail"
            case streamProcessTimeOut = "InternalError.StreamProcessTimeOut"
            case streamingvoicepkgTimeout = "InternalError.StreamingvoicepkgTimeout"
            case timeOut = "InternalError.TimeOut"
            case tooLongPackage = "InternalError.TooLongPackage"
            case vadNotDetectedSpeak = "InternalError.VadNotDetectedSpeak"
            case voiceMsgOversized = "InternalError.VoiceMsgOversized"
            case voiceMsgTooShort = "InternalError.VoiceMsgTooShort"
            case wordLengthTooLong = "InternalError.WordLengthTooLong"
            case other = "InternalError"
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

        /// 音频处理出错。
        public static var audioProcessingFailed: InternalError {
            InternalError(.audioProcessingFailed)
        }

        /// 服务未开通或已欠费。
        public static var authorizeError: InternalError {
            InternalError(.authorizeError)
        }

        /// BASE64解码错误。
        public static var base64DecodeFailed: InternalError {
            InternalError(.base64DecodeFailed)
        }

        /// 评估之前没有初始化或已过期。
        public static var cannotFindSession: InternalError {
            InternalError(.cannotFindSession)
        }

        /// 语音解码失败。
        public static var failToDecodeVoice: InternalError {
            InternalError(.failToDecodeVoice)
        }

        /// 服务器应答非法 。
        public static var ilegalServerResponse: InternalError {
            InternalError(.ilegalServerResponse)
        }

        /// 该接口不支持init_stream。
        public static var initStreamNotSupport: InternalError {
            InternalError(.initStreamNotSupport)
        }

        /// 初始化请求未完成，请稍后重试。
        public static var initStreamUnfinished: InternalError {
            InternalError(.initStreamUnfinished)
        }

        /// 初始化参数错误  。
        public static var initialParameterError: InternalError {
            InternalError(.initialParameterError)
        }

        /// 分片序号错误。
        public static var invalidSeqId: InternalError {
            InternalError(.invalidSeqId)
        }

        /// WAV头部格式非法或不在同一分片内。
        public static var invalidWAVHeader: InternalError {
            InternalError(.invalidWAVHeader)
        }

        /// 前一个分片未处理完，请稍后重试。
        public static var lastSeqUnfinished: InternalError {
            InternalError(.lastSeqUnfinished)
        }

        /// MP3转码发生错误。
        public static var mp3DecodeFailed: InternalError {
            InternalError(.mp3DecodeFailed)
        }

        /// 进行评估之前没有进行初始化。
        public static var needToInit: InternalError {
            InternalError(.needToInit)
        }

        /// 使用的会话没有找到或已经被释放。
        public static var noConversationFound: InternalError {
            InternalError(.noConversationFound)
        }

        /// 表单中没有文件。
        public static var noDocInList: InternalError {
            InternalError(.noDocInList)
        }

        /// 没有错误。
        public static var noError: InternalError {
            InternalError(.noError)
        }

        /// 评估之前没有初始化。
        public static var noInitBeforeEvaluation: InternalError {
            InternalError(.noInitBeforeEvaluation)
        }

        /// 检测到不支持的字符在输入文本。
        public static var refTxtEmpty: InternalError {
            InternalError(.refTxtEmpty)
        }

        /// 检测到不支持的字符在输入文本。
        public static var refTxtOov: InternalError {
            InternalError(.refTxtOov)
        }

        /// 输入文本太长。
        public static var refTxtTooLang: InternalError {
            InternalError(.refTxtTooLang)
        }

        /// 服务器内部错误。
        public static var serverInternalError: InternalError {
            InternalError(.serverInternalError)
        }

        /// 服务器过载。
        public static var serverOverload: InternalError {
            InternalError(.serverOverload)
        }

        /// 服务超时。
        public static var serviceTimeout: InternalError {
            InternalError(.serviceTimeout)
        }

        /// 分片序号错误应该从1开始。
        public static var shardNoStartWithOne: InternalError {
            InternalError(.shardNoStartWithOne)
        }

        /// 流式模式数据包处理过程中间失败。
        public static var streamProcessFail: InternalError {
            InternalError(.streamProcessFail)
        }

        /// 流式模式数据包处理超时。
        public static var streamProcessTimeOut: InternalError {
            InternalError(.streamProcessTimeOut)
        }

        /// 流式语音包超时。
        public static var streamingvoicepkgTimeout: InternalError {
            InternalError(.streamingvoicepkgTimeout)
        }

        /// 获得结果超时。
        public static var timeOut: InternalError {
            InternalError(.timeOut)
        }

        /// 语音数据包长度超过 1MB。
        public static var tooLongPackage: InternalError {
            InternalError(.tooLongPackage)
        }

        /// 没有检测到语音。
        public static var vadNotDetectedSpeak: InternalError {
            InternalError(.vadNotDetectedSpeak)
        }

        /// 语音数据大于1MB。
        public static var voiceMsgOversized: InternalError {
            InternalError(.voiceMsgOversized)
        }

        /// 语音时长太短 。
        public static var voiceMsgTooShort: InternalError {
            InternalError(.voiceMsgTooShort)
        }

        /// 文本单词超过限制 。
        public static var wordLengthTooLong: InternalError {
            InternalError(.wordLengthTooLong)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asSoeError() -> TCSoeError {
            let code: TCSoeError.Code
            switch self.error {
            case .audioProcessingFailed:
                code = .internalError_AudioProcessingFailed
            case .authorizeError:
                code = .internalError_AuthorizeError
            case .base64DecodeFailed:
                code = .internalError_BASE64DecodeFailed
            case .cannotFindSession:
                code = .internalError_CannotFindSession
            case .failToDecodeVoice:
                code = .internalError_FailToDecodeVoice
            case .ilegalServerResponse:
                code = .internalError_IlegalServerResponse
            case .initStreamNotSupport:
                code = .internalError_InitStreamNotSupport
            case .initStreamUnfinished:
                code = .internalError_InitStreamUnfinished
            case .initialParameterError:
                code = .internalError_InitialParameterError
            case .invalidSeqId:
                code = .internalError_InvalidSeqId
            case .invalidWAVHeader:
                code = .internalError_InvalidWAVHeader
            case .lastSeqUnfinished:
                code = .internalError_LastSeqUnfinished
            case .mp3DecodeFailed:
                code = .internalError_MP3DecodeFailed
            case .needToInit:
                code = .internalError_NeedToInit
            case .noConversationFound:
                code = .internalError_NoConversationFound
            case .noDocInList:
                code = .internalError_NoDocInList
            case .noError:
                code = .internalError_NoError
            case .noInitBeforeEvaluation:
                code = .internalError_NoInitBeforeEvaluation
            case .refTxtEmpty:
                code = .internalError_RefTxtEmpty
            case .refTxtOov:
                code = .internalError_RefTxtOov
            case .refTxtTooLang:
                code = .internalError_RefTxtTooLang
            case .serverInternalError:
                code = .internalError_ServerInternalError
            case .serverOverload:
                code = .internalError_ServerOverload
            case .serviceTimeout:
                code = .internalError_ServiceTimeout
            case .shardNoStartWithOne:
                code = .internalError_ShardNoStartWithOne
            case .streamProcessFail:
                code = .internalError_StreamProcessFail
            case .streamProcessTimeOut:
                code = .internalError_StreamProcessTimeOut
            case .streamingvoicepkgTimeout:
                code = .internalError_StreamingvoicepkgTimeout
            case .timeOut:
                code = .internalError_TimeOut
            case .tooLongPackage:
                code = .internalError_TooLongPackage
            case .vadNotDetectedSpeak:
                code = .internalError_VadNotDetectedSpeak
            case .voiceMsgOversized:
                code = .internalError_VoiceMsgOversized
            case .voiceMsgTooShort:
                code = .internalError_VoiceMsgTooShort
            case .wordLengthTooLong:
                code = .internalError_WordLengthTooLong
            case .other:
                code = .internalError
            }
            return TCSoeError(code, context: self.context)
        }
    }
}
