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

extension TCSmhError {
    public struct RequestLimitExceeded: TCSmhErrorType {
        enum Code: String {
            case sendSms = "RequestLimitExceeded.SendSms"
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

        /// 发送至指定手机号码的短信验证码已达到频率限制。
        public static var sendSms: RequestLimitExceeded {
            RequestLimitExceeded(.sendSms)
        }

        public func asSmhError() -> TCSmhError {
            let code: TCSmhError.Code
            switch self.error {
            case .sendSms:
                code = .requestLimitExceeded_SendSms
            }
            return TCSmhError(code, context: self.context)
        }
    }
}
