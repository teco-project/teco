//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCTdmqError {
    public struct InvalidParameter: TCTdmqErrorType {
        enum Code: String {
            case partition = "InvalidParameter.Partition"
            case tenantNotFound = "InvalidParameter.TenantNotFound"
            case tokenNotFound = "InvalidParameter.TokenNotFound"
            case other = "InvalidParameter"
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

        /// 调整分区数到合理的范围内
        public static var partition: InvalidParameter {
            InvalidParameter(.partition)
        }

        /// 上传的 tenant name 错误。
        public static var tenantNotFound: InvalidParameter {
            InvalidParameter(.tenantNotFound)
        }

        /// 没有获取到正确的 token。
        public static var tokenNotFound: InvalidParameter {
            InvalidParameter(.tokenNotFound)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asTdmqError() -> TCTdmqError {
            let code: TCTdmqError.Code
            switch self.error {
            case .partition: 
                code = .invalidParameter_Partition
            case .tenantNotFound: 
                code = .invalidParameter_TenantNotFound
            case .tokenNotFound: 
                code = .invalidParameter_TokenNotFound
            case .other: 
                code = .invalidParameter
            }
            return TCTdmqError(code, context: self.context)
        }
    }
}
