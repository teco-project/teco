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
    public struct ResourceUnavailable: TCCbsErrorType {
        enum Code: String {
            case attached = "ResourceUnavailable.Attached"
            case diskSnapshotChainTooLarge = "ResourceUnavailable.DiskSnapshotChainTooLarge"
            case expire = "ResourceUnavailable.Expire"
            case notPortable = "ResourceUnavailable.NotPortable"
            case notSupportRefund = "ResourceUnavailable.NotSupportRefund"
            case notSupported = "ResourceUnavailable.NotSupported"
            case repeatRefund = "ResourceUnavailable.RepeatRefund"
            case snapshotCreating = "ResourceUnavailable.SnapshotCreating"
            case tooManyCreatingSnapshot = "ResourceUnavailable.TooManyCreatingSnapshot"
            case typeError = "ResourceUnavailable.TypeError"
            case zoneNotMatch = "ResourceUnavailable.ZoneNotMatch"
            case other = "ResourceUnavailable"
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

        /// 云硬盘已挂载至其他云服务器上。
        public static var attached: ResourceUnavailable {
            ResourceUnavailable(.attached)
        }

        public static var diskSnapshotChainTooLarge: ResourceUnavailable {
            ResourceUnavailable(.diskSnapshotChainTooLarge)
        }

        /// 云硬盘已过期。
        public static var expire: ResourceUnavailable {
            ResourceUnavailable(.expire)
        }

        /// 非弹性云硬盘不支持此操作。
        public static var notPortable: ResourceUnavailable {
            ResourceUnavailable(.notPortable)
        }

        /// 云盘不支持退还。
        public static var notSupportRefund: ResourceUnavailable {
            ResourceUnavailable(.notSupportRefund)
        }

        /// 资源不支持此操作。
        public static var notSupported: ResourceUnavailable {
            ResourceUnavailable(.notSupported)
        }

        /// 云硬盘已退还。
        public static var repeatRefund: ResourceUnavailable {
            ResourceUnavailable(.repeatRefund)
        }

        /// 快照尚未创建完成，暂时不可使用。
        public static var snapshotCreating: ResourceUnavailable {
            ResourceUnavailable(.snapshotCreating)
        }

        /// 全网正在创建的快照数量过多。
        public static var tooManyCreatingSnapshot: ResourceUnavailable {
            ResourceUnavailable(.tooManyCreatingSnapshot)
        }

        /// 云硬盘类型错误，如尝试挂载系统盘至云服务器上。
        public static var typeError: ResourceUnavailable {
            ResourceUnavailable(.typeError)
        }

        /// 云硬盘与实例不在同一可用区。
        public static var zoneNotMatch: ResourceUnavailable {
            ResourceUnavailable(.zoneNotMatch)
        }

        /// 资源不可用。
        public static var other: ResourceUnavailable {
            ResourceUnavailable(.other)
        }

        public func asCbsError() -> TCCbsError {
            let code: TCCbsError.Code
            switch self.error {
            case .attached:
                code = .resourceUnavailable_Attached
            case .diskSnapshotChainTooLarge:
                code = .resourceUnavailable_DiskSnapshotChainTooLarge
            case .expire:
                code = .resourceUnavailable_Expire
            case .notPortable:
                code = .resourceUnavailable_NotPortable
            case .notSupportRefund:
                code = .resourceUnavailable_NotSupportRefund
            case .notSupported:
                code = .resourceUnavailable_NotSupported
            case .repeatRefund:
                code = .resourceUnavailable_RepeatRefund
            case .snapshotCreating:
                code = .resourceUnavailable_SnapshotCreating
            case .tooManyCreatingSnapshot:
                code = .resourceUnavailable_TooManyCreatingSnapshot
            case .typeError:
                code = .resourceUnavailable_TypeError
            case .zoneNotMatch:
                code = .resourceUnavailable_ZoneNotMatch
            case .other:
                code = .resourceUnavailable
            }
            return TCCbsError(code, context: self.context)
        }
    }
}
