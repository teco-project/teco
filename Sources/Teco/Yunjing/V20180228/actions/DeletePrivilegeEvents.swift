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

extension Yunjing {
    /// DeletePrivilegeEvents请求参数结构体
    public struct DeletePrivilegeEventsRequest: TCRequestModel {
        /// ID数组，最大100条。
        public let ids: [UInt64]

        public init(ids: [UInt64]) {
            self.ids = ids
        }

        enum CodingKeys: String, CodingKey {
            case ids = "Ids"
        }
    }

    /// DeletePrivilegeEvents返回参数结构体
    public struct DeletePrivilegeEventsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除本地提权事件
    ///
    /// 根据Ids删除本地提权
    @inlinable @discardableResult
    public func deletePrivilegeEvents(_ input: DeletePrivilegeEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePrivilegeEventsResponse> {
        self.client.execute(action: "DeletePrivilegeEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除本地提权事件
    ///
    /// 根据Ids删除本地提权
    @inlinable @discardableResult
    public func deletePrivilegeEvents(_ input: DeletePrivilegeEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePrivilegeEventsResponse {
        try await self.client.execute(action: "DeletePrivilegeEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除本地提权事件
    ///
    /// 根据Ids删除本地提权
    @inlinable @discardableResult
    public func deletePrivilegeEvents(ids: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePrivilegeEventsResponse> {
        self.deletePrivilegeEvents(DeletePrivilegeEventsRequest(ids: ids), region: region, logger: logger, on: eventLoop)
    }

    /// 删除本地提权事件
    ///
    /// 根据Ids删除本地提权
    @inlinable @discardableResult
    public func deletePrivilegeEvents(ids: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePrivilegeEventsResponse {
        try await self.deletePrivilegeEvents(DeletePrivilegeEventsRequest(ids: ids), region: region, logger: logger, on: eventLoop)
    }
}
