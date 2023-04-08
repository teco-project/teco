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

extension TCTkeError {
    public struct ResourceUnavailable: TCTkeErrorType {
        enum Code: String {
            case clusterInAbnormalStat = "ResourceUnavailable.ClusterInAbnormalStat"
            case clusterState = "ResourceUnavailable.ClusterState"
            case eksContainerStatus = "ResourceUnavailable.EksContainerStatus"
            case nodePoolStateNotNormal = "ResourceUnavailable.NodePoolStateNotNormal"
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

        /// 集群状态异常。
        public static var clusterInAbnormalStat: ResourceUnavailable {
            ResourceUnavailable(.clusterInAbnormalStat)
        }

        /// 集群状态不支持该操作。
        public static var clusterState: ResourceUnavailable {
            ResourceUnavailable(.clusterState)
        }

        /// Eks Container Instance状态不支持改操作。
        public static var eksContainerStatus: ResourceUnavailable {
            ResourceUnavailable(.eksContainerStatus)
        }

        /// 节点池状态不正常。
        public static var nodePoolStateNotNormal: ResourceUnavailable {
            ResourceUnavailable(.nodePoolStateNotNormal)
        }

        /// 资源不可用。
        public static var other: ResourceUnavailable {
            ResourceUnavailable(.other)
        }

        public func asTkeError() -> TCTkeError {
            let code: TCTkeError.Code
            switch self.error {
            case .clusterInAbnormalStat:
                code = .resourceUnavailable_ClusterInAbnormalStat
            case .clusterState:
                code = .resourceUnavailable_ClusterState
            case .eksContainerStatus:
                code = .resourceUnavailable_EksContainerStatus
            case .nodePoolStateNotNormal:
                code = .resourceUnavailable_NodePoolStateNotNormal
            case .other:
                code = .resourceUnavailable
            }
            return TCTkeError(code, context: self.context)
        }
    }
}
