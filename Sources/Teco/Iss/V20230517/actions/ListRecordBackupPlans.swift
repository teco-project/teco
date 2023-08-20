//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Iss {
    /// ListRecordBackupPlans请求参数结构体
    public struct ListRecordBackupPlansRequest: TCRequest {
        public init() {
        }
    }

    /// ListRecordBackupPlans返回参数结构体
    public struct ListRecordBackupPlansResponse: TCResponse {
        /// 返回数据
        public let data: [ListRecordBackupPlanData]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询录像上云计划列表
    ///
    /// 用于查询录像上云计划列表。
    @inlinable
    public func listRecordBackupPlans(_ input: ListRecordBackupPlansRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRecordBackupPlansResponse> {
        self.client.execute(action: "ListRecordBackupPlans", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询录像上云计划列表
    ///
    /// 用于查询录像上云计划列表。
    @inlinable
    public func listRecordBackupPlans(_ input: ListRecordBackupPlansRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRecordBackupPlansResponse {
        try await self.client.execute(action: "ListRecordBackupPlans", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询录像上云计划列表
    ///
    /// 用于查询录像上云计划列表。
    @inlinable
    public func listRecordBackupPlans(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRecordBackupPlansResponse> {
        self.listRecordBackupPlans(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询录像上云计划列表
    ///
    /// 用于查询录像上云计划列表。
    @inlinable
    public func listRecordBackupPlans(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRecordBackupPlansResponse {
        try await self.listRecordBackupPlans(.init(), region: region, logger: logger, on: eventLoop)
    }
}
