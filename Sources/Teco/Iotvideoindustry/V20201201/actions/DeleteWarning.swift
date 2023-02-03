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
    /// DeleteWarning请求参数结构体
    public struct DeleteWarningRequest: TCRequestModel {
        /// 告警ID
        public let id: Int64?

        /// 告警索引
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

    /// DeleteWarning返回参数结构体
    public struct DeleteWarningResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设备告警-删除告警
    @inlinable @discardableResult
    public func deleteWarning(_ input: DeleteWarningRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteWarningResponse> {
        self.client.execute(action: "DeleteWarning", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设备告警-删除告警
    @inlinable @discardableResult
    public func deleteWarning(_ input: DeleteWarningRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteWarningResponse {
        try await self.client.execute(action: "DeleteWarning", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设备告警-删除告警
    @inlinable @discardableResult
    public func deleteWarning(id: Int64? = nil, index: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteWarningResponse> {
        let input = DeleteWarningRequest(id: id, index: index)
        return self.client.execute(action: "DeleteWarning", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设备告警-删除告警
    @inlinable @discardableResult
    public func deleteWarning(id: Int64? = nil, index: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteWarningResponse {
        let input = DeleteWarningRequest(id: id, index: index)
        return try await self.client.execute(action: "DeleteWarning", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
