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

import Logging
import NIOCore
import TecoCore

extension Tcm {
    /// CreateMesh请求参数结构体
    public struct CreateMeshRequest: TCRequest {
        /// Mesh名称
        public let displayName: String

        /// Mesh版本
        public let meshVersion: String

        /// Mesh类型，取值范围：
        /// - HOSTED：托管网格
        public let type: String

        /// Mesh配置
        public let config: MeshConfig

        /// 关联集群
        public let clusterList: [Cluster]?

        /// 标签列表
        public let tagList: [Tag]?

        public init(displayName: String, meshVersion: String, type: String, config: MeshConfig, clusterList: [Cluster]? = nil, tagList: [Tag]? = nil) {
            self.displayName = displayName
            self.meshVersion = meshVersion
            self.type = type
            self.config = config
            self.clusterList = clusterList
            self.tagList = tagList
        }

        enum CodingKeys: String, CodingKey {
            case displayName = "DisplayName"
            case meshVersion = "MeshVersion"
            case type = "Type"
            case config = "Config"
            case clusterList = "ClusterList"
            case tagList = "TagList"
        }
    }

    /// CreateMesh返回参数结构体
    public struct CreateMeshResponse: TCResponse {
        /// 创建的Mesh的Id
        public let meshId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case meshId = "MeshId"
            case requestId = "RequestId"
        }
    }

    /// 创建网格
    @inlinable
    public func createMesh(_ input: CreateMeshRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMeshResponse> {
        self.client.execute(action: "CreateMesh", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建网格
    @inlinable
    public func createMesh(_ input: CreateMeshRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMeshResponse {
        try await self.client.execute(action: "CreateMesh", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建网格
    @inlinable
    public func createMesh(displayName: String, meshVersion: String, type: String, config: MeshConfig, clusterList: [Cluster]? = nil, tagList: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMeshResponse> {
        self.createMesh(.init(displayName: displayName, meshVersion: meshVersion, type: type, config: config, clusterList: clusterList, tagList: tagList), region: region, logger: logger, on: eventLoop)
    }

    /// 创建网格
    @inlinable
    public func createMesh(displayName: String, meshVersion: String, type: String, config: MeshConfig, clusterList: [Cluster]? = nil, tagList: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMeshResponse {
        try await self.createMesh(.init(displayName: displayName, meshVersion: meshVersion, type: type, config: config, clusterList: clusterList, tagList: tagList), region: region, logger: logger, on: eventLoop)
    }
}
