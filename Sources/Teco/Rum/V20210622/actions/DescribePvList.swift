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

extension Rum {
    /// DescribePvList请求参数结构体
    public struct DescribePvListRequest: TCRequest {
        /// ID
        public let projectId: Int64

        /// 结束时间
        public let endTime: String

        /// 开始时间
        public let startTime: String

        /// 获取day：d，   获取min则不填
        public let dimension: String?

        public init(projectId: Int64, endTime: String, startTime: String, dimension: String? = nil) {
            self.projectId = projectId
            self.endTime = endTime
            self.startTime = startTime
            self.dimension = dimension
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case endTime = "EndTime"
            case startTime = "StartTime"
            case dimension = "Dimension"
        }
    }

    /// DescribePvList返回参数结构体
    public struct DescribePvListResponse: TCResponse {
        /// pv列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectPvSet: [RumPvInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case projectPvSet = "ProjectPvSet"
            case requestId = "RequestId"
        }
    }

    /// 获取PV列表
    ///
    /// 获取项目下的PV列表
    @inlinable
    public func describePvList(_ input: DescribePvListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePvListResponse> {
        self.client.execute(action: "DescribePvList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取PV列表
    ///
    /// 获取项目下的PV列表
    @inlinable
    public func describePvList(_ input: DescribePvListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePvListResponse {
        try await self.client.execute(action: "DescribePvList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取PV列表
    ///
    /// 获取项目下的PV列表
    @inlinable
    public func describePvList(projectId: Int64, endTime: String, startTime: String, dimension: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePvListResponse> {
        self.describePvList(.init(projectId: projectId, endTime: endTime, startTime: startTime, dimension: dimension), region: region, logger: logger, on: eventLoop)
    }

    /// 获取PV列表
    ///
    /// 获取项目下的PV列表
    @inlinable
    public func describePvList(projectId: Int64, endTime: String, startTime: String, dimension: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePvListResponse {
        try await self.describePvList(.init(projectId: projectId, endTime: endTime, startTime: startTime, dimension: dimension), region: region, logger: logger, on: eventLoop)
    }
}
