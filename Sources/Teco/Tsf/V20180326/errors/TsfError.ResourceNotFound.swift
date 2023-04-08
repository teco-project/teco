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

extension TCTsfError {
    public struct ResourceNotFound: TCTsfErrorType {
        enum Code: String {
            case applicationNotExist = "ResourceNotFound.ApplicationNotExist"
            case applicationProjectNotMatch = "ResourceNotFound.ApplicationProjectNotMatch"
            case clusterNotExist = "ResourceNotFound.ClusterNotExist"
            case clusterVpcNotExist = "ResourceNotFound.ClusterVpcNotExist"
            case containergroupClusterNotfound = "ResourceNotFound.ContainergroupClusterNotfound"
            case containergroupGroupNamespaceClusterNotFound = "ResourceNotFound.ContainergroupGroupNamespaceClusterNotFound"
            case containergroupGroupNotFound = "ResourceNotFound.ContainergroupGroupNotFound"
            case cvmcaeMasterResourceNotFound = "ResourceNotFound.CvmcaeMasterResourceNotFound"
            case errNoRepo = "ResourceNotFound.ErrNoRepo"
            case errNoUser = "ResourceNotFound.ErrNoUser"
            case groupApplicationNotExist = "ResourceNotFound.GroupApplicationNotExist"
            case groupNamespaceNotExist = "ResourceNotFound.GroupNamespaceNotExist"
            case groupNotExist = "ResourceNotFound.GroupNotExist"
            case instanceNotExist = "ResourceNotFound.InstanceNotExist"
            case interfaceNotFound = "ResourceNotFound.InterfaceNotFound"
            case licenseServerNotFound = "ResourceNotFound.LicenseServerNotFound"
            case microserviceOffline = "ResourceNotFound.MicroserviceOffline"
            case namespaceNotExist = "ResourceNotFound.NamespaceNotExist"
            case objectNoExist = "ResourceNotFound.ObjectNoExist"
            case serviceNotExist = "ResourceNotFound.ServiceNotExist"
            case taskNotFound = "ResourceNotFound.TaskNotFound"
            case tkeClusterNotExists = "ResourceNotFound.TkeClusterNotExists"
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

        /// 无法获取应用信息。
        public static var applicationNotExist: ResourceNotFound {
            ResourceNotFound(.applicationNotExist)
        }

        /// 无法获取应用或应用不属于当前项目。
        public static var applicationProjectNotMatch: ResourceNotFound {
            ResourceNotFound(.applicationProjectNotMatch)
        }

        /// 无法获取命名空间所属集群。
        public static var clusterNotExist: ResourceNotFound {
            ResourceNotFound(.clusterNotExist)
        }

        /// 集群所属私有网络不存在。
        public static var clusterVpcNotExist: ResourceNotFound {
            ResourceNotFound(.clusterVpcNotExist)
        }

        /// 找不到集群。
        public static var containergroupClusterNotfound: ResourceNotFound {
            ResourceNotFound(.containergroupClusterNotfound)
        }

        /// 无法找到该部署组所属集群和命名空间。
        public static var containergroupGroupNamespaceClusterNotFound: ResourceNotFound {
            ResourceNotFound(.containergroupGroupNamespaceClusterNotFound)
        }

        /// 无法找到该部署组。
        public static var containergroupGroupNotFound: ResourceNotFound {
            ResourceNotFound(.containergroupGroupNotFound)
        }

        /// TSF MASTER 资源不存在。
        public static var cvmcaeMasterResourceNotFound: ResourceNotFound {
            ResourceNotFound(.cvmcaeMasterResourceNotFound)
        }

        /// 镜像仓库不存在。
        public static var errNoRepo: ResourceNotFound {
            ResourceNotFound(.errNoRepo)
        }

        /// 用户错误。
        public static var errNoUser: ResourceNotFound {
            ResourceNotFound(.errNoUser)
        }

        /// 无法获取分组所属应用。
        public static var groupApplicationNotExist: ResourceNotFound {
            ResourceNotFound(.groupApplicationNotExist)
        }

        /// 无法获取分组所属命名空间。
        public static var groupNamespaceNotExist: ResourceNotFound {
            ResourceNotFound(.groupNamespaceNotExist)
        }

        /// 此部署组不存在，无法执行该操作。
        public static var groupNotExist: ResourceNotFound {
            ResourceNotFound(.groupNotExist)
        }

        /// 无法获取机器信息。
        public static var instanceNotExist: ResourceNotFound {
            ResourceNotFound(.instanceNotExist)
        }

        /// [%s]模块未提供该接口[%s]。。
        public static var interfaceNotFound: ResourceNotFound {
            ResourceNotFound(.interfaceNotFound)
        }

        /// 无法找到License服务器。
        public static var licenseServerNotFound: ResourceNotFound {
            ResourceNotFound(.licenseServerNotFound)
        }

        /// 目标微服务已离线[%s]。。
        public static var microserviceOffline: ResourceNotFound {
            ResourceNotFound(.microserviceOffline)
        }

        /// 无法获取命名空间。
        public static var namespaceNotExist: ResourceNotFound {
            ResourceNotFound(.namespaceNotExist)
        }

        /// 资源对象不存在。
        public static var objectNoExist: ResourceNotFound {
            ResourceNotFound(.objectNoExist)
        }

        /// 无法获取服务，无法执行该操作。
        public static var serviceNotExist: ResourceNotFound {
            ResourceNotFound(.serviceNotExist)
        }

        /// 任务不存在。
        public static var taskNotFound: ResourceNotFound {
            ResourceNotFound(.taskNotFound)
        }

        /// TKE 中不存在该集群。
        public static var tkeClusterNotExists: ResourceNotFound {
            ResourceNotFound(.tkeClusterNotExists)
        }

        public func asTsfError() -> TCTsfError {
            let code: TCTsfError.Code
            switch self.error {
            case .applicationNotExist:
                code = .resourceNotFound_ApplicationNotExist
            case .applicationProjectNotMatch:
                code = .resourceNotFound_ApplicationProjectNotMatch
            case .clusterNotExist:
                code = .resourceNotFound_ClusterNotExist
            case .clusterVpcNotExist:
                code = .resourceNotFound_ClusterVpcNotExist
            case .containergroupClusterNotfound:
                code = .resourceNotFound_ContainergroupClusterNotfound
            case .containergroupGroupNamespaceClusterNotFound:
                code = .resourceNotFound_ContainergroupGroupNamespaceClusterNotFound
            case .containergroupGroupNotFound:
                code = .resourceNotFound_ContainergroupGroupNotFound
            case .cvmcaeMasterResourceNotFound:
                code = .resourceNotFound_CvmcaeMasterResourceNotFound
            case .errNoRepo:
                code = .resourceNotFound_ErrNoRepo
            case .errNoUser:
                code = .resourceNotFound_ErrNoUser
            case .groupApplicationNotExist:
                code = .resourceNotFound_GroupApplicationNotExist
            case .groupNamespaceNotExist:
                code = .resourceNotFound_GroupNamespaceNotExist
            case .groupNotExist:
                code = .resourceNotFound_GroupNotExist
            case .instanceNotExist:
                code = .resourceNotFound_InstanceNotExist
            case .interfaceNotFound:
                code = .resourceNotFound_InterfaceNotFound
            case .licenseServerNotFound:
                code = .resourceNotFound_LicenseServerNotFound
            case .microserviceOffline:
                code = .resourceNotFound_MicroserviceOffline
            case .namespaceNotExist:
                code = .resourceNotFound_NamespaceNotExist
            case .objectNoExist:
                code = .resourceNotFound_ObjectNoExist
            case .serviceNotExist:
                code = .resourceNotFound_ServiceNotExist
            case .taskNotFound:
                code = .resourceNotFound_TaskNotFound
            case .tkeClusterNotExists:
                code = .resourceNotFound_TkeClusterNotExists
            }
            return TCTsfError(code, context: self.context)
        }
    }
}
