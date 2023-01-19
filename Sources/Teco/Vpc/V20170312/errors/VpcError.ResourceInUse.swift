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

extension TCVpcError {
    public struct ResourceInUse: TCVpcErrorType {
        enum Code: String {
            case address = "ResourceInUse.Address"
            case other = "ResourceInUse"
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

        /// 指定IP地址已经在使用中。
        public static var address: ResourceInUse {
            ResourceInUse(.address)
        }

        /// 资源被占用。
        public static var other: ResourceInUse {
            ResourceInUse(.other)
        }

        public func asVpcError() -> TCVpcError {
            let code: TCVpcError.Code
            switch self.error {
            case .address:
                code = .resourceInUse_Address
            case .other:
                code = .resourceInUse
            }
            return TCVpcError(code, context: self.context)
        }
    }
}
