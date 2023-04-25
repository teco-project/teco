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

extension TCThpcError {
    public struct UnsupportedOperation: TCThpcErrorType {
        enum Code: String {
            case autoScalingGroupAlreadyBinded = "UnsupportedOperation.AutoScalingGroupAlreadyBinded"
            case autoScalingType = "UnsupportedOperation.AutoScalingType"
            case clusterStatusNotSupport = "UnsupportedOperation.ClusterStatusNotSupport"
            case invalidNodeRole = "UnsupportedOperation.InvalidNodeRole"
            case nodeStatusNotSupport = "UnsupportedOperation.NodeStatusNotSupport"
            case parameterTooLarge = "UnsupportedOperation.ParameterTooLarge"
            case parameterTooSmall = "UnsupportedOperation.ParameterTooSmall"
            case queueNotEmpty = "UnsupportedOperation.QueueNotEmpty"
            case vpcIdConflict = "UnsupportedOperation.VpcIdConflict"
            case other = "UnsupportedOperation"
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

        /// 该伸缩组已绑定集群，请更换伸缩组。
        public static var autoScalingGroupAlreadyBinded: UnsupportedOperation {
            UnsupportedOperation(.autoScalingGroupAlreadyBinded)
        }

        /// 弹性伸缩类型不支持此操作。
        public static var autoScalingType: UnsupportedOperation {
            UnsupportedOperation(.autoScalingType)
        }

        /// 该集群当前状态不支持该操作。
        public static var clusterStatusNotSupport: UnsupportedOperation {
            UnsupportedOperation(.clusterStatusNotSupport)
        }

        /// 类型节点不支持当前操作。
        public static var invalidNodeRole: UnsupportedOperation {
            UnsupportedOperation(.invalidNodeRole)
        }

        /// 节点状态不支持此操作。
        public static var nodeStatusNotSupport: UnsupportedOperation {
            UnsupportedOperation(.nodeStatusNotSupport)
        }

        /// 参数值过大，不支持此操作。
        public static var parameterTooLarge: UnsupportedOperation {
            UnsupportedOperation(.parameterTooLarge)
        }

        /// 参数值过小，不支持此操作。
        public static var parameterTooSmall: UnsupportedOperation {
            UnsupportedOperation(.parameterTooSmall)
        }

        /// 队列内存在节点，不支持此操作。
        public static var queueNotEmpty: UnsupportedOperation {
            UnsupportedOperation(.queueNotEmpty)
        }

        /// vpc冲突，不支持当前操作。
        public static var vpcIdConflict: UnsupportedOperation {
            UnsupportedOperation(.vpcIdConflict)
        }

        /// 操作不支持。
        public static var other: UnsupportedOperation {
            UnsupportedOperation(.other)
        }

        public func asThpcError() -> TCThpcError {
            let code: TCThpcError.Code
            switch self.error {
            case .autoScalingGroupAlreadyBinded:
                code = .unsupportedOperation_AutoScalingGroupAlreadyBinded
            case .autoScalingType:
                code = .unsupportedOperation_AutoScalingType
            case .clusterStatusNotSupport:
                code = .unsupportedOperation_ClusterStatusNotSupport
            case .invalidNodeRole:
                code = .unsupportedOperation_InvalidNodeRole
            case .nodeStatusNotSupport:
                code = .unsupportedOperation_NodeStatusNotSupport
            case .parameterTooLarge:
                code = .unsupportedOperation_ParameterTooLarge
            case .parameterTooSmall:
                code = .unsupportedOperation_ParameterTooSmall
            case .queueNotEmpty:
                code = .unsupportedOperation_QueueNotEmpty
            case .vpcIdConflict:
                code = .unsupportedOperation_VpcIdConflict
            case .other:
                code = .unsupportedOperation
            }
            return TCThpcError(code, context: self.context)
        }
    }
}
