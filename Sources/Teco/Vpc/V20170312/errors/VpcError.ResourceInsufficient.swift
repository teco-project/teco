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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

extension TCVpcError {
    public struct ResourceInsufficient: TCVpcErrorType {
        enum Code: String {
            case cidrBlock = "ResourceInsufficient.CidrBlock"
            case subnet = "ResourceInsufficient.Subnet"
            case other = "ResourceInsufficient"
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

        /// 网段资源不足。
        public static var cidrBlock: ResourceInsufficient {
            ResourceInsufficient(.cidrBlock)
        }

        /// 子网IP资源不足, 无法分配IP。
        public static var subnet: ResourceInsufficient {
            ResourceInsufficient(.subnet)
        }

        /// 资源不足。
        public static var other: ResourceInsufficient {
            ResourceInsufficient(.other)
        }

        public func asVpcError() -> TCVpcError {
            let code: TCVpcError.Code
            switch self.error {
            case .cidrBlock:
                code = .resourceInsufficient_CidrBlock
            case .subnet:
                code = .resourceInsufficient_Subnet
            case .other:
                code = .resourceInsufficient
            }
            return TCVpcError(code, context: self.context)
        }
    }
}
