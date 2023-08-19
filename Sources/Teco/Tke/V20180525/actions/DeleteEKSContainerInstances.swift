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

extension Tke {
    /// DeleteEKSContainerInstances请求参数结构体
    public struct DeleteEKSContainerInstancesRequest: TCRequest {
        /// 需要删除的EksCi的Id。 最大数量不超过20
        public let eksCiIds: [String]

        /// 是否释放为EksCi自动创建的Eip
        public let releaseAutoCreatedEip: Bool?

        public init(eksCiIds: [String], releaseAutoCreatedEip: Bool? = nil) {
            self.eksCiIds = eksCiIds
            self.releaseAutoCreatedEip = releaseAutoCreatedEip
        }

        enum CodingKeys: String, CodingKey {
            case eksCiIds = "EksCiIds"
            case releaseAutoCreatedEip = "ReleaseAutoCreatedEip"
        }
    }

    /// DeleteEKSContainerInstances返回参数结构体
    public struct DeleteEKSContainerInstancesResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除容器实例
    ///
    /// 删除容器实例，可批量删除
    @inlinable @discardableResult
    public func deleteEKSContainerInstances(_ input: DeleteEKSContainerInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEKSContainerInstancesResponse> {
        self.client.execute(action: "DeleteEKSContainerInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除容器实例
    ///
    /// 删除容器实例，可批量删除
    @inlinable @discardableResult
    public func deleteEKSContainerInstances(_ input: DeleteEKSContainerInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEKSContainerInstancesResponse {
        try await self.client.execute(action: "DeleteEKSContainerInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除容器实例
    ///
    /// 删除容器实例，可批量删除
    @inlinable @discardableResult
    public func deleteEKSContainerInstances(eksCiIds: [String], releaseAutoCreatedEip: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEKSContainerInstancesResponse> {
        self.deleteEKSContainerInstances(.init(eksCiIds: eksCiIds, releaseAutoCreatedEip: releaseAutoCreatedEip), region: region, logger: logger, on: eventLoop)
    }

    /// 删除容器实例
    ///
    /// 删除容器实例，可批量删除
    @inlinable @discardableResult
    public func deleteEKSContainerInstances(eksCiIds: [String], releaseAutoCreatedEip: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEKSContainerInstancesResponse {
        try await self.deleteEKSContainerInstances(.init(eksCiIds: eksCiIds, releaseAutoCreatedEip: releaseAutoCreatedEip), region: region, logger: logger, on: eventLoop)
    }
}
