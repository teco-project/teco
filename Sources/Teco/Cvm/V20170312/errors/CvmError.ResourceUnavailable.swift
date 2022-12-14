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

extension TCCvmError {
    public struct ResourceUnavailable: TCCvmErrorType {
        enum Code: String {
            case instanceType = "ResourceUnavailable.InstanceType"
            case snapshotCreating = "ResourceUnavailable.SnapshotCreating"
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

        /// 该可用区不售卖此机型
        ///
        /// 无
        public static var instanceType: ResourceUnavailable {
            ResourceUnavailable(.instanceType)
        }

        /// 快照正在创建过程中。
        public static var snapshotCreating: ResourceUnavailable {
            ResourceUnavailable(.snapshotCreating)
        }

        public func asCvmError() -> TCCvmError {
            let code: TCCvmError.Code
            switch self.error {
            case .instanceType: 
                code = .resourceUnavailable_InstanceType
            case .snapshotCreating: 
                code = .resourceUnavailable_SnapshotCreating
            }
            return TCCvmError(code, context: self.context)
        }
    }
}
