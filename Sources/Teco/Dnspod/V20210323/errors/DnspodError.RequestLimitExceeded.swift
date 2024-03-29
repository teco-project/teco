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

extension TCDnspodError {
    public struct RequestLimitExceeded: TCDnspodErrorType {
        enum Code: String {
            case batchTaskLimit = "RequestLimitExceeded.BatchTaskLimit"
            case createDomainLimit = "RequestLimitExceeded.CreateDomainLimit"
            case requestLimitExceeded = "RequestLimitExceeded.RequestLimitExceeded"
            case other = "RequestLimitExceeded"
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

        /// 您的IP添加了过多任务，请稍后重试。
        public static var batchTaskLimit: RequestLimitExceeded {
            RequestLimitExceeded(.batchTaskLimit)
        }

        /// 您的帐号在短时间内添加了大量的域名，请控制添加频率。
        public static var createDomainLimit: RequestLimitExceeded {
            RequestLimitExceeded(.createDomainLimit)
        }

        /// API请求次数超出限制。
        public static var requestLimitExceeded: RequestLimitExceeded {
            RequestLimitExceeded(.requestLimitExceeded)
        }

        /// 请求的次数超过了频率限制。
        public static var other: RequestLimitExceeded {
            RequestLimitExceeded(.other)
        }

        public func asDnspodError() -> TCDnspodError {
            let code: TCDnspodError.Code
            switch self.error {
            case .batchTaskLimit:
                code = .requestLimitExceeded_BatchTaskLimit
            case .createDomainLimit:
                code = .requestLimitExceeded_CreateDomainLimit
            case .requestLimitExceeded:
                code = .requestLimitExceeded_RequestLimitExceeded
            case .other:
                code = .requestLimitExceeded
            }
            return TCDnspodError(code, context: self.context)
        }
    }
}
