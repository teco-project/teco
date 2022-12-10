//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tke {
    /// 集群删除应用
    ///
    /// 在应用市场中集群删除某个应用
    @inlinable
    public func uninstallClusterRelease(_ input: UninstallClusterReleaseRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UninstallClusterReleaseResponse > {
        self.client.execute(action: "UninstallClusterRelease", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 集群删除应用
    ///
    /// 在应用市场中集群删除某个应用
    @inlinable
    public func uninstallClusterRelease(_ input: UninstallClusterReleaseRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UninstallClusterReleaseResponse {
        try await self.client.execute(action: "UninstallClusterRelease", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UninstallClusterRelease请求参数结构体
    public struct UninstallClusterReleaseRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        /// 应用名称
        public let name: String
        
        /// 应用命名空间
        public let namespace: String
        
        /// 集群类型
        public let clusterType: String?
        
        public init (clusterId: String, name: String, namespace: String, clusterType: String?) {
            self.clusterId = clusterId
            self.name = name
            self.namespace = namespace
            self.clusterType = clusterType
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case name = "Name"
            case namespace = "Namespace"
            case clusterType = "ClusterType"
        }
    }
    
    /// UninstallClusterRelease返回参数结构体
    public struct UninstallClusterReleaseResponse: TCResponseModel {
        /// 应用详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let release: PendingRelease
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case release = "Release"
            case requestId = "RequestId"
        }
    }
}