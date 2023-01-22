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

extension TCCvmError {
    public struct InvalidHostId: TCCvmErrorType {
        enum Code: String {
            case malformed = "InvalidHostId.Malformed"
            case notFound = "InvalidHostId.NotFound"
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

        /// 无效[CDH](https://cloud.tencent.com/document/product/416) `ID`。指定的[CDH](https://cloud.tencent.com/document/product/416) `ID`格式错误。例如`ID`长度错误`host-1122`。
        public static var malformed: InvalidHostId {
            InvalidHostId(.malformed)
        }

        /// 指定的HostId不存在，或不属于该请求账号所有。
        public static var notFound: InvalidHostId {
            InvalidHostId(.notFound)
        }

        public func asCvmError() -> TCCvmError {
            let code: TCCvmError.Code
            switch self.error {
            case .malformed:
                code = .invalidHostId_Malformed
            case .notFound:
                code = .invalidHostId_NotFound
            }
            return TCCvmError(code, context: self.context)
        }
    }
}
