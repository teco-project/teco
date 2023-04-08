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

extension Thpc {
    /// DeleteClusterStorageOption请求参数结构体
    public struct DeleteClusterStorageOptionRequest: TCRequestModel {
        /// 集群ID。
        public let clusterId: String

        /// 本地挂载路径。
        public let localPath: String

        public init(clusterId: String, localPath: String) {
            self.clusterId = clusterId
            self.localPath = localPath
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case localPath = "LocalPath"
        }
    }

    /// DeleteClusterStorageOption返回参数结构体
    public struct DeleteClusterStorageOptionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除集群存储选项
    ///
    /// 本接口 (DeleteClusterStorageOption) 用于删除集群存储选项信息。
    @inlinable @discardableResult
    public func deleteClusterStorageOption(_ input: DeleteClusterStorageOptionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteClusterStorageOptionResponse> {
        self.client.execute(action: "DeleteClusterStorageOption", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除集群存储选项
    ///
    /// 本接口 (DeleteClusterStorageOption) 用于删除集群存储选项信息。
    @inlinable @discardableResult
    public func deleteClusterStorageOption(_ input: DeleteClusterStorageOptionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteClusterStorageOptionResponse {
        try await self.client.execute(action: "DeleteClusterStorageOption", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除集群存储选项
    ///
    /// 本接口 (DeleteClusterStorageOption) 用于删除集群存储选项信息。
    @inlinable @discardableResult
    public func deleteClusterStorageOption(clusterId: String, localPath: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteClusterStorageOptionResponse> {
        self.deleteClusterStorageOption(.init(clusterId: clusterId, localPath: localPath), region: region, logger: logger, on: eventLoop)
    }

    /// 删除集群存储选项
    ///
    /// 本接口 (DeleteClusterStorageOption) 用于删除集群存储选项信息。
    @inlinable @discardableResult
    public func deleteClusterStorageOption(clusterId: String, localPath: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteClusterStorageOptionResponse {
        try await self.deleteClusterStorageOption(.init(clusterId: clusterId, localPath: localPath), region: region, logger: logger, on: eventLoop)
    }
}
