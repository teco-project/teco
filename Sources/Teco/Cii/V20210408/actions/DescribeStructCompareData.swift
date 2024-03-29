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

extension Cii {
    /// DescribeStructCompareData请求参数结构体
    public struct DescribeStructCompareDataRequest: TCRequest {
        /// 主任务号
        public let mainTaskId: String?

        /// 子任务号
        public let subTaskId: String?

        public init(mainTaskId: String? = nil, subTaskId: String? = nil) {
            self.mainTaskId = mainTaskId
            self.subTaskId = subTaskId
        }

        enum CodingKeys: String, CodingKey {
            case mainTaskId = "MainTaskId"
            case subTaskId = "SubTaskId"
        }
    }

    /// DescribeStructCompareData返回参数结构体
    public struct DescribeStructCompareDataResponse: TCResponse {
        /// 保单号
        public let policyId: String

        /// 主任务号
        public let mainTaskId: String

        /// 客户号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let customerId: String?

        /// 客户姓名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let customerName: String?

        /// 复核时间
        public let reviewTime: String

        /// 算法识别结果
        public let machineResult: String

        /// 人工复核结果
        public let manualResult: String

        /// 结构化对比指标数据
        public let metrics: CompareMetricsData

        /// 新增项
        public let newItems: String

        /// 修改项
        public let modifyItems: String

        /// 子任务号
        public let subTaskId: String

        /// 所有的子任务
        public let allTasks: [ReviewDataTaskInfo]

        /// 任务类型
        public let taskType: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case mainTaskId = "MainTaskId"
            case customerId = "CustomerId"
            case customerName = "CustomerName"
            case reviewTime = "ReviewTime"
            case machineResult = "MachineResult"
            case manualResult = "ManualResult"
            case metrics = "Metrics"
            case newItems = "NewItems"
            case modifyItems = "ModifyItems"
            case subTaskId = "SubTaskId"
            case allTasks = "AllTasks"
            case taskType = "TaskType"
            case requestId = "RequestId"
        }
    }

    /// 结构化对比查询
    ///
    /// 结构化对比查询接口，对比结构化复核前后数据差异，查询识别正确率，召回率。
    @inlinable
    public func describeStructCompareData(_ input: DescribeStructCompareDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStructCompareDataResponse> {
        self.client.execute(action: "DescribeStructCompareData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 结构化对比查询
    ///
    /// 结构化对比查询接口，对比结构化复核前后数据差异，查询识别正确率，召回率。
    @inlinable
    public func describeStructCompareData(_ input: DescribeStructCompareDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStructCompareDataResponse {
        try await self.client.execute(action: "DescribeStructCompareData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 结构化对比查询
    ///
    /// 结构化对比查询接口，对比结构化复核前后数据差异，查询识别正确率，召回率。
    @inlinable
    public func describeStructCompareData(mainTaskId: String? = nil, subTaskId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStructCompareDataResponse> {
        self.describeStructCompareData(.init(mainTaskId: mainTaskId, subTaskId: subTaskId), region: region, logger: logger, on: eventLoop)
    }

    /// 结构化对比查询
    ///
    /// 结构化对比查询接口，对比结构化复核前后数据差异，查询识别正确率，召回率。
    @inlinable
    public func describeStructCompareData(mainTaskId: String? = nil, subTaskId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStructCompareDataResponse {
        try await self.describeStructCompareData(.init(mainTaskId: mainTaskId, subTaskId: subTaskId), region: region, logger: logger, on: eventLoop)
    }
}
