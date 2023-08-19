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

extension Lcic {
    /// DeleteRecord请求参数结构体
    public struct DeleteRecordRequest: TCRequest {
        /// 房间Id。
        public let roomId: Int64

        /// 低代码互动课堂的SdkAppId。
        public let sdkAppId: Int64

        public init(roomId: Int64, sdkAppId: Int64) {
            self.roomId = roomId
            self.sdkAppId = sdkAppId
        }

        enum CodingKeys: String, CodingKey {
            case roomId = "RoomId"
            case sdkAppId = "SdkAppId"
        }
    }

    /// DeleteRecord返回参数结构体
    public struct DeleteRecordResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除指定房间的录制文件
    @inlinable @discardableResult
    public func deleteRecord(_ input: DeleteRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRecordResponse> {
        self.client.execute(action: "DeleteRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除指定房间的录制文件
    @inlinable @discardableResult
    public func deleteRecord(_ input: DeleteRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRecordResponse {
        try await self.client.execute(action: "DeleteRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除指定房间的录制文件
    @inlinable @discardableResult
    public func deleteRecord(roomId: Int64, sdkAppId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRecordResponse> {
        self.deleteRecord(.init(roomId: roomId, sdkAppId: sdkAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除指定房间的录制文件
    @inlinable @discardableResult
    public func deleteRecord(roomId: Int64, sdkAppId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRecordResponse {
        try await self.deleteRecord(.init(roomId: roomId, sdkAppId: sdkAppId), region: region, logger: logger, on: eventLoop)
    }
}
