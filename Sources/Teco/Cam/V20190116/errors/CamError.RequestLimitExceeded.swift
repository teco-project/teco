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

extension TCCamError {
    public struct RequestLimitExceeded: TCCamErrorType {
        enum Code: String {
            case createUser = "RequestLimitExceeded.CreateUser"
            case uinLimitExceeded = "RequestLimitExceeded.UinLimitExceeded"
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

        /// 创建子用户频率超过限制。
        public static var createUser: RequestLimitExceeded {
            RequestLimitExceeded(.createUser)
        }

        /// 用户账号超出了限制。
        public static var uinLimitExceeded: RequestLimitExceeded {
            RequestLimitExceeded(.uinLimitExceeded)
        }

        public func asCamError() -> TCCamError {
            let code: TCCamError.Code
            switch self.error {
            case .createUser:
                code = .requestLimitExceeded_CreateUser
            case .uinLimitExceeded:
                code = .requestLimitExceeded_UinLimitExceeded
            }
            return TCCamError(code, context: self.context)
        }
    }
}
