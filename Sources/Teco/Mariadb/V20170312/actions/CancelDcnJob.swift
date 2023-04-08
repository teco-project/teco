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

extension Mariadb {
    /// CancelDcnJob请求参数结构体
    public struct CancelDcnJobRequest: TCRequestModel {
        /// 灾备实例ID
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// CancelDcnJob返回参数结构体
    public struct CancelDcnJobResponse: TCResponseModel {
        /// 流程ID
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 取消DCN同步
    @inlinable
    public func cancelDcnJob(_ input: CancelDcnJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelDcnJobResponse> {
        self.client.execute(action: "CancelDcnJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 取消DCN同步
    @inlinable
    public func cancelDcnJob(_ input: CancelDcnJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelDcnJobResponse {
        try await self.client.execute(action: "CancelDcnJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 取消DCN同步
    @inlinable
    public func cancelDcnJob(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelDcnJobResponse> {
        self.cancelDcnJob(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 取消DCN同步
    @inlinable
    public func cancelDcnJob(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelDcnJobResponse {
        try await self.cancelDcnJob(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
