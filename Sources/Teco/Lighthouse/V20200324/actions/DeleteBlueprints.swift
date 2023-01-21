//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Lighthouse {
    /// DeleteBlueprints请求参数结构体
    public struct DeleteBlueprintsRequest: TCRequestModel {
        /// 镜像ID列表。镜像ID，可通过[DescribeBlueprints](https://cloud.tencent.com/document/product/1207/47689)接口返回值中的BlueprintId获取。
        public let blueprintIds: [String]

        public init(blueprintIds: [String]) {
            self.blueprintIds = blueprintIds
        }

        enum CodingKeys: String, CodingKey {
            case blueprintIds = "BlueprintIds"
        }
    }

    /// DeleteBlueprints返回参数结构体
    public struct DeleteBlueprintsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除镜像
    ///
    /// 本接口 (DeleteBlueprints) 用于删除镜像。
    @inlinable @discardableResult
    public func deleteBlueprints(_ input: DeleteBlueprintsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBlueprintsResponse> {
        self.client.execute(action: "DeleteBlueprints", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除镜像
    ///
    /// 本接口 (DeleteBlueprints) 用于删除镜像。
    @inlinable @discardableResult
    public func deleteBlueprints(_ input: DeleteBlueprintsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBlueprintsResponse {
        try await self.client.execute(action: "DeleteBlueprints", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除镜像
    ///
    /// 本接口 (DeleteBlueprints) 用于删除镜像。
    @inlinable @discardableResult
    public func deleteBlueprints(blueprintIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBlueprintsResponse> {
        self.deleteBlueprints(DeleteBlueprintsRequest(blueprintIds: blueprintIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除镜像
    ///
    /// 本接口 (DeleteBlueprints) 用于删除镜像。
    @inlinable @discardableResult
    public func deleteBlueprints(blueprintIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBlueprintsResponse {
        try await self.deleteBlueprints(DeleteBlueprintsRequest(blueprintIds: blueprintIds), region: region, logger: logger, on: eventLoop)
    }
}
