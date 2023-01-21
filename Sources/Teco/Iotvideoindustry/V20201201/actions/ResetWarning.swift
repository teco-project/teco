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

extension Iotvideoindustry {
    /// ResetWarning请求参数结构体
    public struct ResetWarningRequest: TCRequestModel {
        /// 告警ID
        public let id: Int64?

        /// Es中告警ID
        public let index: String?

        public init(id: Int64? = nil, index: String? = nil) {
            self.id = id
            self.index = index
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case index = "Index"
        }
    }

    /// ResetWarning返回参数结构体
    public struct ResetWarningResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重置设备告警
    @inlinable @discardableResult
    public func resetWarning(_ input: ResetWarningRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetWarningResponse> {
        self.client.execute(action: "ResetWarning", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重置设备告警
    @inlinable @discardableResult
    public func resetWarning(_ input: ResetWarningRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetWarningResponse {
        try await self.client.execute(action: "ResetWarning", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重置设备告警
    @inlinable @discardableResult
    public func resetWarning(id: Int64? = nil, index: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetWarningResponse> {
        self.resetWarning(ResetWarningRequest(id: id, index: index), region: region, logger: logger, on: eventLoop)
    }

    /// 重置设备告警
    @inlinable @discardableResult
    public func resetWarning(id: Int64? = nil, index: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetWarningResponse {
        try await self.resetWarning(ResetWarningRequest(id: id, index: index), region: region, logger: logger, on: eventLoop)
    }
}
