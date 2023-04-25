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

extension TCTdmqError {
    public struct ResourceNotFound: TCTdmqErrorType {
        enum Code: String {
            case brokerCluster = "ResourceNotFound.BrokerCluster"
            case cluster = "ResourceNotFound.Cluster"
            case environment = "ResourceNotFound.Environment"
            case environmentRole = "ResourceNotFound.EnvironmentRole"
            case instance = "ResourceNotFound.Instance"
            case namespace = "ResourceNotFound.Namespace"
            case role = "ResourceNotFound.Role"
            case subscription = "ResourceNotFound.Subscription"
            case topic = "ResourceNotFound.Topic"
            case other = "ResourceNotFound"
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

        /// 服务的集群不存在。
        public static var brokerCluster: ResourceNotFound {
            ResourceNotFound(.brokerCluster)
        }

        /// 集群不存在。
        public static var cluster: ResourceNotFound {
            ResourceNotFound(.cluster)
        }

        /// 环境不存在。
        ///
        /// 创建环境。
        public static var environment: ResourceNotFound {
            ResourceNotFound(.environment)
        }

        /// 环境角色不存在。
        public static var environmentRole: ResourceNotFound {
            ResourceNotFound(.environmentRole)
        }

        /// 实例不存在。
        ///
        /// 实例可能已被删除，或者查询实例的参数不正确。
        public static var instance: ResourceNotFound {
            ResourceNotFound(.instance)
        }

        /// 命名空间不存在。
        public static var namespace: ResourceNotFound {
            ResourceNotFound(.namespace)
        }

        /// 角色不存在。
        public static var role: ResourceNotFound {
            ResourceNotFound(.role)
        }

        /// 订阅关系不存在。
        ///
        /// 创建订阅关系。
        public static var subscription: ResourceNotFound {
            ResourceNotFound(.subscription)
        }

        /// 主题不存在。
        ///
        /// 创建主题。
        public static var topic: ResourceNotFound {
            ResourceNotFound(.topic)
        }

        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }

        public func asTdmqError() -> TCTdmqError {
            let code: TCTdmqError.Code
            switch self.error {
            case .brokerCluster:
                code = .resourceNotFound_BrokerCluster
            case .cluster:
                code = .resourceNotFound_Cluster
            case .environment:
                code = .resourceNotFound_Environment
            case .environmentRole:
                code = .resourceNotFound_EnvironmentRole
            case .instance:
                code = .resourceNotFound_Instance
            case .namespace:
                code = .resourceNotFound_Namespace
            case .role:
                code = .resourceNotFound_Role
            case .subscription:
                code = .resourceNotFound_Subscription
            case .topic:
                code = .resourceNotFound_Topic
            case .other:
                code = .resourceNotFound
            }
            return TCTdmqError(code, context: self.context)
        }
    }
}
