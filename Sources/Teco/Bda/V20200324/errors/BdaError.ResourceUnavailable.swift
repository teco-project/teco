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

extension TCBdaError {
    public struct ResourceUnavailable: TCBdaErrorType {
        enum Code: String {
            case inArrears = "ResourceUnavailable.InArrears"
            case notExist = "ResourceUnavailable.NotExist"
            case notReady = "ResourceUnavailable.NotReady"
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

        /// 账号已欠费。
        public static var inArrears: ResourceUnavailable {
            ResourceUnavailable(.inArrears)
        }

        /// 计费状态未知，请确认是否已在控制台开通服务。
        public static var notExist: ResourceUnavailable {
            ResourceUnavailable(.notExist)
        }

        /// 服务未开通。
        public static var notReady: ResourceUnavailable {
            ResourceUnavailable(.notReady)
        }

        public func asBdaError() -> TCBdaError {
            let code: TCBdaError.Code
            switch self.error {
            case .inArrears:
                code = .resourceUnavailable_InArrears
            case .notExist:
                code = .resourceUnavailable_NotExist
            case .notReady:
                code = .resourceUnavailable_NotReady
            }
            return TCBdaError(code, context: self.context)
        }
    }
}
