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

extension Yunjing {
    /// SetBashEventsStatus请求参数结构体
    public struct SetBashEventsStatusRequest: TCRequestModel {
        /// ID数组，最大100条。
        public let ids: [UInt64]

        /// 新状态(0-待处理 1-高危 2-正常)
        public let status: UInt64

        public init(ids: [UInt64], status: UInt64) {
            self.ids = ids
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case ids = "Ids"
            case status = "Status"
        }
    }

    /// SetBashEventsStatus返回参数结构体
    public struct SetBashEventsStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置高危命令事件状态
    @inlinable
    public func setBashEventsStatus(_ input: SetBashEventsStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetBashEventsStatusResponse> {
        self.client.execute(action: "SetBashEventsStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置高危命令事件状态
    @inlinable
    public func setBashEventsStatus(_ input: SetBashEventsStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetBashEventsStatusResponse {
        try await self.client.execute(action: "SetBashEventsStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置高危命令事件状态
    @inlinable
    public func setBashEventsStatus(ids: [UInt64], status: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetBashEventsStatusResponse> {
        self.setBashEventsStatus(SetBashEventsStatusRequest(ids: ids, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 设置高危命令事件状态
    @inlinable
    public func setBashEventsStatus(ids: [UInt64], status: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetBashEventsStatusResponse {
        try await self.setBashEventsStatus(SetBashEventsStatusRequest(ids: ids, status: status), region: region, logger: logger, on: eventLoop)
    }
}
