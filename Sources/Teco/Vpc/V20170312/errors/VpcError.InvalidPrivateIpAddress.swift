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

extension TCVpcError {
    public struct InvalidPrivateIpAddress: TCVpcErrorType {
        enum Code: String {
            case alreadyBindEip = "InvalidPrivateIpAddress.AlreadyBindEip"
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

        /// 指定弹性网卡的指定内网IP已经绑定了EIP，不能重复绑定。
        public static var alreadyBindEip: InvalidPrivateIpAddress {
            InvalidPrivateIpAddress(.alreadyBindEip)
        }

        public func asVpcError() -> TCVpcError {
            let code: TCVpcError.Code
            switch self.error {
            case .alreadyBindEip:
                code = .invalidPrivateIpAddress_AlreadyBindEip
            }
            return TCVpcError(code, context: self.context)
        }
    }
}
