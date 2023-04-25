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

extension TCOceanusError {
    public struct ResourceUnavailable: TCOceanusErrorType {
        enum Code: String {
            case beUseBySomeJobConfig = "ResourceUnavailable.BeUseBySomeJobConfig"
            case checkResourceLocExists = "ResourceUnavailable.CheckResourceLocExists"
            case cluster = "ResourceUnavailable.Cluster"
            case clusterGroupStatus = "ResourceUnavailable.ClusterGroupStatus"
            case failedToBescribeResources = "ResourceUnavailable.FailedToBescribeResources"
            case getJobPublishedJobConfig = "ResourceUnavailable.GetJobPublishedJobConfig"
            case jobResourceConfigNotReady = "ResourceUnavailable.JobResourceConfigNotReady"
            case noRunningJobInstancesFoundForJobId = "ResourceUnavailable.NoRunningJobInstancesFoundForJobId"
            case notAllowedToBeDeleted = "ResourceUnavailable.NotAllowedToBeDeleted"
            case notAllowedToBeStopOrPause = "ResourceUnavailable.NotAllowedToBeStopOrPause"
            case reqCuMem = "ResourceUnavailable.ReqCuMem"
            case resourceLocNotExists = "ResourceUnavailable.ResourceLocNotExists"
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

        /// 被某个作业配置使用。
        public static var beUseBySomeJobConfig: ResourceUnavailable {
            ResourceUnavailable(.beUseBySomeJobConfig)
        }

        /// 检查资源位置是否存在错误。
        public static var checkResourceLocExists: ResourceUnavailable {
            ResourceUnavailable(.checkResourceLocExists)
        }

        /// 集群处于非运行状态。
        public static var cluster: ResourceUnavailable {
            ResourceUnavailable(.cluster)
        }

        /// 群集组状态错误。
        public static var clusterGroupStatus: ResourceUnavailable {
            ResourceUnavailable(.clusterGroupStatus)
        }

        /// 失败的目标资源。
        public static var failedToBescribeResources: ResourceUnavailable {
            ResourceUnavailable(.failedToBescribeResources)
        }

        /// 获取发布的作业作业配置错误。
        public static var getJobPublishedJobConfig: ResourceUnavailable {
            ResourceUnavailable(.getJobPublishedJobConfig)
        }

        /// 作业资源配置未就绪。
        public static var jobResourceConfigNotReady: ResourceUnavailable {
            ResourceUnavailable(.jobResourceConfigNotReady)
        }

        /// 找不到JobId的正在运行的作业实例。
        public static var noRunningJobInstancesFoundForJobId: ResourceUnavailable {
            ResourceUnavailable(.noRunningJobInstancesFoundForJobId)
        }

        /// 不允许删除错误。
        public static var notAllowedToBeDeleted: ResourceUnavailable {
            ResourceUnavailable(.notAllowedToBeDeleted)
        }

        /// 不允许停止或暂停错误。
        public static var notAllowedToBeStopOrPause: ResourceUnavailable {
            ResourceUnavailable(.notAllowedToBeStopOrPause)
        }

        /// 共享群集只允许CuMem=4。
        public static var reqCuMem: ResourceUnavailable {
            ResourceUnavailable(.reqCuMem)
        }

        /// cos上的程序包不存在。
        public static var resourceLocNotExists: ResourceUnavailable {
            ResourceUnavailable(.resourceLocNotExists)
        }

        /// 资源不可用。
        public static var other: ResourceUnavailable {
            ResourceUnavailable(.other)
        }

        public func asOceanusError() -> TCOceanusError {
            let code: TCOceanusError.Code
            switch self.error {
            case .beUseBySomeJobConfig:
                code = .resourceUnavailable_BeUseBySomeJobConfig
            case .checkResourceLocExists:
                code = .resourceUnavailable_CheckResourceLocExists
            case .cluster:
                code = .resourceUnavailable_Cluster
            case .clusterGroupStatus:
                code = .resourceUnavailable_ClusterGroupStatus
            case .failedToBescribeResources:
                code = .resourceUnavailable_FailedToBescribeResources
            case .getJobPublishedJobConfig:
                code = .resourceUnavailable_GetJobPublishedJobConfig
            case .jobResourceConfigNotReady:
                code = .resourceUnavailable_JobResourceConfigNotReady
            case .noRunningJobInstancesFoundForJobId:
                code = .resourceUnavailable_NoRunningJobInstancesFoundForJobId
            case .notAllowedToBeDeleted:
                code = .resourceUnavailable_NotAllowedToBeDeleted
            case .notAllowedToBeStopOrPause:
                code = .resourceUnavailable_NotAllowedToBeStopOrPause
            case .reqCuMem:
                code = .resourceUnavailable_ReqCuMem
            case .resourceLocNotExists:
                code = .resourceUnavailable_ResourceLocNotExists
            case .other:
                code = .resourceUnavailable
            }
            return TCOceanusError(code, context: self.context)
        }
    }
}
