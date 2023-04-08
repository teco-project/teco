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

extension Tsf {
    /// DeleteLane请求参数结构体
    public struct DeleteLaneRequest: TCRequestModel {
        /// 泳道Idl
        public let laneId: String

        public init(laneId: String) {
            self.laneId = laneId
        }

        enum CodingKeys: String, CodingKey {
            case laneId = "LaneId"
        }
    }

    /// DeleteLane返回参数结构体
    public struct DeleteLaneResponse: TCResponseModel {
        /// true / false
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 删除泳道
    @inlinable
    public func deleteLane(_ input: DeleteLaneRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLaneResponse> {
        self.client.execute(action: "DeleteLane", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除泳道
    @inlinable
    public func deleteLane(_ input: DeleteLaneRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLaneResponse {
        try await self.client.execute(action: "DeleteLane", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除泳道
    @inlinable
    public func deleteLane(laneId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLaneResponse> {
        self.deleteLane(.init(laneId: laneId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除泳道
    @inlinable
    public func deleteLane(laneId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLaneResponse {
        try await self.deleteLane(.init(laneId: laneId), region: region, logger: logger, on: eventLoop)
    }
}
