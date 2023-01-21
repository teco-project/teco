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

extension TCBmvpcError {
    public struct LimitExceeded: TCBmvpcErrorType {
        enum Code: String {
            case spdAclLimit = "LimitExceeded.SpdAclLimit"
            case spdDnetLimit = "LimitExceeded.SpdDnetLimit"
            case spdSnetLimit = "LimitExceeded.SpdSnetLimit"
            case other = "LimitExceeded"
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

        /// 可创建的VPN通道SPD ACL数达到上限。
        public static var spdAclLimit: LimitExceeded {
            LimitExceeded(.spdAclLimit)
        }

        /// 可创建的VPN通道SPD ACL目的地址数达到上限。
        public static var spdDnetLimit: LimitExceeded {
            LimitExceeded(.spdDnetLimit)
        }

        /// 可创建的VPN通道SPD ACL源地址数达到上限。
        public static var spdSnetLimit: LimitExceeded {
            LimitExceeded(.spdSnetLimit)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asBmvpcError() -> TCBmvpcError {
            let code: TCBmvpcError.Code
            switch self.error {
            case .spdAclLimit:
                code = .limitExceeded_SpdAclLimit
            case .spdDnetLimit:
                code = .limitExceeded_SpdDnetLimit
            case .spdSnetLimit:
                code = .limitExceeded_SpdSnetLimit
            case .other:
                code = .limitExceeded
            }
            return TCBmvpcError(code, context: self.context)
        }
    }
}
