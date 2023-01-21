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

extension TCThpcError {
    public struct UnsupportedOperation: TCThpcErrorType {
        enum Code: String {
            case autoScalingGroupAlreadyBinded = "UnsupportedOperation.AutoScalingGroupAlreadyBinded"
            case bindAutoScalingGroup = "UnsupportedOperation.BindAutoScalingGroup"
            case clusterStatusNotSupport = "UnsupportedOperation.ClusterStatusNotSupport"
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

        /// 指定的集群或集群队列当前不支持绑定弹性伸缩组。
        public static var bindAutoScalingGroup: UnsupportedOperation {
            UnsupportedOperation(.bindAutoScalingGroup)
        }

        /// 该集群当前状态不支持该操作。
        public static var clusterStatusNotSupport: UnsupportedOperation {
            UnsupportedOperation(.clusterStatusNotSupport)
        }

        public func asThpcError() -> TCThpcError {
            let code: TCThpcError.Code
            switch self.error {
            case .autoScalingGroupAlreadyBinded:
                code = .unsupportedOperation_AutoScalingGroupAlreadyBinded
            case .bindAutoScalingGroup:
                code = .unsupportedOperation_BindAutoScalingGroup
            case .clusterStatusNotSupport:
                code = .unsupportedOperation_ClusterStatusNotSupport
            }
            return TCThpcError(code, context: self.context)
        }
    }
}
