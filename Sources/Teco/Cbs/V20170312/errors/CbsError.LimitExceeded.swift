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

extension TCCbsError {
    public struct LimitExceeded: TCCbsErrorType {
        enum Code: String {
            case autoSnapshotPolicyOutOfQuota = "LimitExceeded.AutoSnapshotPolicyOutOfQuota"
            case instanceAttachedDisk = "LimitExceeded.InstanceAttachedDisk"
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

        /// 定期快照策略数量已达到上限。
        public static var autoSnapshotPolicyOutOfQuota: LimitExceeded {
            LimitExceeded(.autoSnapshotPolicyOutOfQuota)
        }

        /// 实例挂载云盘数量超过限制。
        public static var instanceAttachedDisk: LimitExceeded {
            LimitExceeded(.instanceAttachedDisk)
        }

        public func asCbsError() -> TCCbsError {
            let code: TCCbsError.Code
            switch self.error {
            case .autoSnapshotPolicyOutOfQuota:
                code = .limitExceeded_AutoSnapshotPolicyOutOfQuota
            case .instanceAttachedDisk:
                code = .limitExceeded_InstanceAttachedDisk
            }
            return TCCbsError(code, context: self.context)
        }
    }
}
