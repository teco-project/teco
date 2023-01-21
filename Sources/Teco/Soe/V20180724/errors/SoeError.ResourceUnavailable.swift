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
    public struct ResourceUnavailable: TCSoeErrorType {
        enum Code: String {
            case authorizeError = "ResourceUnavailable.AuthorizeError"
            case cannotFindSession = "ResourceUnavailable.CannotFindSession"
            case concurrencyLimit = "ResourceUnavailable.ConcurrencyLimit"
            case initStreamNotSupport = "ResourceUnavailable.InitStreamNotSupport"
            case initStreamUnfinished = "ResourceUnavailable.InitStreamUnfinished"
            case lastSeqUnfinished = "ResourceUnavailable.LastSeqUnfinished"
            case noConversationFound = "ResourceUnavailable.NoConversationFound"
            case noInitBeforeEvaluation = "ResourceUnavailable.NoInitBeforeEvaluation"
            case other = "ResourceUnavailable"
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

        /// 服务未开通或已欠费。
        public static var authorizeError: ResourceUnavailable {
            ResourceUnavailable(.authorizeError)
        }

        /// 评估之前没有初始化或已过期。
        public static var cannotFindSession: ResourceUnavailable {
            ResourceUnavailable(.cannotFindSession)
        }

        /// 使用并发超出限制。
        public static var concurrencyLimit: ResourceUnavailable {
            ResourceUnavailable(.concurrencyLimit)
        }

        /// 该接口不支持init_stream。
        public static var initStreamNotSupport: ResourceUnavailable {
            ResourceUnavailable(.initStreamNotSupport)
        }

        /// 初始化请求未完成，请稍后重试。
        public static var initStreamUnfinished: ResourceUnavailable {
            ResourceUnavailable(.initStreamUnfinished)
        }

        /// 前一个分片未处理完，请稍后重试。
        public static var lastSeqUnfinished: ResourceUnavailable {
            ResourceUnavailable(.lastSeqUnfinished)
        }

        /// 使用的会话没有找到或已经被释放。
        public static var noConversationFound: ResourceUnavailable {
            ResourceUnavailable(.noConversationFound)
        }

        /// 评估之前没有初始化。
        public static var noInitBeforeEvaluation: ResourceUnavailable {
            ResourceUnavailable(.noInitBeforeEvaluation)
        }

        /// 资源不可用。
        public static var other: ResourceUnavailable {
            ResourceUnavailable(.other)
        }

        public func asSoeError() -> TCSoeError {
            let code: TCSoeError.Code
            switch self.error {
            case .authorizeError:
                code = .resourceUnavailable_AuthorizeError
            case .cannotFindSession:
                code = .resourceUnavailable_CannotFindSession
            case .concurrencyLimit:
                code = .resourceUnavailable_ConcurrencyLimit
            case .initStreamNotSupport:
                code = .resourceUnavailable_InitStreamNotSupport
            case .initStreamUnfinished:
                code = .resourceUnavailable_InitStreamUnfinished
            case .lastSeqUnfinished:
                code = .resourceUnavailable_LastSeqUnfinished
            case .noConversationFound:
                code = .resourceUnavailable_NoConversationFound
            case .noInitBeforeEvaluation:
                code = .resourceUnavailable_NoInitBeforeEvaluation
            case .other:
                code = .resourceUnavailable
            }
            return TCSoeError(code, context: self.context)
        }
    }
}
