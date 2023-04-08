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

import TecoCore

extension TCTkeError {
    public struct ResourceNotFound: TCTkeErrorType {
        enum Code: String {
            case asAsgNotExist = "ResourceNotFound.AsAsgNotExist"
            case clusterNotFound = "ResourceNotFound.ClusterNotFound"
            case kubeResourceNotFound = "ResourceNotFound.KubeResourceNotFound"
            case kubernetesResourceNotFound = "ResourceNotFound.KubernetesResourceNotFound"
            case routeTableNotFound = "ResourceNotFound.RouteTableNotFound"
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

        /// 伸缩组不存在。
        public static var asAsgNotExist: ResourceNotFound {
            ResourceNotFound(.asAsgNotExist)
        }

        /// 集群不存在。
        public static var clusterNotFound: ResourceNotFound {
            ResourceNotFound(.clusterNotFound)
        }

        /// 用户Kubernetes集群中未找到指定资源。
        public static var kubeResourceNotFound: ResourceNotFound {
            ResourceNotFound(.kubeResourceNotFound)
        }

        /// 未找到该kubernetes资源。
        public static var kubernetesResourceNotFound: ResourceNotFound {
            ResourceNotFound(.kubernetesResourceNotFound)
        }

        /// 找不到对应路由表。
        public static var routeTableNotFound: ResourceNotFound {
            ResourceNotFound(.routeTableNotFound)
        }

        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }

        public func asTkeError() -> TCTkeError {
            let code: TCTkeError.Code
            switch self.error {
            case .asAsgNotExist:
                code = .resourceNotFound_AsAsgNotExist
            case .clusterNotFound:
                code = .resourceNotFound_ClusterNotFound
            case .kubeResourceNotFound:
                code = .resourceNotFound_KubeResourceNotFound
            case .kubernetesResourceNotFound:
                code = .resourceNotFound_KubernetesResourceNotFound
            case .routeTableNotFound:
                code = .resourceNotFound_RouteTableNotFound
            case .other:
                code = .resourceNotFound
            }
            return TCTkeError(code, context: self.context)
        }
    }
}
