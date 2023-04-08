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

extension Dasb {
    /// DeleteDeviceGroups请求参数结构体
    public struct DeleteDeviceGroupsRequest: TCRequestModel {
        /// 待删除的资产组ID集合
        public let idSet: [UInt64]

        public init(idSet: [UInt64]) {
            self.idSet = idSet
        }

        enum CodingKeys: String, CodingKey {
            case idSet = "IdSet"
        }
    }

    /// DeleteDeviceGroups返回参数结构体
    public struct DeleteDeviceGroupsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除资产组
    @inlinable @discardableResult
    public func deleteDeviceGroups(_ input: DeleteDeviceGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDeviceGroupsResponse> {
        self.client.execute(action: "DeleteDeviceGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除资产组
    @inlinable @discardableResult
    public func deleteDeviceGroups(_ input: DeleteDeviceGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDeviceGroupsResponse {
        try await self.client.execute(action: "DeleteDeviceGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除资产组
    @inlinable @discardableResult
    public func deleteDeviceGroups(idSet: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDeviceGroupsResponse> {
        self.deleteDeviceGroups(.init(idSet: idSet), region: region, logger: logger, on: eventLoop)
    }

    /// 删除资产组
    @inlinable @discardableResult
    public func deleteDeviceGroups(idSet: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDeviceGroupsResponse {
        try await self.deleteDeviceGroups(.init(idSet: idSet), region: region, logger: logger, on: eventLoop)
    }
}
