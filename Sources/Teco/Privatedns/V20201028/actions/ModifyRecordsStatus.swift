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

extension Privatedns {
    /// ModifyRecordsStatus请求参数结构体
    public struct ModifyRecordsStatusRequest: TCRequestModel {
        /// 私有域ID
        public let zoneId: String

        /// 解析记录ID列表
        public let recordIds: [Int64]

        /// enabled：生效，disabled：失效
        public let status: String

        public init(zoneId: String, recordIds: [Int64], status: String) {
            self.zoneId = zoneId
            self.recordIds = recordIds
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case recordIds = "RecordIds"
            case status = "Status"
        }
    }

    /// ModifyRecordsStatus返回参数结构体
    public struct ModifyRecordsStatusResponse: TCResponseModel {
        /// 私有域ID
        public let zoneId: String

        /// 解析记录ID列表
        public let recordIds: [Int64]

        /// enabled：生效，disabled：失效
        public let status: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case recordIds = "RecordIds"
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 修改解析记录状态
    @inlinable
    public func modifyRecordsStatus(_ input: ModifyRecordsStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRecordsStatusResponse> {
        self.client.execute(action: "ModifyRecordsStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改解析记录状态
    @inlinable
    public func modifyRecordsStatus(_ input: ModifyRecordsStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRecordsStatusResponse {
        try await self.client.execute(action: "ModifyRecordsStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改解析记录状态
    @inlinable
    public func modifyRecordsStatus(zoneId: String, recordIds: [Int64], status: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRecordsStatusResponse> {
        self.modifyRecordsStatus(ModifyRecordsStatusRequest(zoneId: zoneId, recordIds: recordIds, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 修改解析记录状态
    @inlinable
    public func modifyRecordsStatus(zoneId: String, recordIds: [Int64], status: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRecordsStatusResponse {
        try await self.modifyRecordsStatus(ModifyRecordsStatusRequest(zoneId: zoneId, recordIds: recordIds, status: status), region: region, logger: logger, on: eventLoop)
    }
}
