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

extension Cdb {
    /// StopDBImportJob请求参数结构体
    public struct StopDBImportJobRequest: TCRequest {
        /// 异步任务的请求 ID。
        public let asyncRequestId: String

        public init(asyncRequestId: String) {
            self.asyncRequestId = asyncRequestId
        }

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
        }
    }

    /// StopDBImportJob返回参数结构体
    public struct StopDBImportJobResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 终止数据导入任务
    ///
    /// 本接口(StopDBImportJob)用于终止数据导入任务。
    @inlinable @discardableResult
    public func stopDBImportJob(_ input: StopDBImportJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopDBImportJobResponse> {
        self.client.execute(action: "StopDBImportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 终止数据导入任务
    ///
    /// 本接口(StopDBImportJob)用于终止数据导入任务。
    @inlinable @discardableResult
    public func stopDBImportJob(_ input: StopDBImportJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopDBImportJobResponse {
        try await self.client.execute(action: "StopDBImportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 终止数据导入任务
    ///
    /// 本接口(StopDBImportJob)用于终止数据导入任务。
    @inlinable @discardableResult
    public func stopDBImportJob(asyncRequestId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopDBImportJobResponse> {
        self.stopDBImportJob(.init(asyncRequestId: asyncRequestId), region: region, logger: logger, on: eventLoop)
    }

    /// 终止数据导入任务
    ///
    /// 本接口(StopDBImportJob)用于终止数据导入任务。
    @inlinable @discardableResult
    public func stopDBImportJob(asyncRequestId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopDBImportJobResponse {
        try await self.stopDBImportJob(.init(asyncRequestId: asyncRequestId), region: region, logger: logger, on: eventLoop)
    }
}
