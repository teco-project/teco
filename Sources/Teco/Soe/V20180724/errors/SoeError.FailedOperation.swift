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

extension TCSoeError {
    public struct FailedOperation: TCSoeErrorType {
        enum Code: String {
            case errorGetSession = "FailedOperation.ErrorGetSession"
            case errorGetUser = "FailedOperation.ErrorGetUser"
            case evaluateTimeout = "FailedOperation.EvaluateTimeout"
            case evaluateUnknownError = "FailedOperation.EvaluateUnknownError"
            case failedGetEngineIP = "FailedOperation.FailedGetEngineIP"
            case failedGetResult = "FailedOperation.FailedGetResult"
            case failedGetSession = "FailedOperation.FailedGetSession"
            case failedGetSessionSeqID = "FailedOperation.FailedGetSessionSeqID"
            case failedGetUser = "FailedOperation.FailedGetUser"
            case failedInit = "FailedOperation.FailedInit"
            case failedSetResult = "FailedOperation.FailedSetResult"
            case failedSetSession = "FailedOperation.FailedSetSession"
            case failedSetSessionSeqID = "FailedOperation.FailedSetSessionSeqID"
            case failedSetUser = "FailedOperation.FailedSetUser"
            case internalServerError = "FailedOperation.InternalServerError"
            case invalidParameterValue = "FailedOperation.InvalidParameterValue"
            case jsonCodecError = "FailedOperation.JsonCodecError"
            case needInitBeforeEvaluation = "FailedOperation.NeedInitBeforeEvaluation"
            case pastSeqIdLose = "FailedOperation.PastSeqIdLose"
            case resultExpired = "FailedOperation.ResultExpired"
            case seqIdExpired = "FailedOperation.SeqIdExpired"
            case serverOverload = "FailedOperation.ServerOverload"
            case serviceTimeout = "FailedOperation.ServiceTimeout"
            case sessionExpired = "FailedOperation.SessionExpired"
            case waitPastSeqIdTimeout = "FailedOperation.WaitPastSeqIdTimeout"
            case other = "FailedOperation"
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

        /// 会话缓存保存失败，请重新初始化。
        public static var errorGetSession: FailedOperation {
            FailedOperation(.errorGetSession)
        }

        /// 获取用户信息失败。
        ///
        /// 获取用户信息失败，请重新初始化后请求。
        public static var errorGetUser: FailedOperation {
            FailedOperation(.errorGetUser)
        }

        /// 评测时间超出限制，请检查音频时间是否过长后重试。
        ///
        /// 请参考API文档检查音频时间是否过长后重试。https://cloud.tencent.com/document/product/884/19310
        public static var evaluateTimeout: FailedOperation {
            FailedOperation(.evaluateTimeout)
        }

        /// 引擎未知错误，请检查一下RefText是否正常后重试。
        ///
        /// 请参考API文档检查参数RefText是否正确后重试。https://cloud.tencent.com/document/product/884/19310
        public static var evaluateUnknownError: FailedOperation {
            FailedOperation(.evaluateUnknownError)
        }

        /// 获取评测引擎IP失败，请稍后重试。
        ///
        /// 请重试当前请求。
        public static var failedGetEngineIP: FailedOperation {
            FailedOperation(.failedGetEngineIP)
        }

        /// 结果缓存获取失败，请稍后重试。
        ///
        /// 请重试当前请求。
        public static var failedGetResult: FailedOperation {
            FailedOperation(.failedGetResult)
        }

        /// 会话缓存获取失败，请稍后重试。
        ///
        /// 请重试当前请求。
        public static var failedGetSession: FailedOperation {
            FailedOperation(.failedGetSession)
        }

        /// 会话分片序号缓存获取失败，请稍后重试。
        ///
        /// 请重试当前请求。
        public static var failedGetSessionSeqID: FailedOperation {
            FailedOperation(.failedGetSessionSeqID)
        }

        /// 用户信息缓存获取失败，请稍后重试。
        ///
        /// 请重试当前请求。
        public static var failedGetUser: FailedOperation {
            FailedOperation(.failedGetUser)
        }

        /// 请求初始化失败，请检查参数后重新初始化。
        ///
        /// 检查参数后重新初始化。https://cloud.tencent.com/document/product/884/19310
        public static var failedInit: FailedOperation {
            FailedOperation(.failedInit)
        }

        /// 结果缓存保存失败，请稍后重试。
        ///
        /// 请重试当前请求。
        public static var failedSetResult: FailedOperation {
            FailedOperation(.failedSetResult)
        }

        /// 会话缓存保存失败，请重新初始化。
        ///
        /// 请重新初始化。
        public static var failedSetSession: FailedOperation {
            FailedOperation(.failedSetSession)
        }

        /// 会话分片序号缓存保存失败，请重新初始化。
        ///
        /// 请重新初始化。
        public static var failedSetSessionSeqID: FailedOperation {
            FailedOperation(.failedSetSessionSeqID)
        }

        /// 用户信息缓存保存失败，请稍后重试。
        ///
        /// 请重试当前请求。
        public static var failedSetUser: FailedOperation {
            FailedOperation(.failedSetUser)
        }

        /// 服务内部错误，请稍后重试或联系我们。
        public static var internalServerError: FailedOperation {
            FailedOperation(.internalServerError)
        }

        /// 引擎参数错误，请稍后重试。
        ///
        /// 请重试当前请求。
        public static var invalidParameterValue: FailedOperation {
            FailedOperation(.invalidParameterValue)
        }

        /// Json编解码失败，请稍后重试。
        ///
        /// 请重试当前请求。
        public static var jsonCodecError: FailedOperation {
            FailedOperation(.jsonCodecError)
        }

        /// 引擎评估之前没有初始化，请重新初始化成功之后重新传输数据。
        ///
        /// 请重新初始化成功之后重新传输数据。
        public static var needInitBeforeEvaluation: FailedOperation {
            FailedOperation(.needInitBeforeEvaluation)
        }

        /// 前序分片缺失，请重新补发前序分片。
        ///
        /// 请重发前序分片。
        public static var pastSeqIdLose: FailedOperation {
            FailedOperation(.pastSeqIdLose)
        }

        /// 结果缓存已过期，请重新初始化成功之后重新传输数据。
        ///
        /// 请重新初始化成功之后重新传输数据。
        public static var resultExpired: FailedOperation {
            FailedOperation(.resultExpired)
        }

        /// 分片序号缓存已过期，请重新初始化成功之后重新传输数据。
        ///
        /// 请重新初始化成功之后重新传输数据。
        public static var seqIdExpired: FailedOperation {
            FailedOperation(.seqIdExpired)
        }

        /// 引擎服务器过载，请稍后重试。
        ///
        /// 请重试当前请求。
        public static var serverOverload: FailedOperation {
            FailedOperation(.serverOverload)
        }

        /// 评测超时，请通过轮询查询评测结果，后续请使用分片传输或减少单次传输音频时长。
        ///
        /// 请通过轮询查询评测结果，后续请使用分片传输或减少单次传输音频时长。
        public static var serviceTimeout: FailedOperation {
            FailedOperation(.serviceTimeout)
        }

        /// 会话缓存已过期，请重新初始化成功之后重新传输数据。
        ///
        /// 请重新初始化成功之后重新传输数据。
        public static var sessionExpired: FailedOperation {
            FailedOperation(.sessionExpired)
        }

        /// 引擎等待前序分片超时，请重新补发前序分片。
        public static var waitPastSeqIdTimeout: FailedOperation {
            FailedOperation(.waitPastSeqIdTimeout)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asSoeError() -> TCSoeError {
            let code: TCSoeError.Code
            switch self.error {
            case .errorGetSession:
                code = .failedOperation_ErrorGetSession
            case .errorGetUser:
                code = .failedOperation_ErrorGetUser
            case .evaluateTimeout:
                code = .failedOperation_EvaluateTimeout
            case .evaluateUnknownError:
                code = .failedOperation_EvaluateUnknownError
            case .failedGetEngineIP:
                code = .failedOperation_FailedGetEngineIP
            case .failedGetResult:
                code = .failedOperation_FailedGetResult
            case .failedGetSession:
                code = .failedOperation_FailedGetSession
            case .failedGetSessionSeqID:
                code = .failedOperation_FailedGetSessionSeqID
            case .failedGetUser:
                code = .failedOperation_FailedGetUser
            case .failedInit:
                code = .failedOperation_FailedInit
            case .failedSetResult:
                code = .failedOperation_FailedSetResult
            case .failedSetSession:
                code = .failedOperation_FailedSetSession
            case .failedSetSessionSeqID:
                code = .failedOperation_FailedSetSessionSeqID
            case .failedSetUser:
                code = .failedOperation_FailedSetUser
            case .internalServerError:
                code = .failedOperation_InternalServerError
            case .invalidParameterValue:
                code = .failedOperation_InvalidParameterValue
            case .jsonCodecError:
                code = .failedOperation_JsonCodecError
            case .needInitBeforeEvaluation:
                code = .failedOperation_NeedInitBeforeEvaluation
            case .pastSeqIdLose:
                code = .failedOperation_PastSeqIdLose
            case .resultExpired:
                code = .failedOperation_ResultExpired
            case .seqIdExpired:
                code = .failedOperation_SeqIdExpired
            case .serverOverload:
                code = .failedOperation_ServerOverload
            case .serviceTimeout:
                code = .failedOperation_ServiceTimeout
            case .sessionExpired:
                code = .failedOperation_SessionExpired
            case .waitPastSeqIdTimeout:
                code = .failedOperation_WaitPastSeqIdTimeout
            case .other:
                code = .failedOperation
            }
            return TCSoeError(code, context: self.context)
        }
    }
}
