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

extension TCThpcError {
    public struct ResourceNotFound: TCThpcErrorType {
        enum Code: String {
            case autoScalingGroupId = "ResourceNotFound.AutoScalingGroupId"
            case clusterId = "ResourceNotFound.ClusterId"
            case launchConfigurationId = "ResourceNotFound.LaunchConfigurationId"
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

        /// 无法找到弹性伸缩组ID。
        public static var autoScalingGroupId: ResourceNotFound {
            ResourceNotFound(.autoScalingGroupId)
        }

        /// 集群不存在。
        public static var clusterId: ResourceNotFound {
            ResourceNotFound(.clusterId)
        }

        /// 无法找到ID对应的弹性伸缩启动配置。
        public static var launchConfigurationId: ResourceNotFound {
            ResourceNotFound(.launchConfigurationId)
        }

        public func asThpcError() -> TCThpcError {
            let code: TCThpcError.Code
            switch self.error {
            case .autoScalingGroupId:
                code = .resourceNotFound_AutoScalingGroupId
            case .clusterId:
                code = .resourceNotFound_ClusterId
            case .launchConfigurationId:
                code = .resourceNotFound_LaunchConfigurationId
            }
            return TCThpcError(code, context: self.context)
        }
    }
}
