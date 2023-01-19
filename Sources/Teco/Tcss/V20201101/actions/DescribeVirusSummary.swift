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

extension Tcss {
    /// DescribeVirusSummary请求参数结构体
    public struct DescribeVirusSummaryRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeVirusSummary返回参数结构体
    public struct DescribeVirusSummaryResponse: TCResponseModel {
        /// 最近的一次扫描任务id
        public let taskId: String

        /// 木马影响容器个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskContainerCnt: UInt64?

        /// 待处理风险个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskCnt: UInt64?

        /// 病毒库更新时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let virusDataBaseModifyTime: String?

        /// 木马影响容器个数较昨日增长
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskContainerIncrease: Int64?

        /// 待处理风险个数较昨日增长
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskIncrease: Int64?

        /// 隔离事件个数较昨日新增
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isolateIncrease: Int64?

        /// 隔离事件总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isolateCnt: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case riskContainerCnt = "RiskContainerCnt"
            case riskCnt = "RiskCnt"
            case virusDataBaseModifyTime = "VirusDataBaseModifyTime"
            case riskContainerIncrease = "RiskContainerIncrease"
            case riskIncrease = "RiskIncrease"
            case isolateIncrease = "IsolateIncrease"
            case isolateCnt = "IsolateCnt"
            case requestId = "RequestId"
        }
    }

    /// 运行时查询木马概览信息
    @inlinable
    public func describeVirusSummary(_ input: DescribeVirusSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVirusSummaryResponse> {
        self.client.execute(action: "DescribeVirusSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 运行时查询木马概览信息
    @inlinable
    public func describeVirusSummary(_ input: DescribeVirusSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVirusSummaryResponse {
        try await self.client.execute(action: "DescribeVirusSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 运行时查询木马概览信息
    @inlinable
    public func describeVirusSummary(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVirusSummaryResponse> {
        self.describeVirusSummary(DescribeVirusSummaryRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 运行时查询木马概览信息
    @inlinable
    public func describeVirusSummary(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVirusSummaryResponse {
        try await self.describeVirusSummary(DescribeVirusSummaryRequest(), region: region, logger: logger, on: eventLoop)
    }
}
