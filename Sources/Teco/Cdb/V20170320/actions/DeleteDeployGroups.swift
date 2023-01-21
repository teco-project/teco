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

extension Cdb {
    /// DeleteDeployGroups请求参数结构体
    public struct DeleteDeployGroupsRequest: TCRequestModel {
        /// 要删除的置放群组 ID 列表。
        public let deployGroupIds: [String]

        public init(deployGroupIds: [String]) {
            self.deployGroupIds = deployGroupIds
        }

        enum CodingKeys: String, CodingKey {
            case deployGroupIds = "DeployGroupIds"
        }
    }

    /// DeleteDeployGroups返回参数结构体
    public struct DeleteDeployGroupsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除置放群组
    ///
    /// 根据置放群组ID删除置放群组（置放群组中有资源存在时不能删除该置放群组）
    @inlinable @discardableResult
    public func deleteDeployGroups(_ input: DeleteDeployGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDeployGroupsResponse> {
        self.client.execute(action: "DeleteDeployGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除置放群组
    ///
    /// 根据置放群组ID删除置放群组（置放群组中有资源存在时不能删除该置放群组）
    @inlinable @discardableResult
    public func deleteDeployGroups(_ input: DeleteDeployGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDeployGroupsResponse {
        try await self.client.execute(action: "DeleteDeployGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除置放群组
    ///
    /// 根据置放群组ID删除置放群组（置放群组中有资源存在时不能删除该置放群组）
    @inlinable @discardableResult
    public func deleteDeployGroups(deployGroupIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDeployGroupsResponse> {
        self.deleteDeployGroups(DeleteDeployGroupsRequest(deployGroupIds: deployGroupIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除置放群组
    ///
    /// 根据置放群组ID删除置放群组（置放群组中有资源存在时不能删除该置放群组）
    @inlinable @discardableResult
    public func deleteDeployGroups(deployGroupIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDeployGroupsResponse {
        try await self.deleteDeployGroups(DeleteDeployGroupsRequest(deployGroupIds: deployGroupIds), region: region, logger: logger, on: eventLoop)
    }
}
