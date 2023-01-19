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
    public struct InvalidInstanceId: TCVpcErrorType {
        enum Code: String {
            case alreadyBindEip = "InvalidInstanceId.AlreadyBindEip"
            case notFound = "InvalidInstanceId.NotFound"
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

        /// 指定实例已经绑定了EIP。需先解绑当前的EIP才能再次进行绑定操作。
        public static var alreadyBindEip: InvalidInstanceId {
            InvalidInstanceId(.alreadyBindEip)
        }

        /// 无效实例ID。指定的实例ID不存在。
        public static var notFound: InvalidInstanceId {
            InvalidInstanceId(.notFound)
        }

        public func asVpcError() -> TCVpcError {
            let code: TCVpcError.Code
            switch self.error {
            case .alreadyBindEip:
                code = .invalidInstanceId_AlreadyBindEip
            case .notFound:
                code = .invalidInstanceId_NotFound
            }
            return TCVpcError(code, context: self.context)
        }
    }
}
