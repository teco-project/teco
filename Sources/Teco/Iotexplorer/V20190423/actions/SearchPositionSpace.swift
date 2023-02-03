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

extension Iotexplorer {
    /// SearchPositionSpace请求参数结构体
    public struct SearchPositionSpaceRequest: TCRequestModel {
        /// 项目Id
        public let projectId: String

        /// 位置空间名字
        public let spaceName: String

        /// 偏移量，从0开始
        public let offset: Int64

        /// 最大获取数量
        public let limit: Int64

        public init(projectId: String, spaceName: String, offset: Int64, limit: Int64) {
            self.projectId = projectId
            self.spaceName = spaceName
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case spaceName = "SpaceName"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// SearchPositionSpace返回参数结构体
    public struct SearchPositionSpaceResponse: TCResponseModel {
        /// 位置空间列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let list: [PositionSpaceInfo]?

        /// 符合条件的位置空间个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 搜索位置空间
    @inlinable
    public func searchPositionSpace(_ input: SearchPositionSpaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchPositionSpaceResponse> {
        self.client.execute(action: "SearchPositionSpace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 搜索位置空间
    @inlinable
    public func searchPositionSpace(_ input: SearchPositionSpaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchPositionSpaceResponse {
        try await self.client.execute(action: "SearchPositionSpace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 搜索位置空间
    @inlinable
    public func searchPositionSpace(projectId: String, spaceName: String, offset: Int64, limit: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchPositionSpaceResponse> {
        let input = SearchPositionSpaceRequest(projectId: projectId, spaceName: spaceName, offset: offset, limit: limit)
        return self.client.execute(action: "SearchPositionSpace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 搜索位置空间
    @inlinable
    public func searchPositionSpace(projectId: String, spaceName: String, offset: Int64, limit: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchPositionSpaceResponse {
        let input = SearchPositionSpaceRequest(projectId: projectId, spaceName: spaceName, offset: offset, limit: limit)
        return try await self.client.execute(action: "SearchPositionSpace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
