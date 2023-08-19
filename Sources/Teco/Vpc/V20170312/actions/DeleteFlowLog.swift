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

extension Vpc {
    /// DeleteFlowLog请求参数结构体
    public struct DeleteFlowLogRequest: TCRequest {
        /// 流日志唯一ID。
        public let flowLogId: String

        /// 私用网络ID或者统一ID，建议使用统一ID，删除云联网流日志时，可不填，其他流日志类型必填。
        public let vpcId: String?

        public init(flowLogId: String, vpcId: String? = nil) {
            self.flowLogId = flowLogId
            self.vpcId = vpcId
        }

        enum CodingKeys: String, CodingKey {
            case flowLogId = "FlowLogId"
            case vpcId = "VpcId"
        }
    }

    /// DeleteFlowLog返回参数结构体
    public struct DeleteFlowLogResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除流日志
    ///
    /// 本接口（DeleteFlowLog）用于删除流日志。
    @inlinable @discardableResult
    public func deleteFlowLog(_ input: DeleteFlowLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFlowLogResponse> {
        self.client.execute(action: "DeleteFlowLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除流日志
    ///
    /// 本接口（DeleteFlowLog）用于删除流日志。
    @inlinable @discardableResult
    public func deleteFlowLog(_ input: DeleteFlowLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFlowLogResponse {
        try await self.client.execute(action: "DeleteFlowLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除流日志
    ///
    /// 本接口（DeleteFlowLog）用于删除流日志。
    @inlinable @discardableResult
    public func deleteFlowLog(flowLogId: String, vpcId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFlowLogResponse> {
        self.deleteFlowLog(.init(flowLogId: flowLogId, vpcId: vpcId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除流日志
    ///
    /// 本接口（DeleteFlowLog）用于删除流日志。
    @inlinable @discardableResult
    public func deleteFlowLog(flowLogId: String, vpcId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFlowLogResponse {
        try await self.deleteFlowLog(.init(flowLogId: flowLogId, vpcId: vpcId), region: region, logger: logger, on: eventLoop)
    }
}
