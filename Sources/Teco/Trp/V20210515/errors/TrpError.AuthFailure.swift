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

extension TCTrpError {
    public struct AuthFailure: TCTrpErrorType {
        enum Code: String {
            case corpEmpty = "AuthFailure.CorpEmpty"
            case corpExpired = "AuthFailure.CorpExpired"
            case other = "AuthFailure"
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

        /// 当前没有创建任何企业。
        ///
        /// 当前没有创建任何企业，请先创建企业以进行后续操作。
        public static var corpEmpty: AuthFailure {
            AuthFailure(.corpEmpty)
        }

        /// 企业服务时间已到期。
        ///
        /// 您购买的服务时间已到期，为不影响您的使用，请您联系商务，续费服务。
        public static var corpExpired: AuthFailure {
            AuthFailure(.corpExpired)
        }

        /// CAM签名/鉴权错误。
        public static var other: AuthFailure {
            AuthFailure(.other)
        }

        public func asTrpError() -> TCTrpError {
            let code: TCTrpError.Code
            switch self.error {
            case .corpEmpty:
                code = .authFailure_CorpEmpty
            case .corpExpired:
                code = .authFailure_CorpExpired
            case .other:
                code = .authFailure
            }
            return TCTrpError(code, context: self.context)
        }
    }
}
