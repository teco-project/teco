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

extension Ms {
    /// DeleteShieldInstances请求参数结构体
    public struct DeleteShieldInstancesRequest: TCRequestModel {
        /// 任务唯一标识ItemId的列表
        public let itemIds: [String]

        public init(itemIds: [String]) {
            self.itemIds = itemIds
        }

        enum CodingKeys: String, CodingKey {
            case itemIds = "ItemIds"
        }
    }

    /// DeleteShieldInstances返回参数结构体
    public struct DeleteShieldInstancesResponse: TCResponseModel {
        /// 任务状态: 1-已完成,2-处理中,3-处理出错,4-处理超时
        public let progress: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case progress = "Progress"
            case requestId = "RequestId"
        }
    }

    /// 批量删除提交过的app信息
    ///
    /// 删除一个或者多个app加固信息。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func deleteShieldInstances(_ input: DeleteShieldInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteShieldInstancesResponse> {
        self.client.execute(action: "DeleteShieldInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量删除提交过的app信息
    ///
    /// 删除一个或者多个app加固信息。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func deleteShieldInstances(_ input: DeleteShieldInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteShieldInstancesResponse {
        try await self.client.execute(action: "DeleteShieldInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量删除提交过的app信息
    ///
    /// 删除一个或者多个app加固信息。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func deleteShieldInstances(itemIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteShieldInstancesResponse> {
        self.deleteShieldInstances(DeleteShieldInstancesRequest(itemIds: itemIds), region: region, logger: logger, on: eventLoop)
    }

    /// 批量删除提交过的app信息
    ///
    /// 删除一个或者多个app加固信息。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func deleteShieldInstances(itemIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteShieldInstancesResponse {
        try await self.deleteShieldInstances(DeleteShieldInstancesRequest(itemIds: itemIds), region: region, logger: logger, on: eventLoop)
    }
}
